Class {
	#name : #TopicsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
TopicsQuestionRetriever >> typeOfQuestions: aUser [
	
	^ aUser interestedTopicsQuestions
]
