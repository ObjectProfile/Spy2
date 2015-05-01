as yet unclassified
at: key put: value
	|item prevItem|
	item := (items at: key largeIdentityHash + 1).
	"No elements in the list"
	item isNullItem ifTrue: [ 
		tally := tally + 1.
		items 
			at: key 
			put: (S2WeakLargeTableItem new
				key: key;
				value: value;
				next: item;
				yourself).
		^ value ].
	"Usual case"
	[ item isNotNullItem ] whileTrue: [ 
		item key == key ifTrue: [ 
			item value: value.
			^ value ].
		prevItem := item.
		item := item next ].
	"If we reach here it means that the key is not in the dictionary"
	tally := tally + 1.
	prevItem next:
		(S2WeakLargeTableItem new
			key: key;
			value: value;
			next: item;
			yourself).
	^ value