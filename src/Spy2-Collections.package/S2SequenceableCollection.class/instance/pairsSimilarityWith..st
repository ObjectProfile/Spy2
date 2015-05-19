as yet unclassified
pairsSimilarityWith: aSequenceableCollection
	
	"
		Examples:
		'1234' pairsSimilarityWith: '2234' ==> (2/3)
		'1234' pairsSimilarityWith: '123' ==>  (4/5)
		'1234' pairsSimilarityWith: '5678' ==> 0
	"
	| set1 set2 |
	set1 := Set new.
	set2 := Set new.
	self overlappingPairsDo: [:a :b | 
		set1 add: a -> b].
	aSequenceableCollection overlappingPairsDo: [:a :b | 
		set2 add: a -> b].
	^ 2 * (set1 intersection: set2) size / (set1 size + set2 size)