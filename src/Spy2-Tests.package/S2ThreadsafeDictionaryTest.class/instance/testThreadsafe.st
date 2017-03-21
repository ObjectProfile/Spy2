tests
testThreadsafe
	| rawDict dict sem1 sem2 sem3 watchdog res p1 p2 |
	[rawDict := Dictionary new.
	dict := S2ThreadsafeDictionary on: rawDict.
	sem1 := Semaphore new.
	sem2 := Semaphore new.
	sem3 := Semaphore new.
	watchdog := [ 
		(Delay forSeconds: 1) wait.
		1 to: 10 do: [:i | sem3 signal] ] forkAt: 60.
	p1 := [ sem1 wait.
		res := dict at: #zork.
		sem3 signal
		] fork.
	p2 := [  sem2 wait.
		dict at: #foo put: #bar.
		sem3 signal.
		sem2 wait.
		dict at: #zork ifAbsentPut: [ sem1 signal. Processor yield. sem3 signal. sem2 wait. #zork ]
		] fork.
	self deny: (dict includesKey: #foo).
	sem2 signal.
	sem3 wait.
	self assert: (dict at: #foo) equals: #bar.
	sem2 signal.
	sem3 wait.
	self assert: res == nil.
	sem2 signal.
	sem3 wait.
	self assert: res equals: #zork.] 
		ensure: [ 
			p1 ifNotNil: #terminate.
			p2 ifNotNil: #terminate.
			watchdog ifNotNil: #terminate ]