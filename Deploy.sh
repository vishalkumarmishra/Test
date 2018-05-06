#!/bin/bash
if [ $ENVIRONMENT = "QA" ]; then
sshpass -p "1234" scp /home/prabhakar/.jenkins/workspace/flipkartparadeploysh/target/flipkart.war prabha3@172.17.0.5:/home/prabha3/soft3/apache-tomcat-8.0.51/webapps 
sshpass -p "1234" ssh prabha3@172.17.0.5 "JAVA_HOME=/home/prabha3/soft3/jdk1.8.0_171" "/home/prabha3/soft3/apache-tomcat-8.0.51/bin/startup.sh"
elif [ $ENVIRONMENT = "DEV" ]; then
sshpass -p "1234" scp /home/prabhakar/.jenkins/workspace/flipkartparadeploysh/target/flipkart.war prabha4@172.17.0.6:/home/prabha4/soft4/apache-tomcat-8.0.51/webapps 
sshpass -p "1234" ssh prabha4@172.17.0.6 "JAVA_HOME=/home/prabha4/soft4/jdk1.8.0_171" "/home/prabha4/soft4/apache-tomcat-8.0.51/bin/startup.sh"
fi
