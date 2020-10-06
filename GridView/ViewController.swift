//
//  ViewController.swift
//  GridView
//
//  Created by Feng Chang on 10/4/20.
//

import UIKit

enum LayoutOption {
    case list
    case smallGrid
    case largeGrid
}

class ViewController: UIViewController {
    
    @IBOutlet var containerView: UIView!
    
    private let circles = Circle.dummyCircles

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    func setupUI() {
        let view = GridCollectionView.loadFromNib()
        view.frame = self.containerView.bounds
        self.containerView.addSubview(view)
    }
}

