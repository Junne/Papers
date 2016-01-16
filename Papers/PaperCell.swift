//
//  PaperCell.swift
//  Papers
//
//  Created by Junne on 1/16/16.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class PaperCell: UICollectionViewCell {
    
    @IBOutlet private weak var paperImageView: UIImageView!
    @IBOutlet private weak var gradientView: GradientView!
    @IBOutlet private weak var captionLabel: UILabel!
    
    var paper: Paper? {
        didSet {
            if let paper = paper {
                paperImageView.image = UIImage(named: paper.imageName)
                captionLabel.text = paper.caption
            }
        }
    }
    
}
