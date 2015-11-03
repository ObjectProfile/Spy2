blacklist
methodBlacklist
	"
	self resetBlacklist
	"
	^ MethodBlacklist ifNil: [ MethodBlacklist := Set new.
		MethodBlacklist 
			addAll: self package methods;
			add: SequenceableCollection >> #grownBy:;
			add: SequenceableCollection >> #at:ifAbsent:;
			add: SequenceableCollection class >> #ofSize:;
			add: ArrayedCollection >> #size;
			add: Object >> #at:;
			add: Object >> #at:put:;
			add: Object >> #species;
			add: Array class >> #new:.
		MethodBlacklist := MethodBlacklist collect: #asSpyRingDefinition ]