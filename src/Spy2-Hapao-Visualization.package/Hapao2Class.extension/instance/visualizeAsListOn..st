*Spy2-Hapao-Visualization
visualizeAsListOn: view

	| shape g lbl bar per lblShape cls |
	shape := RTCompositeShape new.
	shape add: (RTBox new height: 15; color: Color green; width: #coverage).
	shape add: (RTBox new height: 15; color: Color red; width: [ :cc | 100 - cc coverage ]).
	shape horizontal.

	g := RTGroup new.
	cls := self.
		"lbl := RTLabel elementOn: cls name."
		lblShape := RTCompositeShape new.
		lblShape add: (RTLabel new).
		lblShape add: (RTBox new color: Color transparent; width: 400).
		lblShape alignRight.
		
		lbl := lblShape elementOn: cls name.
		
		bar := shape elementOn: cls.
		per := RTLabel elementOn: cls coverage asString, '%'.
		
		g add: lbl.
		g add: bar.
		g add: per.
		
		cls allMethods do: [ :m |
"			lbl := (RTLabel new color: Color gray) elementOn: m name."
			lblShape := RTCompositeShape new.
			lblShape add: (RTLabel new color: Color gray).
			lblShape add: (RTBox new color: (Color transparent); width: 400).
			lblShape alignRight.
			
			lbl := lblShape elementOn: m selector.

			bar := shape elementOn: m.
			per := RTLabel elementOn: m coverage asString, '%'.
			
			g add: lbl.
			g add: bar.
			g add: per
		].
		g addAll: ((RTBox new color: Color veryLightGray; width: 150; height: 10) elementsOn: #(1 2 3)). 
	view addAll: g.
	RTGridLayout new lineItemsCount: 3; on: g.