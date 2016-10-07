as yet unclassified
request: url data: data method: method
	| resp |
	resp := client
		url: 'http://localhost:1701' , url;
		entity: data;
		method: method;
		execute;
		response.
		
	^ resp