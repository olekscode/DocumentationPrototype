Class {
	#name : #BaselineOfDocumentationPrototype,
	#superclass : #BaselineOf,
	#category : #BaselineOfDocumentationPrototype
}

{ #category : #baselines }
BaselineOfDocumentationPrototype >> baseline: spec [
	<baseline>
	spec for: #common do: [
		"Packages"
		spec 
			package: 'DocumentationPrototype' ].
]
