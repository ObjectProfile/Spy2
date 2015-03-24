instance creation
on: aProfiler usingTranslations: associations
	|plugin|
	plugin := self on: aProfiler.
	plugin generateTranslations: associations.
	^ plugin