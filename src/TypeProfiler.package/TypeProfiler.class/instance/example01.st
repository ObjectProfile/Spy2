examples
example01
	"
	self new example01
	"
	| profiler data allNames categoriesNames labelsNames allOutputTypes categoriesTypes labelsTypes oneHotData shuffledData trainData testData model fitData |
	profiler := TypeProfiler profile:[ RTRoassalExample new exampleScaledNesting ]  onPackagesMatchingExpresions: #('Roassal*' 'Trachel*').
	data := (profiler allMethods select: [ :spyM | spyM compiledMethod argumentNames size > 0 ]) collect: [ :spyM | {  spyM compiledMethod argumentNames . spyM types allButLast asArray } ].

allNames := data flatCollect: #first.
categoriesNames := KNDataWorkerUtils categories: allNames.
labelsNames := KNDataWorkerUtils
		oneHotEncode: allNames
		onCategories: categoriesNames.

allOutputTypes := data flatCollect: #second.
categoriesTypes := KNDataWorkerUtils categories: allOutputTypes.
labelsTypes := KNDataWorkerUtils
		oneHotEncode: allOutputTypes
		onCategories: categoriesTypes.

oneHotData := labelsNames with: labelsTypes collect: [ :a1 :a2 | a1, a2 ].
shuffledData := oneHotData shuffled.
trainData := shuffledData first: 100.
testData := shuffledData last: 79.

model := KNSequentialModel inputDim: categoriesNames size.
model
		"We define a Dense Layer with 16 neurons"
		add: (KNDenseLayer neurons: 80);
		"Set a Sigmoid activation function for the layer."
		add: KNSigmoidActivation new;
		"We define a Dense Layer with 3 neurons. Since this is the last layer, the network will 
		have 3 outputs."
		add: (KNDenseLayer neurons: categoriesTypes size);
		"Set a softmax axtivation function for our last layer."
		add: KNSoftmaxActivation new.
"Compile the model using Categorical-Crossentropy as loss function and use Adam optimizer. 
	We also define two metrics: Loss (default) and Accuracy."
model
		compileLoss: KNCategoricalCrossentropyLoss new
		optimizer: KNAdamOptimizer new.
		
fitData := (model
		fit: (trainData collect: [ :arr | arr first: categoriesNames size ])
		labels: (trainData collect: [ :arr | arr allButFirst: categoriesNames size ])
		epochs: 100) waitForValue.
"The following statement returns an array with two values: #(loss accuracy)"
^ (model
		evaluate: (testData collect: [ :arr | arr first: categoriesNames size ])
		labels: (testData collect: [ :arr | arr allButFirst: categoriesNames size ])) waitForValue.