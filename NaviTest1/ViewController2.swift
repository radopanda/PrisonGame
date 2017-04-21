//
//  ViewController2.swift
//  NaviTest1
//
//  Created by Naoto Kobayashi on 2015/04/30.
//  Copyright (c) 2015年 Naoto Kobayashi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UIGestureRecognizerDelegate{
    
    var scrollView: UIScrollView!
    //var pageImagesArr = ["sugiki.png","hojo.png","yuki.png"];
    //var pageImagesArr = ["tamaki1.jpg","tamaki2.jpg","tamaki3.jpg"];
    var pageImagesArr = ["image1.jpg","image2.jpg","image3.jpg"];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // シングルタップ

        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target:self, action: #selector(ViewController2.tap(_:)))
        // デリゲートをセット
        tapGesture.delegate = self;
        
        let width = self.view.frame.maxX, height = self.view.frame.maxY
        let pageSize = self.pageImagesArr.count;
        
        //ScrollViewの作成
        scrollView = UIScrollView(frame: self.view.frame)
        scrollView.isPagingEnabled = true
        scrollView.frame = CGRect(x: 0,y: 0,width: width,height: height);
        scrollView.contentSize = CGSize(width: CGFloat(pageSize) * width, height: 0)
        
        //各ページの作成
        for i in 0 ..< pageSize {
            let img:UIImage = UIImage(named:self.pageImagesArr[i])!;
            let iv:UIImageView = UIImageView(image:img);
            iv.frame = CGRect(x: CGFloat(i) * width, y: 0, width: width, height: height);
            scrollView.addSubview(iv)

        }
        self.view.addSubview(scrollView)
        self.view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }

    // タップイベント.
    func tap(_ sender: UITapGestureRecognizer){

        
        print("タップ")
    }

}
