//
//  GridCollectionView.swift
//  GridView
//
//  Created by Feng Chang on 10/4/20.
//

import UIKit

class GridCollectionView: UIView {

    @IBOutlet var collectionView: UICollectionView!
    
    var estimateWidth = 80
    var cellMarginSize = 0
    
    class func loadFromNib() -> GridCollectionView {
        let view = UINib(nibName: "GridCollectionView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! GridCollectionView
        view.setupUI()
        
        return view
    }
    
    public func setupUI() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        // Register cells
        self.collectionView.register(UINib(nibName: "GridCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GridCollectionViewCell")
        
        // Setup Grid View
        self.setupGridView()
    }
    
    func setupGridView() {
        let flow = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumInteritemSpacing = CGFloat(self.cellMarginSize)
        flow.minimumLineSpacing = CGFloat(self.cellMarginSize)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
}

extension GridCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Circle.dummyCircles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCollectionViewCell", for: indexPath) as! GridCollectionViewCell
        cell.setup(Circle.dummyCircles[indexPath.row])
        
        return cell
    }
}

extension GridCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 80, height: 50)
        } else if indexPath.row == 1 {
            return CGSize(width: 70, height: 50)
        } else if indexPath.row == 2 {
            return CGSize(width: 50, height: 50)
        } else {
            return CGSize(width: 100, height: 50)
        }
    }
}
