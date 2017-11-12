## CoAP Testserver

This Dockerfile starts a CoAP test server using
<a href="https://github.com/eclipse/Californium/">Californium</a>. It will bind on CoAP default UDP port 5683.

This work is based on Jens Dede 'coap-testserver'.

## Usage
Start the server and expose UDP port 5683.
```
docker run -name coap-testserver -d --rm -p 5683:5683/udp aleravat/coap-testserver
```
The line above uses `-d` option to run in detached mode and `--rm` to remove the container when stopped.

If you need to access the test server with a static IP, you can redirect traffic from a fake static IP using the `-p` option. Below, we redirect traffic from `172.16.177.50` to the coap-testserver.
```
docker run -name coap-testserver -d --rm -p 172.16.177.50:5683:5683/udp aleravat/coap-testserver
```
