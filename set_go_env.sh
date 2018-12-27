export GOPATH=`dirname $0`
[[ ":$PATH:" != *":${GOPATH}/bin:"* ]] && export PATH="${GOPATH}/bin:$PATH"
alias kk="cd ${GOPATH}"
local REPO
case ${GOPATH} in
    *easegateway)   REPO=${GOPATH}/src/github.com/megaease/easegateway ;;
    *easestack)     REPO=${GOPATH}/src/github.com/hexdecteam/easestack ;;
    *kubernetes)    REPO=${GOPATH}/src/github.com/kubernetes/kubernetes ;;
    *etcd)          REPO=${GOPATH}/src/go.etcd.io/etcd ;;
esac
alias jj="cd ${REPO}"
