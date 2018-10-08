//
//  Sample3VC.swift
//  FAShimmerViews
//
//  Created by Fahad Attique on 02/10/2018.
//  Copyright © 2018 Fahid Attique. All rights reserved.
//

import UIKit

class Sample3VC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    // MARK: - Class Properties
    
    fileprivate let identifier = "shimmerCell"
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfigurations()
    }
    
    // MARK: - Functions
    
    func viewConfigurations() {
        collectionView.register(UINib(nibName: "SampleShimmerCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: identifier)
    }
}

extension Sample3VC: UICollectionViewDataSource {
    
    // MARK:- UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! SampleShimmerCollectionViewCell1
    }
}

extension Sample3VC: UICollectionViewDelegate {
    
    // MARK:- UICollectionViewDelegate
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
}

extension Sample3VC: UICollectionViewDelegateFlowLayout {
    
    // MARK:- UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {        
        let width = (UIScreen.main.bounds.size.width - 60) / 2
        var height: CGFloat = 0.0
        
        if DeviceType.IS_IPHONE_5 || DeviceType.IS_IPHONE_4_OR_LESS { height = 160.0 }
        else { height = width - 8 }
        
        return CGSize(width: width, height: height)
    }
}
