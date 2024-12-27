# Requires `opam` and `coreutils`
cd "$(dirname "$0")/fstar"

export PATH="$(pwd)/z3/bin:$PATH"
if [ ! -f ./bin/fstar.exe ]; then
    ./bin/get_fstar_z3.sh ./z3/bin
    opam install --deps-only -y .
    echo "Updating with \`eval \$(opam env)\`"
    eval $(opam env)
    make -j 6
fi
