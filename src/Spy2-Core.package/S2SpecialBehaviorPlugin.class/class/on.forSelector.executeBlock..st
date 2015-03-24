instance creation
on: aProfiler forSelector: symbol executeBlock: aBlock
	"block is [ :profiler :receiver :returnValue | ... ]"
	^ (self on: aProfiler)
			selector: symbol;
			executionBlock: aBlock;
			yourself