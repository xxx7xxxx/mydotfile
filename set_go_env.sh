function add_path() {
    [[ ":$PATH:" != *":$1:"* ]] && export PATH="$1:$PATH"
}

export GOPATH=`dirname $0`
add_path ${GOPATH}/bin

alias kk="cd ${GOPATH}"
local REPO
case ${GOPATH} in
    *go)
        REPO=${GOPATH}/src
        ;;

    *easegateway)
        REPO=${GOPATH}/src/github.com/megaease/easegateway
        add_path ${REPO}/bin
        ;;

    *easestack)
        REPO=${GOPATH}/src/github.com/hexdecteam/easestack
        ;;

    *kubernetes)
        REPO=${GOPATH}/src/github.com/kubernetes/kubernetes
        ;;

    *etcd)
        REPO=${GOPATH}/src/go.etcd.io/etcd
        ;;
esac
alias jj="cd ${REPO}"
