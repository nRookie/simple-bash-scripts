ldd $(which sbatch) | awk ' $(NF - 1) != "=>" {print $(NF - 1)}' | sed -e 's/^/cp /' | sed -e 's/$/ ./' > add_dependency_to_jail.sh
