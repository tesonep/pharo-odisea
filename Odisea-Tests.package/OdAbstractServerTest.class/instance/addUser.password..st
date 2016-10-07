as yet unclassified
addUser: userName password: password
	| usr |
	usr := OdUser new.
	usr username: userName.
	usr password: password.
	server users add: usr.
	^ usr.