util
shouldCreateNewFrame
	^ self currentFrame numberOfMethodDependencies >= thresholdNumberOfMethods
	"^ numberOfMessages \\ 100 = 0"