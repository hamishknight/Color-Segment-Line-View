//
//  ViewController.swift
//  Line View
//
//  Created by Hamish Knight on 13/02/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lineView = LineView(frame: CGRectMake(50, 50, 20, view.bounds.size.height-100))
        
        lineView.colors = [
            UIColor(red: 1.0, green: 31.0/255.0, blue: 73.0/255.0, alpha: 1.0), // red
            UIColor(red:1.0, green: 138.0/255.0, blue: 0.0, alpha:1.0), // orange
            UIColor(red: 122.0/255.0, green: 108.0/255.0, blue: 1.0, alpha: 1.0), // purple
            UIColor(red: 0.0, green: 100.0/255.0, blue: 1.0, alpha: 1.0), // dark blue
            UIColor(red: 100.0/255.0, green: 241.0/255.0, blue: 183.0/255.0, alpha: 1.0), // green
            UIColor(red: 0.0, green: 222.0/255.0, blue: 1.0, alpha: 1.0) // blue
        ]
        lineView.values = [0.15, 0.1, 0.35, 0.15, 0.1, 0.15]
        
        view.addSubview(lineView);

        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
       // lineView.values = [0.1, 0.2, 0.6]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}

