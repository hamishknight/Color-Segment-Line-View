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
        
        let lineView = LineView()
        lineView.frame = CGRectMake(50, 50, 20, view.bounds.size.height-100)
        view.addSubview(lineView);
        
        
        lineView.colors = [UIColor(red: 122.0/255.0, green: 108.0/255.0, blue: 1.0, alpha: 1.0),
                           UIColor(red: 100.0/255.0, green: 241.0/255.0, blue: 183.0/255.0, alpha: 1.0),
                           UIColor(red: 0.0, green: 222.0/255.0, blue: 1.0, alpha: 1.0)]
        lineView.values = [0.35, 0.45, 0.2]
        
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

