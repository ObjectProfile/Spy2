*Spy2-Core
allMethods
	^ self allClasses flatCollect: [ :cls | cls methods , cls class methods ]