
all: js/socket.io.js

js/socket.io.js: js/socket.io-1.4.5.js 
	( cd js ; uglifyjs --source-map socket.io.map.js socket.io-1.4.5.js >socket.io.js )


