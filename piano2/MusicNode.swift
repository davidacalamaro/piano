//
//  MusicNode.swift
//  piano2
//
//  Created by david on 1/26/22.
//

import UIKit
import SpriteKit

class MusicNode: SKSpriteNode
{
    var note: String
    
   
    init()
    {
        note = "a.wav"
        let texture = SKTexture(imageNamed: "bubble")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
