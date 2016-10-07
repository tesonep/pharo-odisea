instance creation
for: anUser on: server
	^ self basicNew
		user: anUser;
		server: server;
		initialize;
		yourself