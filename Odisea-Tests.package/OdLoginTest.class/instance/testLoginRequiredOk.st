as yet unclassified
testLoginRequiredOk
	| resp token |
	
	self addUser: 'anUser' password: '1234'.
	resp := self post: '/login/anUser' parameters: {(#password -> '1234')} asDictionary.	
	
	token := (self jsonContent: resp) at:#token.
	
	resp := self get: '/features?token=' , token asString.

	self assert: resp isSuccess.
