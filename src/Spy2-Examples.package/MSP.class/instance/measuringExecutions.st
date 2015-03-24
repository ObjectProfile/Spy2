examples
measuringExecutions
	"
	self new measuringExecutions

Transcript show: ((RPackageOrganizer default packages  select: [ :p | p name beginsWith: 'Versionner-' ]) collect: #name);cr

	"

	| answer glamourPackageNames bench profile moosePackages specPackages versionnerBrowser |
	glamourPackageNames := 

#(#'Glamour-Roassal2-Presentations' #'Glamour-Examples' #'Glamour-Core' #'Glamour-Morphic-Pager' #'Glamour-Tests-Rubric' #'Glamour-Morphic-Widgets' #'Glamour-Helpers' #'Glamour-Magritte-Presentations' #'Glamour-Tests-Core' #'Glamour-Browsers' #'Glamour-Presentations' #'Glamour-Rubric-Presentations' #'Glamour-Tests-Morphic' #'Glamour-Morphic-Renderer' #'Glamour-Morphic-Brick' #'Glamour-Morphic-Theme' #'Glamour-Tools' #'Glamour-Examples-Extras' #'Glamour-Announcements' #'Glamour-Tests-Resources').
	moosePackages := 

#(#'Moose-HismoImporter' #'Moose-TestResources-PackageBlueprint-P3' #'Moose-SmalltalkImporter' #'Moose-MonticelloImporter' #'Moose-Algos-HierarchicalGraph' #'Moose-Algos-Lattice' #'Moose-Tests-Algos-HierarchicalGraph' #'Moose-Test-HismoImporter' #'Moose-Settings' #'Moose-Core' #'Moose-TestResources-PackageBlueprint-P1' #'Moose-Tests-SmalltalkImporter-KGB' #'Moose-Algos-Graph' #'Moose-TestResources-KGB-P14FullReferee' #'Moose-TestResources-KGB-P3InteractedReferencer' #'Moose-Algos-InformationRetrieval' #'Moose-TestResources-KGB-P2InteractedReferencerReferee' #'Moose-Help' #'Moose-TestResources-Reference-Core' #'Moose-Tests-SmalltalkImporter-Core' #'Moose-Tests-Algos-LinearAlgebra' #'Moose-TestResources-KGB-P11FullReferee' #'Moose-TestResources-PackageBlueprint-P4' #'Moose-Wizard' #'Moose-Tests-Algos-FormalConceptAnalysis' #'Moose-TestResources-PackageBlueprint-P2' #'Moose-TestResources-KGB-P6InteractedReferee' #'Moose-TestResources-LAN' #'Moose-TestResources-KGB-P12FullReferencer' #'Moose-Tests-Algos-Clustering' #'Moose-TestResources-LCOM' #'Moose-Tests-RoassalPaintings' #'Moose-TestResources-KGB-PExtensions' #'Moose-TestResources-KGB-P9FullReferencer' #'Moose-Tests-Core' #'Moose-Tests-MonticelloImporter' #'Moose-TestResources-KGB-P13FullReferencer' #'Moose-RoassalPaintings' #'Moose-Tests-Algos-Graph' #'Moose-GenericImporter' #'Moose-Tests-DistributionMap' #'Moose-TestResources-KGB-P5FullReferee' #'Moose-TestResources-KGB-P7ReferencerReferee' #'Moose-Algos-Kontractor' #'Moose-TestResources-KGB-P10InteractedReferee' #'Moose-Tests-Algos-Lattice' #'Moose-Development-Tools' #'Moose-Algos-LinearAlgebra' #'Moose-TestResources-Reference-PackageTwo' #'Moose-Finder' #'Moose-Hismo' #'Moose-Tests-Algos-InformationRetrieval' #'Moose-TestResources-KGB-P4FullInteracted' #'Moose-TestResources-KGB-P1FullReferencer' #'Moose-TestResources-KGB-P8FullReferencer' #'Moose-Algos-FormalConceptAnalysis' #'Moose-TestResources-Reference-PackageOne' #'Moose-Algos-Clustering' #'Moose-Algos-GraphObjectTraverser' #'Moose-Tests-Finder' #'Moose-Tests-SmalltalkImporter-LAN' #'Moose-DistributionMap' #'Moose-Tests-Algos-Kontractor').

	specPackages := 
#(#'Spec-PolyWidgets' #'Spec-Tools' #'Spec-Layout' #'Spec-Extensions' #'Spec-Debugger' #'Spec-Core' #'Spec-MorphicAdapters' #'Spec-Tests' #'Spec-Examples' #'Spec-Inspector').

	versionnerBrowser := 
#(#'Versionner-Tests-Core-Model' #'Versionner-Tests-Core-Commands' #'Versionner-Tests-Resources' #'Versionner-Core-Model' #'Versionner-Core-Announcements' #'Versionner-Core-DependenciesModel' #'Versionner-Tests-Core-DependenciesModel' #'Versionner-Spec-Browser' #'Versionner-Core-Commands').

	bench := { 
"		{ 'Roassal1' . [ RTComposerExample new exampleClassAnalysis ] . #('Roassal2' 'Trachel') } .
		{ 'Roassal2' . [ RTCharterExample new exampleAgeOfRoassalAndTrachel ] . #('Roassal2' 'Trachel') } .
		{ 'Roassal3' . [RTNameCloudExample new exampleSimpleExample] . #('Roassal2' 'Trachel') } .
		
		{ 'Nautilus1' . [ Nautilus open ] . #('Nautilus' 'NautilusCommon' 'NautilusRefactoring') } .
		{ 'Nautilus2' . [ Nautilus openOnClass: Object ] . #('Nautilus' 'NautilusCommon' 'NautilusRefactoring') } ."
		
		"VV -- not working -- VV"
"		{ 'Nautilus3' . [ Nautilus openOnPackage: (RPackage organizer packageNamed: 'Roassal2' asString) ] . #('Nautilus' 'NautilusCommon' 'NautilusRefactoring') } ."

"		{ 'Glamour1' . [GLMBasicExamples new multipleFinderWithFilter openOn: ($a to: $z)] . glamourPackageNames } .
		{ 'Glamour2' . [GLMBasicExamples new staticAndDynamicMenu openOn: $z] . glamourPackageNames } .		
		{ 'Glamour3' . [GLMBasicExamples new tableWithIcons openOn: ($A to: $z)] . glamourPackageNames } ."

		{ 'Moose Importer1' . [ self mooseImportTask ] . moosePackages } .
		{ 'Moose Importer2' . [ self mooseImportTask2 ] . moosePackages } .
		{ 'Moose Importer3' . [ self mooseImportTask3 ] . moosePackages } .
		
"		{ 'Rubric 1' . [ RubTextAreaExamples autoReactingText ] . #('Rubric') } .
		{ 'Rubric 2' . [ RubTextAreaExamples simplestWrappedTo400 ] . #('Rubric') } .
		{ 'Rubric 3' . [ RubTextAreaExamples textAreaWithBiggerFont ] . #('Rubric') } .
"	
"		{ 'Shout 1' . [SHMethodEditingMode new open] . #('Shout') } .
		{ 'Shout 2' . [SHOneEditorShoutedASecondNotShouted  new open.] . #('Shout') } .
		{ 'Shout 3' . [SHStylingOrNotDependingOnModelState new open ] . #('Shout') } .
"

"		{ 'Spec 1' . [		 	| si |
	si := MethodBrowser new.
	si openWithSpec.
	si methods: Object methodDict values ] . specPackages } .
		{ 'Spec 2' . [TabsExample new openWithSpec] . specPackages } .
		{ 'Spec 3' . [TextFieldExample new openWithSpec] . specPackages } .
"	
	
"		{ 'Tabs' . [TabExample new open] . #('Tabs') } .
"
		{ 'Trachel 1' . [TRCanvasExample new arc0] . #('Trachel') } .
		{ 'Trachel 2' . [TRCanvasExample new bezier] . #('Trachel') } .
		{ 'Trachel 3' . [TRCanvasExample new circle2] . #('Trachel') } .
		
"		{ 'Versionner' . [VersionBrowser open] . #('VersionBrowser') } ."
		
"		{ 'VersionnerBrowser' . [VersionnerSpecBrowser open.] . versionnerBrowser } .
		
		{ 'XML Parser 1' . [SAXHandler parse: XMLParserTest addressBookXML] . #('XML-Parser') } .
		{ 'XML Parser 2' . [XMLDOMParser parse: XMLParserTest addressBookXMLWithDTD ] . #('XML-Parser') } .
		
		{ 'UpdateStreamer 1' . [UpdateStreamer new extractVersion: 'Pharo1.1a' from: UpdateStreamerTest new miniUpdate.] . #('UpdateStreamer-Core') } .
		{ 'UpdateStreamer 2' . [UpdateStreamer new extractVersion: 'ZORK.2a' from: UpdateStreamerTest new miniUpdate.] . #('UpdateStreamer-Core') } .
		{ 'UpdateStreamer 3' . [UpdateStreamer new extractVersion: 'Pharo1.2a' from: UpdateStreamerTest new miniUpdate.] . #('UpdateStreamer-Core') } .

		{ 'Regexp' . ['ab*' matchesRegex: 'abc'] . #('Regex-Core') } .

		{ 'RecentSubmissions' . [ MessageList example ] . #('RecentSubmissions') } .
	
		{ 'ProfStef' . [PharoTutorial go.] . #('ProfStef-Core') } .
"
		{ 'PetitJson' . [ PPJsonParser new parse: '{"object":{"1":"2"}} '] . #('PetitJson') } .
		
		{ 'PetitJava' . [PPJavaParser new parse: 'class Foo { }'] . #('PetitJava') } .
	}.
	
	answer := WriteStream on: String new.
	answer nextPutAll: 'title	#executed	#prodSites	%ratio'; cr.
	bench do: [ :benchEntry |
		profile := MSP 
							profile: benchEntry second
							onPackagesNamed: benchEntry third.
		answer nextPutAll: benchEntry first; tab.
		answer nextPutAll: profile numberOfExecutedMethods asString; tab.
		answer nextPutAll: profile numberOfMethodProducingObjects asString; tab.
		answer nextPutAll: profile ratioOfMethodProducingObjects asString; tab.
		answer cr.
	].
	answer contents inspect.