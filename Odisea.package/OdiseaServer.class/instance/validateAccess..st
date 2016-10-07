operations
validateAccess: request
	| token |
	
	(request url segments size > 0 and: [ request url segments first = 'login' ])
		ifTrue: [ ^ self ].

	token := request headers at: #'Access-Token' ifAbsent: [ request at: #token ifAbsent: [ OdUnauthorized signal ] ].

	(self sessions at:token) validate.