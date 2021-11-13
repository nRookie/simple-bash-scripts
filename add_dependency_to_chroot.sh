ldd $(which sbatch) | awk ' $(NF - 1) != "=>" {print $(NF - 1)}' | sed -e 's/\(\/\)\(.*\)\(\/.*\)/mkdir -p \2 \&\&  cp   \0 \2\3/' > command.sh
