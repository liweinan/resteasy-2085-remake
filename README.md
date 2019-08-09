# resteasy-2085
Reproducer for restreasy issue 2085

* `mvn clean install`
* install a Tomcat (tested with 8.5.35)
* copy `resteasy-2085.war` to `tomcat/webapps` folder
* start Tomcat
* open `http://localhost:8080/resteasy-2085/` 

---

```bash
export MAVEN_OPTS='-Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005'
```

```bash
$ mvn tomcat7:run
```

```bash
$ curl http://localhost:9090
```

```bash
$ http http://localhost:9090/app/simple/date
```

## build tips

```bash
$ mvn install -DdownloadSources=true -DdownloadJavadocs=true
```
