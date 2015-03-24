private
primitiveInstall

	|template|
	template := S2StringNewPlugin class >> #templateNew:.
	#new: flushCache.
	template := template copyFor: ByteString class.
	template replaceLiterals:
		{ 
		template selector -> #new: .
		#profiler -> self profiler
		}.

	ByteString class methodDictionary at: #new: put: template.
	#new: flushCache.
