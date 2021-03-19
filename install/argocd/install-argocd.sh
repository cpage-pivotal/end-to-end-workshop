set -x

ytt -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml -f integrate-contour-overlay.yaml --file-mark 'install.yaml:type=yaml-plain' -f argocd-dependencies.yaml -f $1 | kapp deploy -n argocd -a argocd -f- --diff-changes --yes