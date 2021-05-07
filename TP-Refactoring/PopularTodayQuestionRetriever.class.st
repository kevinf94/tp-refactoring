Class {
	#name : #PopularTodayQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularTodayQuestionRetriever >> avarageVotes [
	^self totalPositiveVotes / cuoora todayQuestinos size
]

{ #category : #'as yet unclassified' }
PopularTodayQuestionRetriever >> popularQuestionsOverAvarage: anInteger [
	^cuoora todayQuestinos select: [ :q | q positiveVotes size >= anInteger ]
]

{ #category : #retrieving }
PopularTodayQuestionRetriever >> retrieveQuestions: aUser [
	^self retrieveQuestions: aUser onQuestions: (self popularQuestionsOverAvarage: self avarageVotes)
	
]

{ #category : #private }
PopularTodayQuestionRetriever >> totalPositiveVotes [
	^cuoora questions sum: [ :q | q positiveVotes size ]
]
