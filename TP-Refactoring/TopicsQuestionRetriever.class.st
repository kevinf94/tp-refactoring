Class {
	#name : #TopicsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
TopicsQuestionRetriever >> typeOfQuestions: aUser [
	
	^ aUser interestedTopicsQuestions
]
