# Spy2
Spy2 is a profiling framework for Pharo, useful to gather some information about dynamic execution for a given piece of code. 

Spy2 may be installed on Pharo 8 and Pharo 9. using the expression:

```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'github://ObjectProfile/Spy2/src'; 
	load
```  

Spy2 is also available on the Pharo Catalog Browser.

Spy2 depends on [Roassal3](https://github.com/ObjectProfile/Roassal3/). The core of Spy2, therefore without any external dependencies, may be loaded using:

```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'github://ObjectProfile/Spy2/src'; 
	load: 'Core'
```

----
# Tutorial

This short-tutorial assumes you have the complete installation of Spy, thus including Roassal3. The tutorial is about building a profiler that monitor the number of object creations for each class, and the number of execution of each method. Afterward, a visualization is built to convey information gathered during an execution.

## Step 1 - Building a skeleton for the profiler
We give the name `DynAnalyzer` to our profiler and the package `Spy2DemoProfiler` will contain all the related code. A skeleton is created by executing the following code in a playground:

```Smalltalk
Spy2 generate: 'DynAnalyzer' category: 'Spy2DemoProfiler'
```

The skeleton is made of four classes: `DynAnalyzer`, `DynAnalyzerPackage`, `DynAnalyzerClass`, and `DynAnalyzerMethod`.

## Step 2 - Counting method execution

We need to add an instance variable to the class `DynAnalyzerMethod`. The variable `numberOfExecutions` keeps the number of execution for each method of the profiled application.

```Smalltalk
S2Method subclass: #DynAnalyzerMethod
	instanceVariableNames: 'numberOfExecutions'
	classVariableNames: ''
	package: 'Spy2DemoProfiler'
```

The variable is initialized using: 

```Smalltalk
DynAnalyzerMethod>>initialize
	super initialize.
	numberOfExecutions := 0
```

We need a way to access it:

```Smalltalk
DynAnalyzerMethod>>numberOfExecutions
	^ numberOfExecutions
```

The variable has to be incremented at each method execution:
```Smalltalk
DynAnalyzerMethod>>beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	counter := counter + 1
```

Visualization
```Smalltalk
c := RSCanvas new.
executedClasses := self allClasses select: [ :c | c allMethods anySatisfy: [ :m | m numberOfExecutions > 0 ] ].
executedClasses do: [ :clsSpy |
	"Name of the class"
	label := RSLabel new text: clsSpy className.
	
	"Build the method visual elements"
	methods := clsSpy methods collect: [ :m |
		RSBox new model: m; size: ((m numberOfExecutions sqrt) max: 4) ; color: Color blue ] as: RSGroup.
	
	"Make all the method located as a grid"
	RSGridLayout on: methods.
	
	methods @ RSPopup.
	
	"Locate the label above the methods"
	RSLocation new above; move: label on: methods.
	
	composite := RSComposite new.
	composite model: cls.
	composite color: Color veryVeryLightGray.
	composite shapes: { label }, methods.
	composite @ RSDraggable.
	composite padding: 10.
	
	c add: composite.
].

RSFlowLayout on: c shapes.

c @ RSCanvasController
```

## Step 

DynAnalyzer new
	profile: [ RSShapeExamples new example10Donut open ] 
	onPackagesMatchingExpresions: #('Roassal3*')
	
	
	

basicNewPlugin
	<S2ClassPlugin>
	^ S2SpecialBehaviorPlugin basicNewPluginOn: self



----



# Hapao 
Hapao is a test coverage tool for Pharo and VisualWorks. After having run your test, it gives an intuitive visualization of the test coverage.
More information can be found on *http://bergel.eu/download/papers/Berg12c-HapaoSCP.pdf*


# Contributing to Spy and Hapao
If you wish to contribute to Spy2 or Hapao (e.g., fixing bug, proposing an improvement), please, submit pull requests.

# Pharo 6 and 7

The git repository contains a tag `Pharo7`. You can also use:

```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'github://ObjectProfile/Spy2:v1.0/src'; 
	load
```

# Developer corner

If you have a local copy of Spy, then you can load it via:
```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'gitlocal:///Users/alexandrebergel/Dropbox/GitRepos/Spy2' ;
	lock;
	load
``` 
