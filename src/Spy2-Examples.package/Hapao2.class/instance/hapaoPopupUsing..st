visualization
hapaoPopupUsing: methodShapeBuilder

	^ RTFixedPopup new
		background: Color veryVeryLightGray 
		group: [ :group :el | 
			| label |
			
			label := (RTLabel new
						color: Color black;
						text: (#asString rtValue: el model)) element.
			group add: label.
			group add: (RTLabel new color: Color black; text: (#getSource rtValue: el model)) element.
			]