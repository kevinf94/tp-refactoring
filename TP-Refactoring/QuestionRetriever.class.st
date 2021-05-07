Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> withCuOOra: aCuoora [
	^ self new withCuOOra: aCuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> withCuOOra: aCuoora and: aSymbol [
	^ self new withCuOOra: aCuoora and: aSymbol; yourself.
]

{ #category : #deprecated }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #initializing }
QuestionRetriever >> initialize [
	option := #social
]

{ #category : #private }
QuestionRetriever >> last100Questions: aQuestionCollection [
	^aQuestionCollection last: (100 min: aQuestionCollection size)
]

{ #category : #deprecated }
QuestionRetriever >> option: anOption [
	option := anOption
]

{ #category : #private }
QuestionRetriever >> removeQuestionsFromUser: aUser inCollection: aQuestionCollection [ 
	^aQuestionCollection reject: [  :aQuestion | aQuestion user = aUser ]
	
]

{ #category : #private }
QuestionRetriever >> retrieveQuestions: aUser [
	^self subclassResponsibility
]

{ #category : #private }
QuestionRetriever >> retrieveQuestions: aUser onQuestions: aQuestionCollection [
	^self removeQuestionsFromUser: aUser inCollection: (self last100Questions: (self sortQuestions: aQuestionCollection))

]

{ #category : #private }
QuestionRetriever >> sortQuestions: aQuestionCollection [
	^aQuestionCollection asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]
]

{ #category : #private }
QuestionRetriever >> withCuOOra: aCuoora [
	cuoora := aCuoora
]

{ #category : #private }
QuestionRetriever >> withCuOOra: aCuoora and: aSymbol [
	cuoora := aCuoora.
	option := aSymbol.
]
