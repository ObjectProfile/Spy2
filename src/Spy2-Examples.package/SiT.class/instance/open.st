visualization
open 

	| tests |
	tests := self allTestMethods.
 	RTSimilarityMatrix new
		on: tests
		by: [ :a :b |
			((a similarityWith: b) / 40) min: 1.0
			];
		viewMatrix