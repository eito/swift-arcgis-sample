//
//  ViewController.swift
//  swift-arcgis-sample
//
//  Created by Eric Ito on 9/5/14.
//  Copyright (c) 2014 Esri. All rights reserved.
//

import UIKit
import ArcGIS

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var mapView = AGSMapView(frame: view.bounds)
        mapView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        mapView.addMapLayer(AGSOpenStreetMapLayer())
        view.addSubview(mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

