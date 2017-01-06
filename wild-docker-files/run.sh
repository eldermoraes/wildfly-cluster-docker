docker run -d --name wild1 -h wild1 -p 8080:8080 -p 9990:9990 wildfly-cluster /opt/jboss/wildfly/bin/standalone.sh -c standalone-ha.xml
docker run -d --name wild2 -h wild2 -p 8081:8080 -p 9991:9990 wildfly-cluster /opt/jboss/wildfly/bin/standalone.sh -c standalone-ha.xml
docker run -d --name wild3 -h wild3 -p 8082:8080 -p 9992:9990 wildfly-cluster /opt/jboss/wildfly/bin/standalone.sh -c standalone-ha.xml

docker run -d --name wild-balancer -p 80:80 --link wild1:wild1 --link wild2:wild2 --link wild3:wild3 --env-file ./env.list jasonwyatt/nginx-loadbalancer
