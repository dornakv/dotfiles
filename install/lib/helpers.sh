#
# Helper sripts
#

__has() {
    command -v "$1" >/dev/null 2>&1;
}

__require() {
    __has "$1" && return 0
    __p_err "Missing: ${1}" 
    exit 1
}

__is_root() {
    [ "$(whoami)" = "root" ] && return 0
}
