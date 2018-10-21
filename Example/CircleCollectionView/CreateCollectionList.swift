//
//  CreateCollectionList.swift
//  CircleCollectionView_Example
//
//  Created by yodaaa on 2018/10/21.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

struct CollectionList {
    let icon_name: String
    let label: String
    
    static func CreateCollectionList() -> [CollectionList] {
        return [
            CollectionList(icon_name: "image_icon", label: "aaaaaaa"),
            CollectionList(icon_name: "image_icon", label: "bbbbbbbb"),
            CollectionList(icon_name: "image_icon", label: "c"),
            CollectionList(icon_name: "image_icon", label: "d"),
            CollectionList(icon_name: "image_icon", label: "e"),
        ]
    }
}
