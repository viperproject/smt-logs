Z3_VERSION=$(z3 --version | sed -E 's/.* ([0-9]+\.[0-9]+\.[0-9]+).*/\1/g')
Z3_VERSION_REGEX="${Z3_VERSION//./\\.}"

cd "${1-$(dirname $0)}"
while read -r file; do
    # Check if the first line contains my Z3 version (and skip if it does)
    [ "$(sed -n '/^;[^\n]*$Z3_VERSION_REGEX/p;q' "$file")" ] && echo "Skipping \"$file\" as the first line contains \"$Z3_VERSION\"" && continue || true

    # Check if the (non-empty) log file exists
    file_hash=$(shasum -a 256 "$file" | cut -d' ' -f1)
    base_name="../logs/${file%.*}"
    log_file_name="$base_name-fHash-$file_hash.log"
    test -s "$log_file_name" && echo "Skipping \"$file\" as \"$file_hash\" exists" && continue || true

    # Remove old logs
    rm -f "$base_name-fHash-*.log"
    mkdir -p $(dirname "$log_file_name")

    echo "[.log] $file"
    # Run Z3 solver for the file and save the log in the '../logs' directory.
    # The memory limit is set to 15.5GB and the timeout is set to 10 seconds
    # (this limits the log file size to roughly <=0.5GB). We redirect
    # the output so that it doesn't get printed and listen for a
    # timeout message in which case we remove the last line of the log
    # file since it may be incomplete (and cause parsing errors).
    output=$(z3 trace=true proof=true -memory:15872 -T:10 trace-file-name=$log_file_name "./$file")
    echo "$output" | grep -q "timeout" || continue
    echo "[Timeout] Removing last line of logfile"
    tail -n 1 "$log_file_name" | wc -c | xargs -I {} truncate -s -{} "$log_file_name"
    test -s "$log_file_name" || echo "!!! Log file not created for \"$file\""
done <<<  "$(find . -name "*.smt2" -type f)"
