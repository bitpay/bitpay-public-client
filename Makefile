.PHONY: cover

BIN_PATH:=node_modules/.bin/

all:	bitpay-public-client.min.js

clean:
	rm bitpay-public-client.js
	rm bitpay-public-client.min.js

bitpay-public-client.js: index.js lib/*.js
	${BIN_PATH}browserify $< > $@ --standalone 'Bitpay'

bitpay-public-client.min.js: bitpay-public-client.js
	uglify  -s $<  -o $@

cover:
	./node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha -- --reporter spec test
