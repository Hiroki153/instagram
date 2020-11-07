//
//  PostViewController.swift
//  Instagram
//
//  Created by 仲井宏紀 on 2020/10/25.
//  Copyright © 2020 hiroki.nakai. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class PostViewController: UIViewController {
    var image: UIImage!

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    
    //投稿ボタンをタップした時に呼ばれるメソッド
    @IBAction func handlePostButton(_ sender: Any) {
    }
    
    //キャンセルボタンをタップした時に呼ばれるメソッド
    @IBAction func handleCancelButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //受け取った画像をImageViewに設定する
        imageView.image = image

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
