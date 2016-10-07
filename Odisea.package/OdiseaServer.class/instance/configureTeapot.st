initialization
configureTeapot
	| server |
	server := Teapot configure: self teapotConfig.
	self populateRoutes: server.
	^ server.