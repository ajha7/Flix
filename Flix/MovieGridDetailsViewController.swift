//
//  MovieGridDetailsViewController.swift
//  Flix
//
//  Created by Anshul Jha on 2/17/21.
//

import UIKit

class MovieGridDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        posterView.isUserInteractionEnabled = true
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as? String
        var backdropUrl = URL(string:"default")
        if let backdropPath = backdropPath {
             backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        }
        else {
             backdropUrl = URL(string: "https://www.worldtrendsmart.com/content/images/default-image.png")
        }
        backdropView.af_setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
    }
    

        // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let movieId = movie["id"] as? Int
        
        let trailerUrl =
            URL(string:"https://api.themoviedb.org/3/movie/" + String(movieId!) + "/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&language=en-US")
        
        let trailerWebViewController = segue.destination as! TrailerWebViewController
        trailerWebViewController.trailerUrl = trailerUrl
    }
    

}
