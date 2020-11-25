### What is this?

This is an example to how to build a REST API with R and Plumber library secured by an NGINX proxy server by checking Authorization header.

Authorization header check is configured in `nginx.conf` file.

### Usage

#### Build API Docker image
```
$ ./build_api
```

#### Build proxy server Docker image
```
$ ./build_proxy_server
```

#### Run API
```
$ ./run_api
```

#### Run proxy server
```
$ ./run_proxy_server
```

#### Make request to endpoint
```
$ curl --header "Authorization: Bearer 1234" "http://localhost/echo?msg=Hello"

```

