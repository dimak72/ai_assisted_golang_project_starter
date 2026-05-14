.PHONY: fmt test vet check

fmt:
	gofmt -w .

test:
	@if [ -n "$$(go list ./... 2>/dev/null)" ]; then \
		go test ./...; \
	else \
		echo "no packages to test"; \
	fi

vet:
	@if [ -n "$$(go list ./... 2>/dev/null)" ]; then \
		go vet ./...; \
	else \
		echo "no packages to vet"; \
	fi

check: fmt test vet
