as yet unclassified
allCalledMethod: visitedMethods
	
	(visitedMethods includes: self) ifFalse: [ 
		visitedMethods addAll: self callingMethods.
		visitedMethods add: self.
		self callingMethods do: [ :m | m allCalledMethod: visitedMethods ]
	]