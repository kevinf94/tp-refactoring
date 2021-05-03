Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^self new withAnswer: anAnswer user: aUser question: aQuestion
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

{ #category : #private }
Answer >> withAnswer: anAnswer user: aUser question: aQuestion [
	self withDescription: anAnswer user: aUser.
	question := aQuestion.
]
