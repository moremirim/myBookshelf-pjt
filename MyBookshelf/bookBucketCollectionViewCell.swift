//
//  bookBucketCollectionViewCell.swift
//  MyBookshelf
//
//  Created by 박미림 on 5/9/24.
//

import UIKit

class bookBucketCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "bookBucketCollectionViewCell"
    
    private let titleLabel = UILabel()
    private let priceLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
