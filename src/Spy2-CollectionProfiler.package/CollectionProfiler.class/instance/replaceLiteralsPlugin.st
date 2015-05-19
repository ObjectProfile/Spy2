as yet unclassified
replaceLiteralsPlugin
	<S2MethodPlugin>
	^ S2ReplaceLiteralsPlugin on: self usingTranslations: { Array asGlobal -> LArray asGlobal }