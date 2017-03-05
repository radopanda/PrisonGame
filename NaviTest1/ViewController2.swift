//
//  ViewController2.swift
//  NaviTest1
//
//  Created by Naoto Kobayashi on 2015/04/30.
//  Copyright (c) 2015年 Naoto Kobayashi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
    
    var scrollView: UIScrollView!
    //var pageImagesArr = ["sugiki.png","hojo.png","yuki.png"];
    //var pageImagesArr = ["tamaki1.jpg","tamaki2.jpg","tamaki3.jpg"];
    var pageImagesArr = ["image1.jpg","image2.jpg","image3.jpg"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        // Do any additional setup after loading the view.
    }

//    override func touchesBegan(touches: NSSet, withEvent event: UIEvent){
//        let touch = touches.anyObject()! as UITouch
//        let location = touch.locationInView(view)
//    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
