Z3_EXE=${Z3_EXE:-"z3"}
Z3_VERSION=${Z3_VERSION:-$(eval "$Z3_EXE" --version | sed -E 's/.* ([0-9]+\.[0-9]+\.[0-9]+).*/\1/g')}

# Set the timeout (s) and memory (mb) limit for the Z3 solver
TIMEOUT=${TIMEOUT:-10}
MEMORY=${MEMORY:-15872}

Z3_VERSION_REGEX="${Z3_VERSION//./\\.}"

file_relative="${1#"$(dirname "$0")/"}"
# Check if the first line contains my Z3 version (and skip if it does)
[ -n "$CAN_SKIP_REGEX" ] && [ "$(sed -n '/^;[^\n]*$Z3_VERSION_REGEX/p;q' "$1")" ] && echo "Skipping \"$file_relative\" as the first line contains \"$Z3_VERSION\"" && exit 0 || true

# Check if the (non-empty) log file exists
file_hash=$(shasum -a 256 "$0" | cut -d' ' -f1)
base_name="${file_relative%.*}"
log_file_name="$base_name-fHash-$file_hash.log"
log_file_dir=$(dirname "$log_file_name")
mkdir -p $log_file_dir

# Find files with different hash
old_files=$(find $log_file_dir -name "$(basename "$base_name")-fHash-*.log" -maxdepth 1 -type f)
while read -r old_file; do
    [ -n "$old_file" ] || continue
    [ "$old_file" = "$log_file_name" ] && continue
    echo "Rm old \"$(basename "$old_file")\""
    # Remove old log
    rm -f "$old_file"
done <<< "$old_files"
[ ! -n "$FORCE_RUN_Z3" ] && test -s "$log_file_name" && echo "Skipping \"$file_relative\" as \"$file_hash\" exists" && exit 0 || true

echo "[.log] $file_relative"
# Run Z3 solver for the file and save the log in the '../logs' directory.
# The memory limit is set to 15.5GB and the timeout is set to 10 seconds
# (this limits the log file size to roughly <=0.5GB). We redirect
# the output so that it doesn't get printed and listen for a
# timeout message in which case we remove the last line of the log
# file since it may be incomplete (and cause parsing errors).
output=$("$Z3_EXE" trace=true proof=true -memory:$MEMORY -T:$TIMEOUT trace-file-name=$log_file_name "$1")
echo "$output" | grep -q "timeout" || exit 0
echo "[Timeout] Removing last line of logfile"
tail -n 1 "$log_file_name" | wc -c | xargs -I {} truncate -s -{} "$log_file_name"
test -s "$log_file_name" || echo "!!! Log file not created for \"$file_relative\""
