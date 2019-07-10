visualization
visualizeOn: view

	"| b normalizer  doubleBar methodsToRender callGraphElements charterElements legendBuilder |
	b := RTMondrian new.
	b view: view.
	
	normalizer := RTMultiLinearColorForIdentity new objects: (self allClasses collect: #theClass).
	b interaction action: #inspect.
	methodsToRender := self producingMethods.
	methodsToRender := methodsToRender sortedAs: #selector.	
		
	b shape rectangle 
		borderWidth: 2;
		fillColor: Color white;
		borderColor: Color veryVeryLightGray;
		if: [ :m | m doIInstantiateCompareWith: methodsToRender ] borderColor: Color gray.
		
	b nodes: methodsToRender forEach: [ :m |
		self isReadyForComparison 
		ifTrue: [ 
			b shape rectangle 
						if: [ :assoc | (m doIInstantiate: assoc key) not ] borderColor: Color transparent;
						if: [ :assoc | (m doIInstantiate: assoc key) and: [ (m previousMethod instancesOf: assoc key) < (m instancesOf: assoc key) ] ] borderColor: Color red;
						if: [ :assoc | (m doIInstantiate: assoc key) and: [ m isNewMethod ] ] borderColor: Color red;
						fillColor: [ :assoc | normalizer rtValue: assoc key ];
						width: [ :assoc | (assoc value + 1) log * 8 ];
						height: [ :assoc | ((m memoryOf: assoc key) + 1) log * 8 ] ]
					
		ifFalse: [ 
			b shape rectangle 
						borderWidth: 2;
						borderColor: Color gray;
						if: [ :assoc | (m doIInstantiate: assoc key) not ] borderColor: Color transparent;
						fillColor: [ :assoc | normalizer rtValue: assoc key ];
						width: [ :assoc | (assoc value + 1) log * 8 ];
						height: [ :assoc | ((m memoryOf: assoc key) + 1) log * 8 ] ].
					
		b nodes: (m counting associations reverseSortedAs: #value).
		b flowLayout gapSize: 2.
	].

	b edges 
		objects: methodsToRender;
		connectFrom: #yourself toAll: [ :m | m calledMethods sortedAs: #selector ].
	b treeLayout.
	
	self setMenuOn: b view.
	b build.
	
	callGraphElements := b view elements.
	doubleBar := RTDoubleBarBuilder new.
	doubleBar view: b view. 

	self isReadyForComparison 
		ifTrue: [ 
			doubleBar interaction 
				highlightNeighbour: [ :cls | methodsToRender select: [ :m | m doIInstantiate: cls ] ] color: Color blue.
			
			doubleBar shape label
				text: #name;
				color: Color gray;
				if: [ :cls | (self lastProfile numberOfKbUsedByClass: cls) > (self numberOfKbUsedByClass: cls) ] 
					fillColor: Color green;
				if: [ :cls | (self lastProfile numberOfKbUsedByClass: cls) < (self numberOfKbUsedByClass: cls) ] 
					fillColor: Color red
				 ]
		ifFalse: [ 
			doubleBar interaction 
				highlightNeighbors: [ :cls | methodsToRender select: [ :m | m doIInstantiate: cls ] ].
			doubleBar shape label text: #name ].

	doubleBar points: ((self profiler counting associations reverseSortedAs: #value) collect: #key).


	doubleBar 
		bottomValue: [ :cls | self numberOfInstancesOfClass: cls ]
		titled: '# instances'.

	doubleBar 
		topValue: [ :cls | self numberOfKbUsedByClass: cls ]
		titled: 'Memory consumption in Kbytes'.
	doubleBar build.
	
	charterElements := b view elements copyWithoutAll: callGraphElements.
	TRConstraint move: charterElements onTheRightOf: callGraphElements.
	charterElements translateBy: 10 @ 0.

	legendBuilder := RTLegendBuilder new.
	legendBuilder view: b view.
	legendBuilder addColoredText: '-= Memory blueprint =-' color: Color black.
	legendBuilder addText: self numberOfExecutedMethods printString, ' executed methods'.
	legendBuilder addText: self numberOfMethodProducingObjects printString, ' methods producing objects'.
	legendBuilder addText: ((self ratioOfMethodProducingObjects * 100) round: 4) printString, ' % methods producing objects'.
	legendBuilder build.
	TRConstraint move: legendBuilder legendElement above: charterElements.
"