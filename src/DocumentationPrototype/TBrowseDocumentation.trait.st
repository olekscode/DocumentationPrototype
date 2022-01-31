Trait {
	#name : #TBrowseDocumentation,
	#category : #DocumentationPrototype
}

{ #category : #'as yet unclassified' }
TBrowseDocumentation >> browseDocumentationOfClass: aClass [

	| pathOrURL |
	
	[ pathOrURL := aClass documentation ]
		on: Error
		do: [ self inform: 'Documentation was not found'. ^ self ].
		
	self browseDocumentationStoredAt: pathOrURL 
]

{ #category : #accessing }
TBrowseDocumentation >> browseDocumentationStoredAt: aPathOrUrl [

	| contents |
	
	contents := (aPathOrUrl beginsWithAnyOf: #(http https))
		ifTrue: [ self readDocumentationFromUrl: aPathOrUrl ]
		ifFalse: [ self readDocumentationFromFile: aPathOrUrl ].
		
	(DocumentationBrowser on: contents) open.
]

{ #category : #accessing }
TBrowseDocumentation >> defaultMenuIconName [

	^ #glamorousBookmark
]

{ #category : #accessing }
TBrowseDocumentation >> defaultMenuItemName [

	^ 'Browse documentation'
]

{ #category : #'as yet unclassified' }
TBrowseDocumentation >> readDocumentationFromFile: aPath [

	^ aPath asFileReference contents
]

{ #category : #'as yet unclassified' }
TBrowseDocumentation >> readDocumentationFromUrl: aUrl [

	| response |

	response := ZnClient new 
		url: aUrl;
		get;
		response.

	^ response contents.
]
