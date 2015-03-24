visualization
visualizeOn: v
	"v is a Roassal view"
	| b |
	b := RTMondrianViewBuilder new.
	b view: v.
	
	b nodes: self monitoredClasses forEach: [ :pharoCls |
		b shape rectangle 
			size: #value.
			
		b nodes: (self >> pharoCls name) groups.
		b flowLayout.
	].
	b build.