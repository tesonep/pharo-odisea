initialization
initialize
	teapot := self configureTeapot.
	users := Set new.
	features := Set new.
	sessions := Dictionary new.