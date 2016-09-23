//
//  ViewController.swift
//  NavigationExample
//
//  Created by Infraestructura on 23/09/16.
//  Copyright © 2016 Nitrogena. All rights reserved.
//

import UIKit

//: extiende, hereda de UIViewController

class ViewController: UIViewController {
    
    //variable global
    @IBOutlet weak var Label1: UILabel!
    
    //especificacion del storage es weak, no es mio, alguien lo tiene referenciado
    // : tipoDato
    //  ! opcional imperativo, no va a ser nulo seguramente
    //   ? puede ser nulo
    
    
    // cuando regresen algo se pondra despues de los parentesis
    //-> tipoRegresado
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Ya se cargo la vista
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.Label1.font = UIFont(name: "Jurassic Park", size: 70.0)
        self.Label1.text = NSLocalizedString("Titulo_pantalla_inicial", comment: "")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

