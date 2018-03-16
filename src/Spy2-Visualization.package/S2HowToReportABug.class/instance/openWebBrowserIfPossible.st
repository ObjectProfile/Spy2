instance creation
openWebBrowserIfPossible
	(Smalltalk globals keys includes: #WebBrowser)
		ifTrue: [ (Smalltalk globals keys at: #WebBrowser)
				openOn: 'https://github.com/ObjectProfile/Spy2' ]