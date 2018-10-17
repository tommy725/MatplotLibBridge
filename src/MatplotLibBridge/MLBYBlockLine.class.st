"
A line defined by its x values and a block to generate y-values from x-values.
"
Class {
	#name : #MLBYBlockLine,
	#superclass : #MLBLine,
	#instVars : [
		'x',
		'yBlock'
	],
	#category : 'MatplotLibBridge-API'
}

{ #category : #private }
MLBYBlockLine >> x [
	^ x
]

{ #category : #accessing }
MLBYBlockLine >> x: aSequenceableCollection [
	x := aSequenceableCollection
]

{ #category : #private }
MLBYBlockLine >> y [
	^ self x collect: [ :data | self yBlock value: data ]
]

{ #category : #accessing }
MLBYBlockLine >> yBlock [
	^ yBlock
]

{ #category : #accessing }
MLBYBlockLine >> yBlock: aBlock [
	yBlock := aBlock
]