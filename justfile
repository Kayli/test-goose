update:
	goose update

test:
	@echo "Testing goose installation..."
	goose --version
	@echo "Testing gemini CLI installation..."
	gemini --version
	@echo "Testing goose with Gemini configuration..."
	goose run --text "Say 'Hello from Goose with Gemini!' and nothing else" --max-turns 1