# Spy2
Spy2 is a profiling framework for Pharo. Spy2 source code is kept on Monticello. You can install it using the following incantation.

```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'github://ObjectProfile/Spy2/src'; 
	load
```  

Spy2 is also available on the Pharo Catalog Browser.

If you have a local copy of Spy, then you can load it via:
```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'gitlocal:///Users/alexandrebergel/Dropbox/GitRepos/Spy2' ;
	lock;
	load
``` 

Use the stable version of Spy2 for pharo7

```Smalltalk
Metacello new 
	baseline: 'Spy2'; 
	repository: 'github://ObjectProfile/Spy2:v1.0/src'; 
	load
```

# Hapao 
Hapao is a test coverage tool for Pharo and VisualWorks. After having run your test, it gives an intuitive visualization of the test coverage.
More information can be found on *http://bergel.eu/download/papers/Berg12c-HapaoSCP.pdf*


# Contributing to Spy and Hapao
If you wish to contribute to Spy2 or Hapao (e.g., fixing bug, proposing an improvement), please, submit pull requests.

# Pharo 6 and 7

The git repository contains a tag `Pharo7`.
