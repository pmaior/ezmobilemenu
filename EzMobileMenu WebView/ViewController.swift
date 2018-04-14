//
//  ViewController.swift
//  EzMobileMenu WebView
//
//  Created by Pablo Maiorino on 4/14/18.
//  Copyright © 2018 Pablo Maiorino. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{
  //  var delegate: UIWebViewDelegate
    var webView : WKWebView!
  //  var canGoBack: Bool
  //  var canGoForward: Bool
  //
    
    override func loadView() {
        //let webConfiguration = WKWebViewConfiguration()
       // webView = WKWebView(frame: .zero, configuration: webConfiguration)
       //     webView.uiDelegate = self
        // view = webView
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    @IBOutlet weak var navBar: UINavigationItem!
    
    
    @IBOutlet weak var mainWebViiew: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myUrl = URL(string: "https://ezmobilemenu.com")
        let myRequest = URLRequest(url: myUrl!)
         webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
   
    }
  
    
    @IBAction func backTapped(_ sender: Any) {
       if webView.canGoBack{
            webView.goBack()    }
    }
    
    @IBAction func fwdTapped(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    
    @IBAction func refreshTapped(_ sender: Any) {
  webView.reload()
    }
   
    @IBAction func homeTapped(_ sender: Any) {
        let myUrl = URL(string: "https://ezmobilemenu.com")
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
    }
}

