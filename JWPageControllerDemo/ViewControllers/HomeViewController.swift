//
//  ViewController.swift
//  JWPageControllerDemo
//
//  Created by Amitai Blickstein on 3/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pagingControllerEmbedSegue",
           let pageVC = segue.destination as? PageViewController {
            // TODO: What is this here for again?
        }
    }

}
