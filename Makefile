apply:
	ytt --ignore-unknown-comments --file ./config --data-values-file values.yaml | kubectl apply -f -
	kubectl delete workload tekton-pipeline-test-app
	kubectl apply -f test-workload.yaml
