as yet unclassified
setUp
	super setUp.
	server := OdiseaServer new.
	server start.
	client := ZnClient new
		beOneShot;
		yourself