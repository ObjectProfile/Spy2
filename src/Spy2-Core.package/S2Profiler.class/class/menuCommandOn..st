ui - comparison
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #'Reset comparison profiler')
		order: 0.1; 
		"parent: #Roassal;"
		label: 'Reset comparison profiler';
		"icon: RTIcon smallRoassal;"
		action: [ self cleanGlobal ]