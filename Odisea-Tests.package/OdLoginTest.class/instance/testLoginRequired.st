as yet unclassified
testLoginRequired
	| resp |
	resp := self get: '/features'.

	self deny: resp isSuccess.
	self assert: resp code equals: 401.
