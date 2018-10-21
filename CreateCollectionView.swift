//////
//////  CreateCollectionView.swift
//////  CircleCollectionView
//////
//////  Created by yodaaa on 2018/10/21.
//////
////

import UIKit

//public class CreateCollectionView:  UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
//    var collectionlabellist: CollectionList
//
//    public init(collectionview: UICollectionView, list: Array<String>){
//        collectionview.delegate = self
//        collectionview.dataSource = self
//        collectionview.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
//
//        collectionlabellist = CollectionList.init(icon_name: list[0], label: list[1])
//
//    }
//
//    required public init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

public class CustomLayout: UICollectionViewFlowLayout {
    public override init() {
        super.init()
        itemSize = CGSize(width: 80, height: 100)
        scrollDirection = .horizontal
        sectionInset = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 20.0)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
