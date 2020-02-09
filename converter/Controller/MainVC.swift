//
//  ViewController.swift
//  converter
//
//  Created by TAEWON KONG on 12/30/19.
//  Copyright © 2019 TAEWON KONG. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var cellIdentifier = "LabelCollectionViewCell"
    var units: [Unit] = [
        Unit(unitName: "Angle"),
        Unit(unitName: "Area"),
        Unit(unitName: "Bits"),
        Unit(unitName: "Density"),
        Unit(unitName: "Force"),
        Unit(unitName: "Length"),
        Unit(unitName: "Mass"),
        Unit(unitName: "Pressure"),
        Unit(unitName: "Speed"),
        Unit(unitName: "Temperature"),
        Unit(unitName: "Time"),
        Unit(unitName: "Volume")
    ]
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let conversionSegue = "conversionSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.isHidden = true
        setupCollectionView()
    }

    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupCollectionViewItemSize()
    }

    private func setupCollectionViewItemSize() {
        if collectionViewFlowLayout == nil {
            let numberOfItemPerRow: CGFloat = 3
            let lineSpacing: CGFloat = 5
            let interItemSpacing: CGFloat = 5
            let width = (collectionView.frame.width - (numberOfItemPerRow - 1) * interItemSpacing) / numberOfItemPerRow
            let height = width
            collectionViewFlowLayout = UICollectionViewFlowLayout()
            collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout.scrollDirection = .vertical
            collectionViewFlowLayout.minimumLineSpacing = lineSpacing
            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing
            collectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }
}

// MARK: extention of UICollectionViewDelegate, UICollectionViewDataSource
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return units.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! LabelCollectionViewCell
        cell.unitTitle.text = units[indexPath.item].unitName
        cell.symbolImage.image = UIImage(systemName: units[indexPath.item].symbol)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let unit = units[indexPath.item]
        performSegue(withIdentifier: conversionSegue, sender: unit)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let unit = sender as! Unit
        if segue.identifier == conversionSegue {
            if let vc = segue.destination as? conversionVC {
                vc.title = unit.unitName
                vc.unit = unit
            }
        }
    }
}
