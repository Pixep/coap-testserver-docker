### CoAP Test server

This Dockerfile starts a CoAP test server (plugtest) from [Californium](https://github.com/eclipse/Californium/). It will bind on CoAP default UDP port 5683.

* GitHub: [https://github.com/Pixep/coap-testserver-docker](https://github.com/Pixep/coap-testserver-docker)
* Docker: [https://hub.docker.com/r/aleravat/coap-test-server/](https://hub.docker.com/r/aleravat/coap-test-server/)

### Usage
Start the server and expose UDP port 5683. The example below uses `-d` option to run in detached mode and `--rm` to remove the container when stopped.
```
docker run --name coap-test-server -d --rm -p 5683:5683/udp aleravat/coap-test-server:latest
```

If you need to access the test server with a static IP, you can redirect traffic from a fake static IP using the `-p` option. Below, we redirect traffic from `172.16.177.50` to the coap-testserver.
```
docker run --name coap-test-server -d --rm -p 172.16.177.50:5683:5683/udp aleravat/coap-test-server:latest
```

### Credits

Thanks to Jens Dede, whose Docker 'coap-testserver' was the base for this work.
