//
//  CommentInputViewController.swift
//  Instagram
//
//  Created by 仲井宏紀 on 2020/11/15.
//  Copyright © 2020 hiroki.nakai. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class CommentInputViewController: UIViewController {
    
    @IBOutlet weak var commentField: UITextField!
    
    var id: String = ""
    
    
    //キャンセルボタンをタップした時に呼ばれるメソッド
    @IBAction func commentCancelButton(_ sender: Any) {
        //投稿画像一覧画面に戻る
        self.dismiss(animated: true, completion: nil)
    }
    
    //投稿ボタンをタップした時に呼ばれるメソッド
    @IBAction func commentPostButton(_ sender: Any) {
        // HUDで投稿処理中の表示を開始
        SVProgressHUD.show()
        // FireStoreに投稿データを保存する
        let name = Auth.auth().currentUser?.displayName
        // 更新データを作成する
        var updateValue: FieldValue
        let comment = self.commentField.text!
        // コメントを追加した場合はデータを更新する
        updateValue = FieldValue.arrayUnion(["\(name!):\(comment)"])
                   
        // commentsに更新データを書き込む
        let postRef = Firestore.firestore().collection(Const.PostPath).document(id)
                   postRef.updateData(["comments": updateValue])

        // HUDで投稿完了を表示する
        SVProgressHUD.showSuccess(withStatus: "投稿しました")
        // 投稿処理が完了したので先頭画面に戻る
        UIApplication.shared.windows.first{ $0.isKeyWindow }?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }
        

    override func viewDidLoad() {
        super.viewDidLoad()
        //受け渡されたデータの受け取り

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
