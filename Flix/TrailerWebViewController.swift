//
//  TrailerWebViewController.swift
//  Flix
//
//  Created by Anshul Jha on 2/18/21.
//

import UIKit
import WebKit

class TrailerWebViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    var trailerUrl: URL!
    var movie: [[String: Any]]!
    
    override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = trailerUrl!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
              let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
              // TODO: Get the array of movies
              // TODO: Store the movies in a property to use elsewhere
              // TODO: Reload your table view data
              self.movie = dataDictionary["results"] as! [[String:Any]]
            
              self.loadWebView()
           }
        }
        task.resume()
    }
    
    func loadWebView()
    {
        let movieKey = movie[0]["key"]
        let myURL = URL(string:"https://www.youtube.com/watch?v=\(movieKey!)")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
