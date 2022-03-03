Class {
	#name : #DocumentationPrototypeTest,
	#superclass : #TestCase,
	#category : #'DocumentationPrototype-Tests'
}

{ #category : #tests }
DocumentationPrototypeTest >> testIsDocumentationSpecifiedForMethod [
	| method command |
	method := DocumentationPrototypeExample >> #methodWithDocumentationPragma.
	command := ClyBrowseMethodDocumentation new.
	self assert: (command isDocumentationSpecifiedForMethod: method).
]

{ #category : #tests }
DocumentationPrototypeTest >> testIsDocumentationSpecifiedForMethodNoPragma [
	| method command |
	method := DocumentationPrototypeExample >> #methodWithoutPragmas.
	command := ClyBrowseMethodDocumentation new.
	self deny: (command isDocumentationSpecifiedForMethod: method).
]

{ #category : #tests }
DocumentationPrototypeTest >> testIsDocumentationSpecifiedForMethodOtherPragma [
	| method command |
	method := DocumentationPrototypeExample >> #methodWithOtherPragma.
	command := ClyBrowseMethodDocumentation new.
	self deny: (command isDocumentationSpecifiedForMethod: method).
]
