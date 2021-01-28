//
//  ViewController.swift
//  Aprendiendo
//
//  Created by Juanse Vargas on 2/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Referencias UI
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonAction()
    {
        // 1. Obtener los valores de los text field.
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if email == "carlos@mejia.com", password == "123"
        {
            performSegue(withIdentifier: "home_segue", sender: nil) // Si entra a este if entonces ejecuta la conexión con id home_segue
        }else{
            print("Credenciales inválidas")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

