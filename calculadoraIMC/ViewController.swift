//
//  ViewController.swift
//  calculadoraIMC
//
//  Created by James Montoya on 26/03/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import UIKit

// Para desactivar el teclado una vez ha sido utilizado se usan los delegados
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Inicializacion de los componentes hacia su delegado
        peso.delegate=self
        estatura.delegate=self // el objeto delegado es el mismo
    }
    
    //Esta funcion debe ser llamada desde el evento did End on exit para cada textfield que necesite desactivar el teclado
    @IBAction func textFieldDoneEditing(sender: UITextField) {
    
        sender.resignFirstResponder() //Desaparece el teclado
    }
    /*
    //funcion que se utiliza para que cuando se de tap a otra parte de la pantalla se desactive el teclado
    //Para utilizar esta funcion debemos cambiar el tipo de vista a UIControl en la parte de abajo a la izquierda señalamos view y vamos a las propiedades en el cuadro identity inspector y cambiamos la clase por UIControl asi nos habilita los eventos que necesitamos el cual es  Touch down
     */
    @IBAction func backgroundTap(sender: UITextField) {
        // como no se cual teclado esta activo en cual control desactivo los dos
        peso.resignFirstResponder()
        estatura.resignFirstResponder()
    }
    
    
    
    //Funcion para activar el scrol de los controles agrupados para que el teclado no los tape
    @IBAction func textFieldDidBeginEditing(textField: UITextField){
        var punto:CGPoint
        punto=CGPointMake(0, textField.frame.maxY - 50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    //funcion para cuando termine de editar
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
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

