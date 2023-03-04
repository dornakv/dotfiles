#
# Prints
#

__p_echo() { printf '       %s\n' "${1}"; }
__p_warn() { printf '==> WARN:  %s\n' "${1}"; }
__p_err() { printf '==> ERR:  %s\n' "${1}" >&2; }
