util
isDangerous: aClass
	self assert: [ aClass theNonMetaClass == aClass ] description: 'Can only be called on non meta class'.
"	(aClass inheritsFrom: Spy) ifTrue: [ ^ true ].
	true ifTrue: [ ^ false ].	"
		
	"Cannot instrument a configuration"
	(aClass name beginsWith: 'ConfigurationOf') ifTrue: [ ^ true ].  
	
	"Can instrument the scenario example, even it belongs to Spy"
	(aClass category beginsWith: 'S2py-ScenarioExample') ifTrue: [ ^ false ].

"	({ByteSymbol . String . Symbol . MethodReference . MorphicToolBuilder} includes: aClass)
		ifTrue: [ ^ true ]."

	(#('S2py' 'Announcements' 'Balloon' 'Collections' 'CollectionsTests' 'Compiler' 'CompilerTests' 'Compression' 'DeprecatedPreferences' 'Exceptions' 'Files' 'FixUnderscores' 'FreeType' 'FreeTypeSubPixelAntiAliasing' 'FreeTypeTests' 'Gofer' 'Graphics' 'GraphicsTests' 'HostMenus' 'Kernel' 'KernelTests' 'MCDirtyPackage' 'MenuRegistration' 'Monticello' 'MonticelloConfigurations' 'MonticelloGUI' 'MonticelloMocks' 'Morphic' 'MorphicTests' 'Multilingual' 'MultilingualTests' 
	"'Network' 'NetworkTests' "
	'ObjectMetaTools' 'PackageInfo' 'PinesoftEnhancementsForFreetype' 'Polymorph' 'PreferenceBrowser' 'ST80' 'SUnit' 'SUnitGUI' 'ScriptLoader' 'ScriptLoader11' 'Settings' 'System' 'Tests' 'ToolBuilder' 'Tools' 'ToolsTest' 'Traits' 'TrueType' 'VB') anySatisfy: [ :cat | aClass category beginsWith: cat ])
		ifTrue: [ ^ true ].
	^ false		
"	^ aClass isCollection
		or: [ ((Smalltalk specialObjectsArray select: #isBehavior) includes: aClass) ]
"