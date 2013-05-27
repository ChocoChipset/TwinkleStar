# TwinkleStar [![Build Status](https://travis-ci.org/Hecktorzr/TwinkleStar.png)](https://travis-ci.org/Hecktorzr/TwinkleStar)

iOS Library to handle device's LED through a convenient singleton.

Usage
-----

1. Import the **'AVFoundation'** framework to your project. 

2. Turn the lights of your iPhone on and off using the methods of the singleton:

    ````objective-c
    self.twinkleStar = [HZTwinkleStar sharedTwinkleStar];

    [self.twinkleStar turnFlashLEDOn];

    [self.twinkleStar turnFlashLEDOff];
    ````

3. By default, the LED is turned in a continuos fashion, but the class provides the property, *flashFrequency*, which enables a **strobe-on-and-off-mayhem**. 

    ````objective-c
    self.twinkleStar.flashFrequency = 10.0 // 10 Hz strobe
    ````

4. Use this same class to determine if the running device has an integrated Flash LED.

    ````
    if ([self.twinkleStar isFlashLEDAvailable])
    {
       /// ...
    }	    	            
    ````

5. Defeat darkness.

Contribution
------------
Yes, please. Feel free to fork, raise issues and send pull requests.

Contact
-------
* Hector Zarate ([@hecktorzr](https://twitter.com/hecktorzr))

License
-------
Available under the MIT License. See LICENSE for more info.
