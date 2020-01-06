oc() {
     command oc "$@"

    if [ $? -eq 0  ] && [ $1 = "project" ]; then
        echo "Setting TILLER_NAMESPACE to $2"
        export TILLER_NAMESPACE="$2";
    fi
}
