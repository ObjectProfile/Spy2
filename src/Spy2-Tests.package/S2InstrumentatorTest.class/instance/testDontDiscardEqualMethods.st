test - basic
testDontDiscardEqualMethods
	"This test is created because 2 CompiledMethods that have the same literals and bytecode answer true to equals even if they have a different selector."
	| instrumentator |
	instrumentator := S2Instrumentator new.
	instrumentator onMethods: { S2StubClass >> #foo1 . S2StubClass >> #foo2 }.
	self assert: instrumentator methods size = 2