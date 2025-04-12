run-dashboard:
	nohup minikube dashboard --port 63840 --url > dashboard.log 2>&1 &

stop-dashboard:
	pkill -f "minikube dashboard"

run-proxy:
	nohup kubectl proxy --address='0.0.0.0' --disable-filter=true > proxy.log 2>&1 &

stop-proxy:
	pkill -f "kubectl proxy"

run-minikube:
	minikube start --extra-config "apiserver.cors-allowed-origins=["http://boot.dev"]"
