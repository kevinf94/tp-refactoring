Class {
	#name : #SocialQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
SocialQuestionRetriever >> typeOfQuestions: aUser [

	^ aUser followingQuestions
]
