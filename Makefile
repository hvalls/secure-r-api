build_api:
	docker build -t api_img -f Dockerfile.api .

build_proxy_server:
	docker build -t proxy_server_img -f Dockerfile.proxyserver .

run_api:
	docker run -it --name api -d api_img

run_proxy_server:
	docker run -it --name proxy_server -p 80:80 --link api -d proxy_server_img

start: build_api build_proxy_server run_api run_proxy_server
