mvn clean
mvn install
nohup java  -Xms128m -Xmx256m -jar ./package/base-admin.jar --spring.profiles.active=prod &
