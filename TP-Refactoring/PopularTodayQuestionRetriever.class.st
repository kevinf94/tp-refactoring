Class {
	#name : #PopularTodayQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
PopularTodayQuestionRetriever >> typeOfQuestions: aUser [

	^ cuoora popularQuestions
]
