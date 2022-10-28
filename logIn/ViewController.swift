//
//  ViewController.swift
//  logIn
//
//  Created by 4d on 10/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ForgotUsername: UIButton!
    @IBOutlet var ForgotPassword: UIButton!
    @IBOutlet var UserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ForgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsername/Password", sender: sender)
    }
    
    @IBAction func ForgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsername/Password", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = UserName.text
        guard let sender = sender as? UIButton else {return}
        if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == ForgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UserName.text
        }

    }
}

