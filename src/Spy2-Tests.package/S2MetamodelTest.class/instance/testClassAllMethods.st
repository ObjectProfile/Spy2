as yet unclassified
testClassAllMethods
	"All methods should include class side methods"

	self assert: (profiler >> #S2pyA) allMethods size = 3