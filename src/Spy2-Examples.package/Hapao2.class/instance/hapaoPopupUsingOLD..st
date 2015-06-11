visualization
hapaoPopupUsingOLD: methodShapeBuilder
	^ RTFixedPopup new
		group: [ :group :el | 
			| background intro label upper treeHolder treeBox callers callerElements callees calleeElements edges |
			upper := RTGroup new.
			intro := (RTLabel new
						color: Color black;
						text: 'Control flow of:') element.
			group add: intro.
			upper add: intro.
			label := (RTLabel new
						color: Color black;
						text: (#asString rtValue: el model)) element.
			group add: label.
			upper add: label.
			treeBox := (RTBox new
				color: Color transparent) element.
			group add: treeBox.			
			treeHolder := RTGroup new.
			treeHolder add: (methodShapeBuilder elementOn: el model).
			callers := el model spyCallers.
			callerElements := treeHolder addAll: (methodShapeBuilder elementsOn: callers).
			callees := el model spyCallees.
			calleeElements := treeHolder addAll: (methodShapeBuilder elementsOn: callees).
			edges := OrderedCollection new.
			callerElements do: [ :c | edges add: ((RTLine new color: Color white) edgeFrom: c to: treeHolder first)].
			calleeElements do: [ :c | edges add: ((RTLine new color: Color white) edgeFrom: treeHolder first to: c)].
			RTTreeLayout on: treeHolder edges: edges.
			group addAll: treeHolder.
			RTNest new centerOn: treeBox elements: treeHolder.
			upper add: treeBox.	
			RTVerticalLineLayout new alignCenter; on: upper.
			"this line should not be necessary :C"
			treeHolder do: [ :e | e translateBy: treeBox position ].
			background := (RTBox new
				color: Color lightGray;
				borderColor: Color black) element.
			RTNest new centerOn: background elements: group.
			group addAllFirst: edges.
			group addFirst: background ]