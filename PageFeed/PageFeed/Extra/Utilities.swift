//
//  Utilities.swift
//  PageFeed
//
//  Created by Daniil Kornilov on 10/4/21.
//

import UIKit

class Utilities {
    
    func getTextAndImageForComment(comments:String?) -> NSAttributedString {
        
        let fullString = NSMutableAttributedString(string: "Comments: \(comments ?? "")  ")
        let commentsImage = NSTextAttachment()

        commentsImage.image = UIImage(systemName: "bubble.right.fill", withConfiguration:.none)
        
        let commentsAndString = NSAttributedString(attachment: commentsImage)

        fullString.append(commentsAndString)

        return fullString
    }

    func getTextAndImageForScore(score:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "\(score ?? "") ")
        let scoreImage = NSTextAttachment()

        scoreImage.image = UIImage(systemName: "arrow.up.arrow.down", withConfiguration:.none)
        
        let scoreAndImage = NSAttributedString(attachment: scoreImage)
        
        fullString.append(scoreAndImage)

        return fullString
     }
}
