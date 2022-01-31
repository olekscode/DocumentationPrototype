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

{ #category : #execution }
ClyBrowseMethodDocumentation >> execute [

	self browseDocumentationOfClass: methods first methodClass
]
