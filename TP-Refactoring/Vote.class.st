Class {
	#name : #Vote,
	#superclass : #Object,
	#instVars : [
		'isLike',
		'timstamp',
		'publication',
		'user'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Vote class >> withUser: aUser dislikesPublication: aPublication [
	^ self new withUser: aUser isLike: false publication: aPublication; yourself
		
]

{ #category : #'instance creation' }
Vote class >> withUser: aUser likesPublication: aPublication [
	^ self new withUser: aUser isLike: true publication: aPublication; yourself
]

{ #category : #private }
Vote >> dislike [
	isLike := false.
]

{ #category : #initialize }
Vote >> initialize [
	isLike := true.
	timstamp := DateAndTime now.
]

{ #category : #accessing }
Vote >> isLike [
	^ isLike
]

{ #category : #private }
Vote >> like [
	isLike := true.
]

{ #category : #accessing }
Vote >> publication [
	^ publication
]

{ #category : #deprecated }
Vote >> publication: anObject [
	publication := anObject
]

{ #category : #accessing }
Vote >> user [
	^ user
]

{ #category : #deprecated }
Vote >> user: anObject [
	user := anObject
]

{ #category : #private }
Vote >> withUser: aUser isLike: aBoolean publication: aPublication [
	user := aUser.
	isLike := aBoolean.
	publication := aPublication.
]
