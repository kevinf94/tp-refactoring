Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> withDescription: aDescriptionString user: aUser question: aQuestion [
	^self new withDescription: aDescriptionString user: aUser question: aQuestion
]

{ #category : #initialize }
Answer >> initialize [
	super initialize.
]

{ #category : #accessing }
Answer >> isTopAnswer [
	.
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answer size )
]

{ #category : #deprecated }
Answer >> question: aQuestion [
	question := aQuestion.
]

{ #category : #private }
Answer >> withDescription: aDescriptionString user: aUser question: aQuestion [
	self withDescription: aDescriptionString user: aUser.
	question := aQuestion.
]
