visualization
visualizeLegend: canvas
	| lb |
	lb := RSLegend new.
	lb container: canvas.
	lb onDemand: 'About Graph'.
	lb title: '-= Memory blue print =-'.
	lb text: self numberOfExecutedMethods asString, ' executed methods'.
	lb text: self numberOfMethodProducingObjects asString, ' methods producing objects'.
	lb text: ((self ratioOfMethodProducingObjects * 100) round: 4) asString, 
		'% methods producing objects'.
	lb legendDo: [ :shape | shape withBorder; color: (Color white alpha: 0.8); padding: 10 ].
	lb build.
	