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
QuestionRetriever class >> new: aCuoora [
	^ self new cuoora: aCuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: aCuoora and: aSymbol [
	^ self new cuoora: aCuoora; option: aSymbol; yourself.
]

{ #category : #accessing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #initializing }
QuestionRetriever >> initialize [
	option := #social
]

{ #category : #accessing }
QuestionRetriever >> lastQuestions: aQuestions [
 ^ aQuestions last: (100 min: aQuestions size)
]

{ #category : #accessing }
QuestionRetriever >> option: anOption [
	option := anOption
]

{ #category : #private }
QuestionRetriever >> retrieveQuestions: aUser [
	| qRet |
	qRet := OrderedCollection new.
	option = #social
		ifTrue: [ 
			qRet := self lastQuestions: (self sortQuestionsByPositiveVotes: aUser followingQuestions). 
			].
	option = #topics
		ifTrue: [
			qRet := self lastQuestions: (self sortQuestionsByPositiveVotes: aUser interestedTopicsQuestions) .
			 ].
	option = #news
		ifTrue: [
			qRet := self lastQuestions: (self sortQuestionsByPositiveVotes: cuoora todayQuestions).
			 ].
	option = #popularToday
		ifTrue: [
			qRet := self lastQuestions: (self sortQuestionsByPositiveVotes: cuoora popularQuestions). 
			 ].
	^ qRet reject: [ :q | q user = aUser ]
]

{ #category : #sorting }
QuestionRetriever >> sortQuestionsByPositiveVotes: aCollectionOfQuestions [
  ^aCollectionOfQuestions asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
]
