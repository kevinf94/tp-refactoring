Class {
	#name : #TopicsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicsQuestionRetriever >> retrieveQuestions: aUser [
	^self retrieveQuestions: aUser onQuestions: (self topicQuestionsOfUser: aUser)
]

{ #category : #private }
TopicsQuestionRetriever >> topicQuestionsOfUser: aUser [
	^aUser questionsFromTopics.
]
