#Step-1 First install java
dnf install java-21-amazon-corretto -y

#Step-2 Get tomcat softwear copy
wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.14/bin/apache-tomcat-11.0.14.tar.gz

#Step-3 Extract Tomcat softwear
tar -zxvf apache-tomcat-11.0.14.tar.gz

#Step-4 Add user, role and create password
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-11.0.14/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-11.0.14/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="root123456" roles="manager-gui, manager-script"/>' apache-tomcat-11.0.14/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-11.0.14/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-11.0.14/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-11.0.14/webapps/manager/META-INF/context.xml
sed -i '22d' apache-tomcat-11.0.14/webapps/manager/META-INF/context.xml
sh apache-tomcat-11.0.14/bin/startup.sh

#Note: If tomcat version changed while installing, please run below command (version number changed from 11.0.14 to 11.0.27)
#sed -i 's/11.0.14/11.0.27/g' tomcat.sh
