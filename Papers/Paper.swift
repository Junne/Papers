//
//  Paper.swift
//  Papers
//
//  Created by Junne on 1/16/16.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class Paper: NSObject {

    var caption: String
    var imageName: String
    var section: String
    var index: Int
    
    init(caption: String, imageName:String, section: String, index: Int) {
        self.caption = caption
        self.imageName = imageName
        self.section = section
        self.index = index
    }
    
    convenience init(copying paper:Paper) {
        self.init(caption: paper.caption, imageName: paper.imageName, section: paper.section, index: paper.index)
    }
}
