instance creation
on: aProfiler forClassSelector: symbol executeBlock: aBlock
	"block is [ :profiler :receiver :returnValue | ... ]"
	^ (self on: aProfiler)
			selector: symbol;
			executionBlock: aBlock;
			setInstallOnClassSide;
			yourself