#!/bin/bash

ANYPOINT_ORG=$2
ANYPOINT_USERNAME=$3
ANYPOINT_PASSWORD=$4
MULE_EE_REPO_USERNAME=$5
MULE_EE_REPO_PASSWORD=$6

mkdir -p ~/.m2
cat >~/.m2/settings.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
    <servers>
        <server>
            <id>anypoint.org.repo</id>
            <username>${SERVER_USERNAME}</username>
            <password>${SERVER_PASSWORD}</password>
        </server>
        <server>
            <id>mulesoft-releases-ee</id>
            <username>${MULE_EE_REPO_USERNAME}</username>
            <password>${MULE_EE_REPO_PASSWORD}</password>
        </server>
    </servers>

    <profiles>
        <profile>
            <id>default</id>
            <repositories>
                <repository>
                    <id>anypoint.org.repo</id>
                    <url>https://maven.anypoint.mulesoft.com/api/v1/organizations/${ANYPOINT_ORG}/maven</url>
                </repository>
                <repository>
                    <id>MuleRepository</id>
                    <name>MuleSoft Releases EE</name>
                    <url>https://repository-master.mulesoft.org/nexus/content/repositories/releases-ee/</url>
                    <layout>default</layout>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>true</enabled>
                    </snapshots>
                </repository>
                <repository>
                    <id>mulesoft-public</id>
                    <name>MuleSoft Public repository group</name>
                    <url>https://repository.mulesoft.org/nexus/content/repositories/public</url>
                </repository>
                <repository>
                    <id>mulesoft-private</id>
                    <name>MuleSoft Private repository Group</name>
                    <url>https://repository.mulesoft.org/nexus/content/repositories/private</url>
                </repository>
                <repository>
                    <id>mulesoft-releases</id>
                    <name>MuleSoft Releases</name>
                    <url>https://repository.mulesoft.org/nexus/content/repositories/releases/</url>
                    <layout>default</layout>
                </repository>
                <repository>
                    <id>mulesoft-snapshots</id>
                    <name>MuleSoft Snapshots</name>
                    <url>https://repository.mulesoft.org/nexus/content/repositories/snapshots/</url>
                    <layout>default</layout>
                </repository>
                <repository>
                    <id>mulesoft-releases-ee</id>
                    <name>MuleSoft Releases EE</name>
                    <url>https://repository.mulesoft.org/nexus/content/repositories/releases-ee/</url>
                    <layout>default</layout>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>true</enabled>
                    </snapshots>
                </repository>
                <repository>
                    <id>mulesoft-ci-releases</id>
                    <name>MuleSoft Releases CI</name>
                    <url>https://repository-master.mulesoft.org/nexus/content/repositories/ci-releases/</url>
                    <layout>default</layout>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>true</enabled>
                    </snapshots>
                </repository>
            </repositories>
            <properties>
                <anypoint.username>${ANYPOINT_USERNAME}</anypoint.username>
                <anypoint.password>${ANYPOINT_PASSWORD}</anypoint.password>
            </properties>
        </profile>
    </profiles>
    <activeProfiles>
        <activeProfile>default</activeProfile>
    </activeProfiles>
    <pluginGroups>
        <pluginGroup>org.mule.tools</pluginGroup>
    </pluginGroups>
</settings>
EOF
