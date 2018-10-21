//
//  ViewController.swift
//  CircleCollectionView
//
//  Created by yodaaa on 10/21/2018.
//  Copyright (c) 2018 yodaaa. All rights reserved.
//

import UIKit
import CircleCollectionView

class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionview: UICollectionView!
    let list = CollectionList.CreateCollectionList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        //      collectionview.frame.size.width = UIScreen.main.bounds.size.width
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 80, height: 100)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 20.0)
        collectionview.collectionViewLayout = layout
        
        
        let startColor = UIColor(red:163/255, green:61/255, blue:161/255, alpha:1)
        let endColor = UIColor(red:242/255, green:176/255, blue:95/255, alpha:1)
        let gradientColors: [CGColor] = [startColor.cgColor, endColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.colors = gradientColors
        
        gradientLayer.frame = CGRect(x: 0 , y: 300, width: 100, height: 100)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let Cell:UICollectionViewCell =
        //            collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",
        //                                               for: indexPath)
        let Cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)as! CustomCell
        Cell.setupCell(model: list[indexPath.row])
        
        //        let icon = UIImage(named: "image_icon")
        //        Cell.imagebutton.setImage(icon, for: .normal)
        //        Cell.imagebutton.imageView?.contentMode = .scaleAspectFit
        //        Cell.label.text = list[indexPath.row]
        
        //        let imageView = UIImageView(image: UIImage(named: "image_icon"))
        //        imageView.frame.size = CGSize(width: 50, height: 50)
        //        imageView.isUserInteractionEnabled = true
        //        Cell.addSubview(imageView)
        
        
        //        let imagebutton = Cell.contentView.viewWithTag(1) as! UIButton
        //        let icon = UIImage(named: "image_icon")
        //        imagebutton.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
        //        //imagebutton.setTitle(list[indexPath.row], for: .normal)
        //        imagebutton.setImage(icon, for: .normal)
        //        imagebutton.imageView?.contentMode = .scaleAspectFit
        //        imagebutton.contentHorizontalAlignment = .fill
        //        imagebutton.contentVerticalAlignment = .fill
        //        imagebutton.layer.cornerRadius = 10
        //        imagebutton.layer.borderWidth = 1
        //        let label = Cell.contentView.viewWithTag(2) as! UILabel
        //        label.text = list[indexPath.row]
        
        return Cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath[1])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension UIImage {
    /// Create UIImage of circle.
    ///
    /// - parameter size: Size of output image
    /// - parameter color: Color of the circle
    /// - parameter backgroundColor: Background color of the image
    ///
    /// - returns: The created image. Nil on error.
    static func circle(size: CGSize, color: UIColor, backgroundColor: UIColor = .clear) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, true, UIScreen.main.scale)
        defer {
            UIGraphicsEndImageContext()
        }
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        let frame = CGRect(origin: .zero, size: size)
        context.clear(frame)
        
        // background
        context.setFillColor(backgroundColor.cgColor)
        context.fill(frame)
        
        // circle
        context.setFillColor(color.cgColor)
        context.setLineWidth(0)
        context.addEllipse(in: frame)
        context.fillPath()
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}

