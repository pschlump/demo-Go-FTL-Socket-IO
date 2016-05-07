
all: socket.io.js

socket.io.js: socket.io-1.4.5.js 
	uglifyjs --source-map socket.io.map.js socket.io-1.4.5.js >socket.io.js

