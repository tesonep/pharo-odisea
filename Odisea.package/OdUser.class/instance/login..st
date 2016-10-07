accessing
login: aPassword
	password = aPassword
		ifFalse: [ OdInvalidUserOrPassword signal ]