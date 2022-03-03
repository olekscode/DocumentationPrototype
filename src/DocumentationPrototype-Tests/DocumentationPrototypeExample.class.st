Class {
	#name : #DocumentationPrototypeExample,
	#superclass : #Object,
	#category : #'DocumentationPrototype-Tests'
}

{ #category : #'as yet unclassified' }
DocumentationPrototypeExample >> methodWithDocumentationPragma [
	<documentation: 'path/to/documentation.md'>
	^ self
]

{ #category : #'as yet unclassified' }
DocumentationPrototypeExample >> methodWithOtherPragma [
	<hello: 'world'>
	^ self
]

{ #category : #'as yet unclassified' }
DocumentationPrototypeExample >> methodWithoutPragmas [
	^ self
]
