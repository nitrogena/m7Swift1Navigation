//
//  ViewController2.swift
//  NavigationExample
//
//  Created by Infraestructura on 23/09/16.
//  Copyright © 2016 Nitrogena. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBAction func botonReturn(sender: AnyObject) {
            self.dismissViewControllerAnimated(true, completion: nil)
        //completion, pones el bloque que quieres que se haga 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
