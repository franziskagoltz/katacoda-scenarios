Finally, let’s take a look at what our services are doing by installing
[Linkerd-viz](https://github.com/linkerd/linkerd-viz).
Linkerd-viz is a supplemental package that includes a simple Prometheus and
Grafana setup and is configured to automatically find Linkerd instances.

Install Linkerd-viz using this Linkerd-viz config. This will install
Linkerd-viz into the default namespace:

`kubectl apply -f https://raw.githubusercontent.com/linkerd/linkerd-viz/master/k8s/linkerd-viz.yml`{{execute}}
Open Linkerd-viz’s external IP to view the dashboard:

`VIZ_HOST_IP=$(kubectl get po -l name=linkerd-viz -o jsonpath="{.items[0].status.hostIP}")`{{execute}}

`VIZ_NODE_PORT=$(kubectl get svc linkerd-viz -o 'jsonpath={.spec.ports[0].nodePort}')`{{execute}}

`open http://$VIZ_HOST_IP:$VIZ_NODE_PORT`{{execute}}

You should see a dashboard, including selectors by service and instance. All
charts respond to these service and instance selectors.
