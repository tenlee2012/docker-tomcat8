MAX_SIZE=${MAX_SIZE:-104857600}

sed -i "s/<max-file-size>.*<\/max-file-size>/<max-file-size>${MAX_SIZE}<\/max-file-size>/;s/<max-request-size>.*<\/max-request-size>/<max-request-size>${MAX_SIZE}<\/max-request-size>/" ${CATALINA_HOME}/webapps/manager/WEB-INF/web.xml
echo "=> Done!"