Class {
	#name : #Question,
	#superclass : #Publication,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> withTitle: aTitleString description: aDescriptionString user: aUser [
	^self new withTitle: aTitleString description: aDescriptionString user: aUser; yourself.
]

{ #category : #'instance creation' }
Question class >> withTitle: aTitleString description: aDescriptionString user: aUser topic: aTopic [
	^self new withTitle: aTitleString description: aDescriptionString user: aUser topic: aTopic; yourself.
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.
]

{ #category : #initialize }
Question >> initialize [
	super initialize.
	answers := OrderedCollection new.
	topics := OrderedCollection new.

]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]

{ #category : #private }
Question >> withTitle: aTitle description: aDescription user: aUser [
	self withDescription: aDescription user: aUser.
	title := aTitle.

]

{ #category : #private }
Question >> withTitle: aTitle description: aDescription user: aUser topic: aTopic [
	self withDescription: aDescription user: aUser.
	title := aTitle.
	self addTopic: aTopic.
]
