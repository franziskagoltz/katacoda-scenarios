curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 2> /dev/null \
  | zcat > /usr/local/bin/ngrok \
  && chmod a+x /usr/local/bin/ngrok

start-stop-daemon \
  --background \
  --make-pidfile \
  --pidfile /tmp/dashboard.pid \
  -S \
  --startas /bin/bash \
  -- -c "exec kubectl port-forward $(kubectl get po -l app=l5d | tail -n+2 | awk '{ print $1 }') 9990:9990 &> /root/dashboard.log"
  start-stop-daemon \
  --background \
  --make-pidfile \
  --pidfile /tmp/ngrok-dashboard.pid \
  -S \
  --startas /bin/bash \
  -- -c "exec /usr/local/bin/ngrok http --log stdout --log-level debug --host-header rewrite 9990 &> /root/ngrok.log"

printf "The Linkerd dashboard is available at:\n\n"

echo $(cat ngrok.log \
  | sed -n 's/.* URL:\([^ ]*\) .*/\1/p' \
  | head -n1)
