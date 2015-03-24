initialization
generateTranslations: associations
	associations do: [ :assoc | translation at: assoc key put: assoc value ].