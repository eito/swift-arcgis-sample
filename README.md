This sample app demonstrates the configuration of a Swift app using the ArcGIS Runtime SDK for iOS. You can either take this and run with it, or follow the steps below to create your own from scratch.


Prerequisites:
=============
[ArcGIS Runtime SDK for iOS v10.2.3](https://developers.arcgis.com/ios/) 

- Install the SDK and then download and run the script from [here](https://gist.github.com/eito/ffe93eab4308a2e51324). This script will allow the ArcGIS framework to be imported from Swift.

Application Configuration
=========================
- Open Xcode 6 Beta (7 at time of writing) and create a new project ensuring the language is set to Swift.

![](/../screenshots/screenshots/ss1.png?raw=true)

- Next we will configure the application to use the ArcGIS framework. Select your application target and then the "Build Settings" pane. We will be adding `Other Linker Flags` as well as `Framework Search Paths` to our project configuration. Add all of the following in bold below.

![](/../screenshots/screenshots/ss2.png?raw=true)

- At this point we can start to add some code. Open ViewController.swift in your application and add an `import ArcGIS` at the top of the file after the `import UIKit` line. This exposes the ArcGIS objects to your ViewController. 
- Once you have imported the framework, move to the `viewDidLoad` method and add the following code
```swift
var mapView = AGSMapView(frame: view.bounds)
mapView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
mapView.addMapLayer(AGSOpenStreetMapLayer())
view.addSubview(mapView)
```
Your ViewController.swift file should now look like the following: 
![](/../screenshots/screenshots/ss3.png?raw=true)

- At this point you can Build and Run your application and you should see something like the following depending on which device you have selected
![](/../screenshots/screenshots/ss4.png?raw=true)

- Go build a cool mapping app!
