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
