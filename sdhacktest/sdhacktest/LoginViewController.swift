//
//  LoginViewController.swift
//  sdhacktest
//
//  Created by Abrar on 10/1/16.
//  Copyright © 2016 Emanuel Azage. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addGifBackground()
        
        let imageName = "taskking.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 62, y: 0, width: 240, height: 200)
        imageView.tintColor = UIColor.black
        self.view.addSubview(imageView)
        
        let loginBtn = UIButton(frame: CGRect(x: 62, y: 420, width: 240, height: 40))
        loginBtn.layer.borderColor = UIColor.white.cgColor
        loginBtn.layer.borderWidth = 2
        loginBtn.titleLabel!.font = UIFont.systemFont(ofSize: 24)
        loginBtn.tintColor = UIColor.white
        loginBtn.setTitle("Login", for: UIControlState.normal)
        self.view.addSubview(loginBtn)
        
        let signupBtn = UIButton(frame: CGRect(x: 62, y: 500, width: 240, height: 40))
        signupBtn.layer.borderColor = UIColor.white.cgColor
        signupBtn.layer.borderWidth = 2
        signupBtn.titleLabel!.font = UIFont.systemFont(ofSize: 24)
        signupBtn.tintColor = UIColor.white
        signupBtn.setTitle("Sign Up", for: UIControlState.normal)
        self.view.addSubview(signupBtn)
        
      
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    func addGifBackground() -> Void
    {
        //load the gif
        let filePath = Bundle.main.path(forResource: "ZYXbnnV", ofType: "gif")
        let gif = NSData(contentsOfFile: filePath!)
        
        let webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.load(gif! as Data, mimeType: "image/gif", textEncodingName: String(), baseURL: NSURL() as URL)
        webViewBG.isUserInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        
        let filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.black
        filter.alpha = 0.05
        self.view.addSubview(filter)
        
            }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
