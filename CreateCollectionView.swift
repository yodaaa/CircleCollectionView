//
//  CreateCollectionView.swift
//  CircleCollectionView
//
//  Created by yodaaa on 2018/10/21.
//

public class CreateCollectionView:  UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    public init(collectionview: UICollectionView){
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

    
    
}
