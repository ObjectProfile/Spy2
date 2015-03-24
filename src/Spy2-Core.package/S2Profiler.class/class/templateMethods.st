private - method template
templateMethods
	^ #(
			#with0Arg
			#with1arg:
			#with2arg:arg:
			#with3arg:arg:arg:
			#with4arg:arg:arg:arg:
			#with5arg:arg:arg:arg:arg:
			#with6arg:arg:arg:arg:arg:arg:
			#with7arg:arg:arg:arg:arg:arg:arg:
			#with8arg:arg:arg:arg:arg:arg:arg:arg:
			#with9arg:arg:arg:arg:arg:arg:arg:arg:arg:
			#with10arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:
			#with11arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:
			#with12arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:
			#with13arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:
			#with14arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:
			#with15arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:arg:
			) collect: [:k | self class >> k ]