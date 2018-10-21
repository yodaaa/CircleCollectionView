//
//  CustomCell.swift
//  CircleCollectionView_Example
//
//  Created by yodaaa on 2018/10/21.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    let maxNumString: Int = 7
    
    
    func setupCell(model: CollectionList) {
        let icon = UIImage(named: model.icon_name)
        let scale: CGFloat = 0.8
        
        let resizedSize = CGSize(width: scale*icon!.size.width/(icon!.size.width/100), height: scale*icon!.size.height/(icon!.size.height/100))
        UIGraphicsBeginImageContextWithOptions(resizedSize, false, 0.0)
        draw(CGRect(origin: .zero, size: resizedSize))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        let rect:CGRect = CGRect(x:0, y:0, width:resizedImage!.size.width*scale, height:resizedImage!.size.height*scale)
        iconImageView.center = CGPoint(x: 100/2, y: 100/2)
        iconImageView.image = icon
        
        
        if let text: String = model.label {
            if text.characters.count > maxNumString {
                label.text = text.prefix(maxNumString) + ".."
            }else {
                label.text = text
            }
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        iconImageView.layer.cornerRadius = iconImageView.bounds.width / 2
        iconImageView.layer.borderWidth = 2
        iconImageView.layer.borderColor = UIColor.lightGray.cgColor
        
    }
}

