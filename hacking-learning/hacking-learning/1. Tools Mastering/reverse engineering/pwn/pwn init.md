init for overthewire
```
export TMP_DIR=$(mktemp -d)
export XDG_CACHE_HOME=$TMP_DIR;
export PWNDBG_VENV_PATH=$TMP_DIR/.venv;
cp /opt/pwndbg/gdbinit.py $TMP_DIR;
cp -r /opt/pwndbg/.venv/ $TMP_DIR;
alias gdb="gdb -x $TMP_DIR/gdbinit.py";
export DEBUGINFOD_URLS=""
```
