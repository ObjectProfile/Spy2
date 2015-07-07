as yet unclassified
testMetaclassAllMethods
	"All methods should include class side methods"

	self assert: (profiler >> #S2pyA) metaclassSpy allMethods size = 3