One of the most common questions when getting started with Linkerd is: what
exactly is a service mesh? Why is a service mesh a critical component of cloud
native apps, when environments like Kubernetes provide primitives like service
objects and load balancers?

A service mesh is a layer that manages the communication between apps (or
between parts of the same app, e.g. microservices). In traditional apps, this
logic is built directly into the application itself: retries and timeouts,
monitoring/visibility, tracing, service discovery, etc. are all hard-coded
into each application.

In this guide, we'll walk through a quick example of how to install Linkerd on
Kubernetes to automatically capture aggregated, top-line service success rates
without requiring application changes.
