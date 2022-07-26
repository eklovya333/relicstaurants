#!make
order:
	cd order && npm install

restaurant:
	cd restaurant && npm install

restaurants:
	cd restaurants && npm install

install:
	npm install && make order restaurant restaurants

run:
	concurrently "npm:order" "npm:restaurant" "npm:restaurants" "npm:start" --kill-others
    