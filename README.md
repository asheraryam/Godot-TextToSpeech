#Godot-TextToSpeech
- Text-To-Speech support on Godot engine for Android, using the google speech api (https://github.com/okamstudio/godot)

- Godot version 2.0 stable.

- Copyright [TeamKrishna](http://teamkrishna.in)

##How to use
- Drop the texttospeech folder inside godot/modules

- Move the textotospeech/GodotTextToSpeech.java to godot/platform/android/java/src/org/godotengine/godot

- Import the texttest example project in Godot for a test run. Type the text in the text box and click the 'Speak' button.  [ Not a great UI. Just functionality demonstration ]


**Note:** The texttospeech/android.jar is taken from  *android-sdk-linux/platforms/android-19*. You may choose to use any other api version.

###Compile
1. #> scons platform=android
2. cd godot/platform/android/java
3. #> ./gradlew build
4. The resulting apk will be available at godot/platform/android/java/build/outputs/apk
 
###Configure
Add the following in the engine.cfg file:

> [android]

> modules="org/godotengine/godot/GodotTextToSpeech"

**Use them in the script:**

> var singleton = Globals.get_singleton("GodotTextToSpeech")

> singleton.fireTTS() # fires up the TextToSpeech engine

> singleton.speakText() # speaks up the Text passed 

###Build the game apk
From the settings of the godot engine UI:

> Export->Target->Android


Custom Package (Debug/Release): 
> Point to the newly built apk


####License
MIT

Other plugins: 
- [GodotVibrate](https://github.com/literaldumb/GodotVibrate) 
- [Godot-SpeechToText](https://github.com/literaldumb/Godot-SpeechToText)

