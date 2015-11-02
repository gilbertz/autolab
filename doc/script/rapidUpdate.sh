#!/bin/sh

echo "close autolabapi service"
sudo service autolabapi stop

echo "close autolabadmin service"
sudo service autolabadmin stop


echo "reset to HEAD"
sudo git reset --hard HEAD

echo "pull from git server"
sudo git pull

echo "remove some core files"
sudo rm -rf ./doc
sudo rm ./.gitignore
sudo rm ./README.md

echo "set the permission 700 of .git"
sudo chmod 700 .git

echo "replace ip to 127.0.0.1"
sudo sed -i "s/120.26.72.17/127.0.0.1/g" ./common/src/main/resources/application.properties

echo "hide sql"
sudo sed -i "s/spring.jpa.show-sql/#spring.jpa.show-sql/g" ./common/src/main/resources/application.properties

echo "change the log appender"
sudo sed -i "s/<!--CONSOLE_COMMENT1-->/<!--CONSOLE_COMMENT1/g" ./common/src/main/resources/logback.xml
sudo sed -i "s/<!--CONSOLE_COMMENT2-->/CONSOLE_COMMENT2-->/g" ./common/src/main/resources/logback.xml
sudo sed -i "s/<!--FILE_COMMENT1/<!--FILE_COMMENT1-->/g" ./common/src/main/resources/logback.xml
sudo sed -i "s/FILE_COMMENT2-->/<!--FILE_COMMENT2-->/g" ./common/src/main/resources/logback.xml


echo "Remove the test module"
sudo sed -i "s/testCompile/\/\/testCompile/g" ./build.gradle
sudo sed -i "s/intTest/\/\/intTest/g" ./common/build.gradle

sudo chmod o+x gradlew

echo "gradle clean old project"
./gradlew clean

echo "gradle building..."
./gradlew build


echo "finish updating!"

echo "You can use [ service autolabapi start/stop/restart] to start api service";
echo "You can use [ service autolabadmin start/stop/restart] to start admin service";


