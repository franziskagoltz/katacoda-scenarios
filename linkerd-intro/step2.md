Install Linkerd using [this Kubernetes config]https://raw.githubusercontent.com/linkerd/linkerd-examples/master/k8s-daemonset/k8s/linkerd.yml).
This will install Linkerd as a DaemonSet (i.e., one instance per host) running
in the default Kubernetes namespace:

`kubectl apply -f https://raw.githubusercontent.com/linkerd/linkerd-examples/master/k8s-daemonset/k8s/linkerd.yml`{{execute}}
You can confirm that installation was successful by viewing Linkerd’s admin page:


`HOST_IP=$(kubectl get po -l app=l5d -o jsonpath="{.items[0].status.hostIP}")`{{execute}}

`NODE_PORT_ADMIN=$(kubectl get svc l5d -o 'jsonpath={.spec.ports[2].nodePort}')`{{execute}}

`open http://$HOST_IP:$NODE_PORT_ADMIN`{{execute}}
