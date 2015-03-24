hooks
similarityWith: aTestMethod
	"assume this method is called on a test method"
	^ (self testedMethods intersection: aTestMethod testedMethods) size