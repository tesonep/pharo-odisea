operations
login: anUserName password: aPassword
	| usr session |
	usr := users
		detect: [ :u | u username = anUserName ]
		ifNone: [ OdInvalidUserOrPassword signal ].
		
	usr login: aPassword.

	session := OdSession for: usr on:self.

	sessions at: session token put: session.
	^ { 'token' -> session token } asDictionary.