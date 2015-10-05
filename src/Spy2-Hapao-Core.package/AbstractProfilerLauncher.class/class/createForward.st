utility
createForward
	selectors := #(#menuCommandOn1: #menuCommandOn2: #menuCommandOn31: #menuCommandOn32: #menuCommandOn3: #menuCommandOn4: #menuCommandOn5: #menuCommandOn6:).
	selectors do: [ :s |
		self class compile: s, ' aBuilder', String cr, '
	<worldMenu>
	super ', s, ' aBuilder'
	]