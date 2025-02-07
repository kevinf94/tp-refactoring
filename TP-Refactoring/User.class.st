Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'answers',
		'username',
		'password',
		'topics',
		'following',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> withName: aUsernameString password: aPasswordString questionRetriever: aQuestionRetriever [
	^ self new withName: aUsernameString password: aPasswordString questionRetriever: aQuestionRetriever; yourself
]

{ #category : #accessing }
User >> addAnswer: anAnswer [
	answers add: anAnswer 
]

{ #category : #accessing }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #accessing }
User >> addTopic: aTopic [
	topics add: aTopic
]

{ #category : #accessing }
User >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #accessing }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #accessing }
User >> followingQuestions [
	^ following flatCollect: [ :aUser | aUser questions ]
]

{ #category : #initialize }
User >> initialize [
	questions := OrderedCollection new.  
	answers := OrderedCollection new. 
	topics := OrderedCollection new. 
	following := OrderedCollection new. 
	votes := OrderedCollection new.
]

{ #category : #accessing }
User >> interestedTopicsQuestions [
	^ topics flatCollect: [ :aTopic | aTopic questions ]
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #deprecated }
User >> password: anObject [
	password := anObject
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #deprecated }
User >> questionRetriever: aQuestionRetriever [
	questionRetriever := aQuestionRetriever.
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions: self.
]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #deprecated }
User >> username: anObject [
	username := anObject
]

{ #category : #accessing }
User >> votes [
	^ votes
]

{ #category : #private }
User >> withName: aUsernameString password: aPasswordString questionRetriever: aQuestionRetriever [
	username := aUsernameString.
	password := aPasswordString.
	questionRetriever := aQuestionRetriever.
	

]
