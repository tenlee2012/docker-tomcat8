MAX_SIZE=${MAX_SIZE:-104857600}

echo "=> Creating and admin user with a ${_word} password in Tomcat"
sed -i -r 's/<\/tomcat-users>//' tomcat-users.xml
echo '<role rolename="manager-gui"/>' >> tomcat-users.xml
echo "<user username=\"admin\" password=\"${PASS}\" roles=\"manager-gui\"/>" >> tomcat-users.xml
echo '</tomcat-users>' >> tomcat-users.xml 
echo "=> Done!"