deploy() {
    echo "Deploying app"
    
    cp ~/lab_1/application/binary/webSocket.war ~/tomcat/webapps/
    
    echo "App deployed"
}

undeploy() {
    echo "Undeploying app"
    
    # Remove war from webapps
    rm ~/tomcat/webapps/webSocket.war
    
    echo "App undeployed"
}

while getopts ":du" opt; do
    case $opt in
        d)
            deploy
            ;;
        u)
            undeploy
            ;;
        \?)
            echo "Invalid option: -$OPTARG"
            exit 1
            ;;
    esac
done

if [ $OPTIND -eq 1 ]; then
    echo "Usage: ./server_app.sh [-d] (deploy) [-u] (undeploy)"
    exit 1
fi

