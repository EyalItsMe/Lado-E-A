//
//  PopularCollectionViewCell.swift
//  Lado-E-A
//
//  Created by Eyal Perets on 24/04/2020.
//  Copyright © 2020 myapps. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lengthLabel: UILabel!
    @IBOutlet var reviewsLabel: UILabel!
    @IBOutlet var starView: CosmosView? {
        didSet{
            starView?.fillMode = 2
        }
    }
    
}
