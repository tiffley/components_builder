#!/bin/bash

# Download Debezium MySQL Connector JAR
curl -L -O https://repo1.maven.org/maven2/io/debezium/debezium-connector-mysql/1.7.0.Final/debezium-connector-mysql-1.7.0.Final-plugin.tar.gz

# Extract the JAR file
tar -xvf debezium-connector-mysql-1.7.0.Final-plugin.tar.gz

# Move the JAR file to the desired location
mv debezium-connector-mysql/debezium-connector-mysql-1.7.0.Final.jar /usr/share/java/

# Remove the downloaded tar.gz file
rm -rf debezium-connector-mysql-1.7.0.Final-plugin.tar.gz debezium-connector-mysql/
