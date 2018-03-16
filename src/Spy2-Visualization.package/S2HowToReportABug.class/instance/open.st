instance creation
open
	"
	self new open
	"

	| v labels |
	self openWebBrowserIfPossible.
	v := RTView new.
	labels := RTGroup new.
	labels
		add: (RTLabel elementOn: 'Problems and bugs can be reported on:').
	labels
		add:
			((RTLabel new color: Color veryVeryDarkGray)
				elementOn: 'https://github.com/ObjectProfile/Spy2').
	v add: labels.
	RTVerticalLineLayout on: labels.


	"Adding animation"
	self addAnimationTo: v.
	v openInWindowSized: 600 @ 400 titled: 'The GeneticAlgo Framework'