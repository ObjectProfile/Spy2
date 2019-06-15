world menu
menuCommandOn: aBuilder
	<worldMenu>
	((aBuilder item: self projectName)
		parent: #Tools;
		icon: self image)
		withSeparatorAfter