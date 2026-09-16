# Justfile for docs.gitlocalize.com

mint := "npx -y mint@latest"

# List available commands
default:
    @just --list

# Preview the docs locally on http://localhost:3000
dev port="3000":
    {{mint}} dev --port {{port}}

# Check every internal link resolves
links:
    {{mint}} broken-links

# Validate docs.json and check links
check: links
    @python3 -c "import json; json.load(open('docs.json'))" && echo "docs.json ok"

# Show the OpenAPI spec the API reference is built from
spec:
    @curl -sS https://api.gitlocalize.com/openapi.yaml
