Class {
	#name : #DocumentationBrowser,
	#superclass : #SpPresenter,
	#instVars : [
		'text',
		'contents'
	],
	#category : #DocumentationPrototype
}

{ #category : #accessing }
DocumentationBrowser class >> defaultExtent [
	
	^ 800@600
]

{ #category : #layout }
DocumentationBrowser class >> defaultLayout [

	^ SpBoxLayout newHorizontal
		add: #text;
		yourself.
]

{ #category : #accessing }
DocumentationBrowser class >> defaultTitle [
	
	^ 'Documentation Browser'
]

{ #category : #documentation }
DocumentationBrowser class >> documentation [
  ^ 'pharo-local/iceberg/olekscode/DocumentationPrototype/README.md'

]

{ #category : #initialization }
DocumentationBrowser >> initializePresenters [
		
	text := self newMorph.
	
	contents ifNotNil: [ 
		self parseAndShowRichText: contents ]
]

{ #category : #initialization }
DocumentationBrowser >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.

	aWindowPresenter
		title: self class defaultTitle;
		initialExtent: self class defaultExtent
]

{ #category : #parsing }
DocumentationBrowser >> parseAndShowRichText: aMicrodownString [

	| richText |
	richText := MicRichTextComposer asRichText: aMicrodownString.
	
	text morph: (RubScrolledTextMorph new 
		setText: richText;
		in: [ :this | this textArea readOnly: true ];
		yourself).
]

{ #category : #initialization }
DocumentationBrowser >> setModelBeforeInitialization: aDocumentationString [

	contents := aDocumentationString
]
