as yet unclassified
get: url
	^ self request: url data: (ZnEntity text:'') method: #GET.