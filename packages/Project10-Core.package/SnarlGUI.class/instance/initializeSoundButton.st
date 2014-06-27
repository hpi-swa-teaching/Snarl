initialization
initializeSoundButton
	|sideLenght distanceWindowToSoundButton distanceTitleToSoundButton|
	
	sideLenght := (images at: 'speaker') width +10.
	distanceWindowToSoundButton := 10.
	distanceTitleToSoundButton := 5.
	
	soundButton := SimpleButtonMorph new label: ''.
	soundButton color: self defaultColor.
	soundButton width: sideLenght; height: sideLenght.
	soundButton left: self left + distanceWindowToSoundButton.
	soundButton top: title bottom + distanceTitleToSoundButton.
	self initializeSoundImages.
	soundButton on: #mouseDown send: #value to: [self toggleSound].
	self addMorph: soundButton.