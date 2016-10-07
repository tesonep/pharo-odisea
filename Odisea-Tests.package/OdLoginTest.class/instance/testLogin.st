as yet unclassified
testLogin
	| resp data validToken usr |
	usr := self addUser: 'anUser' password: '1234'.
	resp := self post: '/login/anUser' parameters: {(#password -> '1234')} asDictionary.

	self assert: resp isSuccess.
	data := self jsonContent: resp.

	validToken := (server sessions associations
		detect: [ :asc | asc value user = usr ]
		ifNone: [ self fail: 'Should have a session for the user' ]) key.
	self assert: (data at: #token) equals: validToken