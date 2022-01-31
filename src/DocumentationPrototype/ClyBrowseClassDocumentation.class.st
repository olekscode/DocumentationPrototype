Class {
	#name : #ClyBrowseClassDocumentation,
	#superclass : #SycClassCommand,
	#traits : 'TBrowseDocumentation',
	#classTraits : 'TBrowseDocumentation classTrait',
	#category : #DocumentationPrototype
}

{ #category : #activation }
ClyBrowseClassDocumentation class >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 1 for: ClyFullBrowserClassContext
]

{ #category : #execution }
ClyBrowseClassDocumentation >> execute [

	self browseDocumentationOfClass: classes first
]
