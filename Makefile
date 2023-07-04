apply:
	ytt --ignore-unknown-comments --file ./config --data-values-file values.yaml | kubectl apply -f -
	kubectl delete workload tekton-pipeline-test-app --ignore-not-found
	kubectl delete workload tekton-pipeline-test-app-parallel-stages --ignore-not-found
	kubectl apply -f test-workload.yaml
	kubectl apply -f test-workload-parallel-stages.yaml
