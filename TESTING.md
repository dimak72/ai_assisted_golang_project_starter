# TESTING.md

## Testing Philosophy

Tests should prioritize:

1. Correctness
2. Readability
3. Coverage of edge cases
4. Ease of debugging

Avoid overly complex test setups.

## Required Commands

Run these before considering implementation work complete:

```sh
gofmt -w .
go test ./...
```

When time allows, also run:

```sh
go vet ./...
```

If the project includes a `Makefile`, the equivalent command is:

```sh
make check
```

In a freshly created starter with no Go packages yet, `make check` should report that there are no packages to test or vet. After implementation begins, `go test ./...` must run against the project packages.

## Test Structure

Prefer table-driven tests when appropriate.

Example:

```go
func TestCalculate(t *testing.T) {
	tests := []struct {
		name string
		input int
		want int
	}{
		{
			name: "positive number",
			input: 2,
			want: 4,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := Calculate(tt.input)

			if got != tt.want {
				t.Fatalf("got %v, want %v", got, tt.want)
			}
		})
	}
}
```
