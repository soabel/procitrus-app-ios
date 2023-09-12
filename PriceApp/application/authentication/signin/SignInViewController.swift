//
//  SignInViewController.swift
//  PriceApp
//
//  Created by Alfredo Benaute on 1/6/20.
//  Copyright © 2020 Alfredo Benaute. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, SignInView {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var presenter: SignInPresenter?
       
    override func viewDidLoad() {
           super.viewDidLoad()
           
           presenter=SignInPresenter(view: self)

           // Do any additional setup after loading the view.
       }
       

   @IBAction func forgotAction(_ sender: Any) {
       
   }
   
   @IBAction func signinAction(_ sender: Any) {
       
   }
    
    func authorized() {
        performSegue(withIdentifier: "mainSegue", sender: nil)
    }
    
    func showError(description: String) {
        let alertView = UIAlertController(title: "Error", message: description, preferredStyle: .alert)
            
        alertView.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
    
        present(alertView, animated: true, completion: nil)
    }
    

   
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
