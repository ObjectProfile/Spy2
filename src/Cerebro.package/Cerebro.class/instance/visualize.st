public - visualization
visualize

"a Cerebro"
| methods index b |
methods := self allMethods select: [ :m | m dictionary notEmpty ].
index := 1.
b := RTMondrian new.
b nodes: methods.
b shape line color: Color blue trans.
b edges
	moveBehind;
	connectToAll: #calledMethods.
b layout force.

b build.

"anim := RTActiveAnimation new.
anim intervalInMilliseconds: 200.
anim blockToExecute: [m := (b view elementFromModel: (self trace at: index)). 	m ifNotNil: [ 
			RTBlink on: m
			].
	index := index + 1.
	b view signalUpdate ].

b view addMenu: 'Play' callback: [ 
	anim inView: b view.
	 ].
"
^ b view.