# [#7856](https://code.google.com/p/gmaps-api-issues/issues/detail?id=7856) Map UI isn't responsive sometimes?

This project is an attempt to replicate the issue documented at:
[gmaps-api-issues/7856](https://code.google.com/p/gmaps-api-issues/issues/detail?id=7856)

I'm not seeing it yet. Please fork this repro, and modify it until it
displays the unresponsive Map UI, and send me a Pull Request with the changes.

To get this sample to work, first clone the repo in GitHub and checkout
your clone:

    $ git clone https://github.com/YOUR-USER-NAME/MovingMarkerPosition.git

Move inside the project:

    $ cd MovingMarkerPosition

Download the dependencies:

    $ pod update

Obtain an [API key](https://developers.google.com/maps/documentation/ios/start#obtaining_an_api_key)
and add the resulting API key to the `AppDelegate.m` file:

    $ vim MovingMarkerPosition/AppDelegate.m

Open the project:

    $ open DistortedGMSGroundOverlay.xcworkspace

Edit the resulting project in Xcode until you have the effect you are after,
add the changes and issue a pull request:

    $ git add file-changes.swift
    $ git commit
    $ git push

Thanks!
