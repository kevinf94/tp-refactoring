Class {
	#name : #Topic,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'intance creation' }
Topic class >> withName: aNameString description: aDescriptionString [
	^ self new withName: aNameString description: aDescriptionString; yourself
]

{ #category : #accessing }
Topic >> addQuestion: aQuetion [
	questions add: aQuetion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #deprecated }
Topic >> description: aDescriptionString [
	description := aDescriptionString
]

{ #category : #initialize }
Topic >> initialize [
	questions := OrderedCollection new.
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #deprecated }
Topic >> name: aNameString [
	name := aNameString
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]

{ #category : #private }
Topic >> withName: aNameString description: aDescriptionString [
	name := aNameString.
	description := aDescriptionString.
]
