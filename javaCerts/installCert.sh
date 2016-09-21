#!/bin/sh

if (( $# < 1 )); then
    echo "Illegal number of parameters"
    echo "Usage: $0 <hostname> <port>"
    exit 1;
fi

hostname=$1
port=443
if [ ! -z "$2" ]; then
    port=$2
fi
java -XshowSettings:properties -version 2>temp.out 1>/dev/null
java_home=`grep 'java.home' temp.out | awk -F' = ' '{print $2}'`/lib/security

# use this to install self-signed certificates into the Java Keystore
# delete old cert first
sudo keytool -delete -alias $hostname-1 -keystore $java_home/cacerts -storepass changeit
sudo keytool -delete -alias $hostname -keystore $java_home/cacerts -storepass changeit

# install cert 
openssl s_client -showcerts -connect $hostname:$port < /dev/null | openssl x509 -outform DER > $hostname.der
sudo keytool -importcert -alias $hostname -keystore $java_home/cacerts -storepass changeit -file $hostname.der

# test new cert
javac SSLPoke.java
java SSLPoke $hostname $port
rm temp.out
