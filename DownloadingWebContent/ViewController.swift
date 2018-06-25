//
//  ViewController.swift
//  DownloadingWebContent
//
//  Created by Adam Moore on 3/23/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        if let url = URL(string: "http://www.google.com/") {
//            webview.load(URLRequest(url: url))
//        }
        
        print("Anus")
        
//        webview.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)
        
        if let url = URL(string: "https://www.stackoverflow.com") {

            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
                
                if let error = error {
                    
                    print(error)

                } else {
                    
                    if let unwrappedData = data {

                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString!)
                        
                        // This loads after the rest of the program loads, called Asynchronous loading.
                        // To load in order, with this happening before anything else happens, use this:
                        DispatchQueue.main.sync(execute: {
                            
                            // Update UI
                            print("Anus delayed")
                            
                            })
                        
                    }
                    
                }
                
            }
            task.resume()
        }
        
        print("Anus")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

