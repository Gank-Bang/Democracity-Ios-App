//
//  ViewController.swift
//  Democracity
//
//  Created by Rafiq Messai on 01/04/2022.
//

import UIKit

class ConnexionViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var connexionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func pressConnexion(_ sender: Any) {
        
        if(usernameField.text == "admin" && passwordField.text == "admin"){
            print("reussi")
        }
    }
    

}
