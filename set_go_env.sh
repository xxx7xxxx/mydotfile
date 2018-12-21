BASEDIR=`dirname $0`
if [[ ! -z "${BASEDIR}" ]] && [[ "${BASEDIR}" != "$GOPATH" ]]; then
    export GOPATH=${BASEDIR}
    [[ ":$PATH:" != *":${GOPATH}/bin:"* ]] && export PATH="${GOPATH}/bin:$PATH"
    alias kk="cd ${BASEDIR}"
    alias jj="cd ${BASEDIR}/repo"
fi
