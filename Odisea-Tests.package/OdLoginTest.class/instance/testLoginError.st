as yet unclassified
testLoginError
	| resp usr |
	usr := self addUser: 'anUser' password: '1234'.
	resp := self post: '/login/anUser' parameters: {(#password -> '0000')} asDictionary.

	self deny: resp isSuccess.
	self assert: resp code equals: 401.

	server sessions associations
		detect: [ :asc | asc value user = usr ]
		ifFound: [ self fail: 'Should have a session for the user' ]