Install Linkerd using [this Kubernetes config](https://raw.githubusercontent.com/linkerd/linkerd-examples/master/k8s-daemonset/k8s/linkerd.yml).
This will install Linkerd as a DaemonSet (i.e., one instance per host) running
in the default Kubernetes namespace:

`kubectl apply -f https://raw.githubusercontent.com/linkerd/linkerd-examples/master/k8s-daemonset/k8s/linkerd.yml`{{execute}}
You can confirm that the installation was successful by viewing Linkerd’s admin page.

Normally you'd extract the `HOST_IP` and `NODE_PORT` when running it locally
on Minikube, but because this tutorial is running in Katacoda, we have to use
a script to see the Linkerd Admin dashboard. Run:

`./tunnel-linkerd.sh`{{execute}}

This will start the dashboard and setup a tunnel for you to view it from. Cut
and paste the URL that is output into your browser.

For instructions on how to run this tutorial locally, visit:
https://linkerd.io/tutorials/part-one/
