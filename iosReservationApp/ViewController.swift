//
//  ViewController.swift
//  iosReservationApp
//
//  Created by Nakano Taiga on 2020/08/03.
//  Copyright © 2020 Taiga. All rights reserved.
//


import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var browserWebView: WKWebView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let urlString = "https://hairsalon-reservation.herokuapp.com/"
        
        let urlRequest = URLRequest(url: URL(string: urlString)!)
        
        self.browserWebView.load(urlRequest)
    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
     browserWebView.goBack()
    }
    @IBAction func goForward(_ sender: UIBarButtonItem) {
        self.browserWebView.goForward()
    }
    @IBAction func reload(_ sender: UIBarButtonItem) {
        self.browserWebView.reload()
    }
}
