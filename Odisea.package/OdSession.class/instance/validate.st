accessing
validate
	(self isValid) ifFalse:[
		server sessions removeKey: token.
		OdUnauthorized signal.
	].

	lastUsed := DateAndTime now.