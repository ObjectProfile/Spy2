ui - comparison
menuCommandOn: aBuilder
	(aBuilder item: #'Reset comparison profiler')
		order: 0.1; 
		parent: #Hapao;
		label: 'Reset comparison profiler';
		action: [ self cleanGlobal ]