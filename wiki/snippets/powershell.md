# Docker Container Informations

This returns the information return by `docker ps` in json and convertis it to an object which is easy to work with.

```
$container = docker ps --format "{{json .}}" | ConvertFrom-Json | Where-Object {$_.Names -like '*containername*'}
$container.ID
```

