server-config
populateRoutes: server
	server
		before: '/*' -> [ :req | self validateAccess:req ];
		GET: '/features' -> [:req | self features];
		POST: '/login/<userName>' -> [ :req | self login: (req at: #userName) password: (req at: #password) ];
		exception: OdUnauthorized -> [ :ex :req | TeaResponse unauthorized body: ex messageText ]