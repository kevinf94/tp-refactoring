Class {
	#name : #SocialQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
SocialQuestionRetriever >> typeOfQuestions: aUser [

	^ aUser followingQuestions
]
