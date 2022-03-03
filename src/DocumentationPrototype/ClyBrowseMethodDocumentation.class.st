Class {
	#name : #ClyBrowseMethodDocumentation,
	#superclass : #SycMethodCommand,
	#traits : 'TBrowseDocumentation',
	#classTraits : 'TBrowseDocumentation classTrait',
	#category : #DocumentationPrototype
}

{ #category : #activation }
ClyBrowseMethodDocumentation class >> methodMenuActivation [
	<classAnnotation>
	^ CmdContextMenuActivation byItemOf: ClySUnitMethodMenuGroup order: 1 for: ClyMethod asCalypsoItemContext
]

{ #category : #'as yet unclassified' }
ClyBrowseMethodDocumentation >> browseDocumentationOfMethod: aMethod [

	| pragma pathOrURL |
	
	pragma := aMethod pragmas detect: [ :each | each selector = 'documentation:' ].
	pathOrURL := pragma arguments first.
		
	self browseDocumentationStoredAt: pathOrURL 
]

{ #category : #execution }
ClyBrowseMethodDocumentation >> execute [

	| method |
	method := methods first.
	
	(self isDocumentationSpecifiedForMethod: method)
		ifTrue: [ self browseDocumentationOfMethod: method ]
		ifFalse: [ self browseDocumentationOfClass: method methodClass ].
]

{ #category : #'as yet unclassified' }
ClyBrowseMethodDocumentation >> isDocumentationSpecifiedForMethod: aMethod [

	^ aMethod pragmas anySatisfy: [ :each | each selector = 'documentation:' ].
]
