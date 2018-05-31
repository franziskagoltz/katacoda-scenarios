Install two services, “hello” and “world”, in the default namespace.

`kubectl apply -f https://raw.githubusercontent.com/linkerd/linkerd-examples/master/k8s-daemonset/k8s/hello-world-legacy.yml`{{execute}}

These two services–“hello” and “world”–function together to make a highly
scalable, “hello world” microservice (where the hello service, naturally, calls
the world service to complete its request).

You can see this in action by sending traffic through Linkerd’s external IP:

`NODE_PORT=$(kubectl get svc l5d -o 'jsonpath={.spec.ports[0].nodePort}')`{{execute}}

`http_proxy=$HOST_IP:$NODE_PORT curl -s http://hello`{{execute}}
