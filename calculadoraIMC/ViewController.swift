//
//  ViewController.swift
//  calculadoraIMC
//
//  Created by James Montoya on 26/03/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcular(sender: AnyObject) {
        
        var IMC:Double
        
        let pesoLocal:Double?
        let estaturaLocal:Double?
        
        pesoLocal = Double(self.peso.text!)!
        estaturaLocal = Double(self.estatura.text!)!
        
        IMC = pesoLocal!/(estaturaLocal!*estaturaLocal!)
        
        print("Resultado \(IMC)")
    }

}

