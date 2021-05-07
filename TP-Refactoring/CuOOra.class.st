Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addQuestion: aQuestion.
	self addQuestion: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic
]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser
]

{ #category : #private }
CuOOra >> avarageVotes [
	^self totalQuestionsPositiveVotes / self todayQuestions size
]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #accessing }
CuOOra >> popularQuestions [
	^self todayQuestions select: [ :aQuestion | aQuestion positiveVotes size >= self avarageVotes ]
]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #accessing }
CuOOra >> todayQuestions [
	^questions select: [ :aQuestion | aQuestion timestamp asDate = Date today ].

]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #private }
CuOOra >> totalQuestionsPositiveVotes [
	^questions sum: [ :aQuestion | aQuestion positiveVotes size ]
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
