Class {
	#name : #NewsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
NewsQuestionRetriever >> typeOfQuestions: aUser [

	^ cuoora todayQuestions	
]
