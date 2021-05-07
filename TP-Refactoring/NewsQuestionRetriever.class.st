Class {
	#name : #NewsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
NewsQuestionRetriever >> typeOfQuestions: aUser [

	^ cuoora todayQuestions	
]
