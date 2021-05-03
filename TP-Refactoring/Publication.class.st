Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Publication >> description [
	^ description
]

{ #category : #initialization }
Publication >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #accessing }
Publication >> negativeVotes [
	^votes reject: [ :aVote | aVote isLike ]
]

{ #category : #accessing }
Publication >> positiveVotes [
	^votes select: [ :aVote | aVote isLike ]
]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]

{ #category : #private }
Publication >> withDescription: aDescriptionString user: aUser [
	description := aDescriptionString.
	user := aUser.
]
