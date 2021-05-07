Class {
	#name : #NewsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsQuestionRetriever >> retrieveQuestions: aUser [
	^self retrieveQuestions: aUser onQuestions: cuoora todayQuestinos

]
