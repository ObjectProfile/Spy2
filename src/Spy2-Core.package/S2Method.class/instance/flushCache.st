hooks
flushCache
	"Tell the interpreter to remove all references to this method from its method lookup cache, if it has one.  This primitive must be called whenever a method is defined or removed.
	NOTE:  Only one of two selective flush methods needs to be used.
	Squeak 2.2 and earlier uses 119 (See Symbol flushCache).
	Squeak 2.3 and later uses 116 (See CompiledMethod flushCache)."

	<primitive: 116>