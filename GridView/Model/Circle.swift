//
//  Circle.swift
//  GridView
//
//  Created by Feng Chang on 10/4/20.
//

import Foundation
import UIKit

struct Circle {
    var title: String
    var image: UIImage
}

extension Circle {
    static let dummyCircles: [Circle] = [
        Circle(title: "cash", image: UIImage(named: "ic-cash")!),
        Circle(title: "gtc", image: UIImage(named: "ic-gtc")!),
        Circle(title: "hedged", image: UIImage(named: "ic-hedged")!),
        Circle(title: "open", image: UIImage(named: "ic-open")!)
//        Circle(title: "cash", image: UIImage(named: "ic-cash")!),
//        Circle(title: "gtc", image: UIImage(named: "ic-gtc")!),
//        Circle(title: "hedged", image: UIImage(named: "ic-hedged")!),
//        Circle(title: "open", image: UIImage(named: "ic-open")!),
//        Circle(title: "cash", image: UIImage(named: "ic-cash")!),
//        Circle(title: "gtc", image: UIImage(named: "ic-gtc")!),
//        Circle(title: "hedged", image: UIImage(named: "ic-hedged")!),
//        Circle(title: "open", image: UIImage(named: "ic-open")!)
    ]
    
    static let cash = Circle(title: "cash", image: UIImage(named: "ic-cash")!)
    static let gtc = Circle(title: "gtc", image: UIImage(named: "ic-gtc")!)
    static let hedged = Circle(title: "hedged", image: UIImage(named: "ic-hedged")!)
    static let open = Circle(title: "open", image: UIImage(named: "ic-open")!)
}
