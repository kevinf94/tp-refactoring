Class {
	#name : #SocialQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
SocialQuestionRetriever >> followingQuestionsOfUser: aUser [
	^aUser following flatCollect: [ :follow | follow questions ]
]

{ #category : #retrieving }
SocialQuestionRetriever >> retrieveQuestions: aUser [
	^self retrieveQuestions: aUser onQuestions: (self followingQuestionsOfUser: aUser).
	

]
