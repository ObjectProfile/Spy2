utility
lastClasses
	"Return the last classes that have been modified"
	"Does not return test cases"
	^ (RecentMessageList uniqueInstance lastClasses: 10) asArray 
			reject: [ :c | c inheritsFrom: TestCase ]