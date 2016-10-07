as yet unclassified
tearDown
	super tearDown.
	server
		ifNotNil: [ server stop.
			server := nil ]