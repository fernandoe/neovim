.PHONY: startuptime

startuptime:
	@mkdir -p ./logs/startuptime
	nvim --headless --startuptime ./logs/startuptime/$$(date '+%Y.%m.%d-%H.%M').txt