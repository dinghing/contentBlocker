//
//  ViewController.swift
//  contentBlocker
//
//  Created by ding qi on 2019/07/03.
//  Copyright © 2019 ding qi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initImageView()
    }

    private func initImageView(){
        // UIImage インスタンスの生成
        let image1:UIImage = UIImage(named:"setting")!
        
        // UIImageView 初期化
        let imageView = UIImageView(image:image1)
        
        // スクリーンの縦横サイズを取得
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
        // 画像の縦横サイズを取得
        let imgWidth:CGFloat = image1.size.width
        let imgHeight:CGFloat = image1.size.height
        
        // 画像サイズをスクリーン幅に合わせる
        let scale:CGFloat = screenWidth / imgWidth
        let rect:CGRect =
            CGRect(x:0, y:0, width:imgWidth*scale, height:imgHeight*scale*1.1)
        // ImageView frame をCGRectで作った矩形に合わせる
        imageView.frame = rect;
        
        // 画像の中心を画面の中心に設定
        imageView.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        
        // UIImageViewのインスタンスをビューに追加
        self.view.addSubview(imageView)
        
    }
}

