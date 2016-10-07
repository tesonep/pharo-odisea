as yet unclassified
initialize
	super initialize.
	token := NeoUUIDGenerator default next asString.
	lastUsed := DateAndTime now.