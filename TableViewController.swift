//
//  TableViewController.swift
//  NavigationExample
//
//  Created by Infraestructura on 24/09/16.
//  Copyright © 2016 Nitrogena. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //hereda de UITableViewController

    //DECLARAMOS ARRAY, SIGNO DE INTERROGACION PARA NO INICIALIZARLA AQUI
    var elArreglo:NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.elArreglo = ["Bebidas", "Sopas", "Entradas", "Plato fuerte", "Postre"]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool){
        //CUANDO ESTE A PUNTO DE APARECER
        self.navigationItem.title = "COMIDA"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    //METODOS REQUERIDOS

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //VA A TENER UNA SECCION LA CUAL PUEDE TENER VARIAS FILAS O CELDAS, NO EXISTEN COLUMNAS
        return 1
    }

    //PUEDO TENER MUCHOS tableView, para las ipad
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //SIGNO DE ADMIRACION PORQUE YA SE QUE LA VARIABLE EXISTE, Y ES EL NUMERO DE FILAS QUE VOY A TENER
        return self.elArreglo!.count
    }

    /**/
    //SECCION Y FILA, CONTIENE EL indexPath 
    //LAS VARIABLES SE PUEDEN DECLARAR CON LET, PERO SON INMUTABLES, TOMARA UN VALOR QUE YA NO SE PUEDE REMPLAZAR
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellForReuse", forIndexPath: indexPath)
        //cellForReuse SE COLOCA EN STORYBOARD COMO EL IDENTIFICADOR DE LA CELDA
        //TIENES CELDAS QUE SE PUEDEN REUTILIZAR?
        
        
        // Configure the cell...
        //as! LOS ARREGLOS PUEDEN TENER LO QUE SE QUIERA, COMBINADOS, ESTOY SEGURO QUE SE PUEDE CONVERTIR A STRING
        cell.textLabel!.text = (self.elArreglo![indexPath.row] as! String)
        return cell
    }
    /**/

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
