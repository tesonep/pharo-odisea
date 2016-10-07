as yet unclassified
post: url parameters: data
	| formData |
	formData := ZnApplicationFormUrlEncodedEntity withAll: data.

	^ self request: url data: formData method: #POST