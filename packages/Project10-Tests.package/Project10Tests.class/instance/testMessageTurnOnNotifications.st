as yet unclassified
testMessageTurnOnNotifications
	"comment stating purpose of message"
	|countDeferredUIMessages|	
	Snarl turnOn.
	countDeferredUIMessages := WorldState deferredUIMessages size..
	Snarl label:'Test' body:'Test'.
	self assert: countDeferredUIMessages+1 equals: WorldState deferredUIMessages size.
		
	
	