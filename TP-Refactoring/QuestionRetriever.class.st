Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: aCuoora [
	^ self new cuoora: aCuoora
]

{ #category : #accessing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #accessing }
QuestionRetriever >> lastQuestions: aQuestions [
 ^ aQuestions last: (100 min: aQuestions size)
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> retrieveLastSortedQuestionsWithoutMe: aUser [

	^(self lastQuestions: (self sortQuestionsByPositiveVotes: (self typeOfQuestions: aUser)))
				reject: [ :q | q user = aUser ]
]

{ #category : #private }
QuestionRetriever >> retrieveQuestions: aUser [
	^ self retrieveLastSortedQuestionsWithoutMe: aUser
]

{ #category : #sorting }
QuestionRetriever >> sortQuestionsByPositiveVotes: aCollectionOfQuestions [
  ^aCollectionOfQuestions asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
]

{ #category : #abstract }
QuestionRetriever >> typeOfQuestions: aUser [
	self subclassResponsibility .
]
