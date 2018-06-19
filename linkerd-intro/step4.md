Finally, let’s take a look at what our services are doing by installing
[Linkerd-viz](https://github.com/linkerd/linkerd-viz).
Linkerd-viz is a supplemental package that includes a simple Prometheus and
Grafana setup and is configured to automatically find Linkerd instances.

Install Linkerd-viz using this Linkerd-viz config. This will install
Linkerd-viz into the default namespace:

`kubectl apply -f https://raw.githubusercontent.com/linkerd/linkerd-viz/master/k8s/linkerd-viz.yml`{{execute}}
Open Linkerd-viz’s external IP to view the dashboard.

Normally you'd extract the `VIZ_HOST_IP` and `VIZ_NODE_PORT`  when running it locally on Minikube, but because this tutorial is running in Katacoda, we have to use a script to see the Linkerd Admin dashboard.
Run:
`./tunnel-linkerdviz.sh`{{execute}}

You should see a dashboard, including selectors by service and instance. All
charts respond to these service and instance selectors.
