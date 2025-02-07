Class {
	#name : #QuestionTest,
	#superclass : #TestCase,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Tests'
}

{ #category : #setup }
QuestionTest >> setUp [
	question := Question  withTitle: 'Question  title' description: 'Question description' user: (User new)
]

{ #category : #testing }
QuestionTest >> testNegativeVotes [		
	question addVote: (Vote withUser: (User new) dislikesPublication: question).
	self assert: (question negativeVotes size) equals: 1.
	
	question addVote: (Vote withUser: (User new) dislikesPublication: question).
	self assert: (question negativeVotes size) equals: 2.
]

{ #category : #testing }
QuestionTest >> testPositiveAndNegativeVotesInterference [	
	question addVote: (Vote withUser: (User new) dislikesPublication: question).
	self assert: (question positiveVotes size) equals: 0.
	self assert: (question negativeVotes size) equals: 1.
	
	question addVote: (Vote withUser: (User new) likesPublication: question).	
	self assert: (question positiveVotes size) equals: 1.
	self assert: (question negativeVotes size) equals: 1.
	
	self assert: question votes size equals: 2.
]

{ #category : #testing }
QuestionTest >> testPositiveVotes [
	question addVote: (Vote withUser: (User new) likesPublication: question).	
	self assert: (question positiveVotes size) equals: 1.
	
	question addVote: (Vote withUser: (User new) likesPublication: question).	
	self assert: (question positiveVotes size) equals: 2.

]

{ #category : #testing }
QuestionTest >> testVotesForNewQuestion [
	self assert: (question negativeVotes size) equals: 0.
	self assert: (question positiveVotes size) equals: 0.
]
