//
//  LoginViewController.swift
//  Instagram
//
//  Created by 仲井宏紀 on 2020/10/25.
//  Copyright © 2020 hiroki.nakai. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var mailAdressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var displayNameTextField: UITextField!
    
    //ログインボタンをタップした時に呼ばれるメソッド
    @IBAction func handleLoginButton(_ sender: Any) {
    }
    
    //アカウント作成ボタンをタップした時に呼ばれるメソッド
    @IBAction func handleCreateAccountButton(_ sender: Any) {
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
