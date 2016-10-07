instance creation
uniqueInstance
	^ ServerInstance ifNil:[ServerInstance := self new]