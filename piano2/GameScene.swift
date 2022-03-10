//
//  GameScene.swift
//  piano2
//
//  Created by  on 1/20/22.
//

import SpriteKit
import GameplayKit
import AVFoundation

class GameScene: SKScene
{
    var c = SKSpriteNode()
    var cc = SKSpriteNode()
    var d = SKSpriteNode()
    var dc = SKSpriteNode()
    var e = SKSpriteNode()
    var ec = SKSpriteNode()
    var f = SKSpriteNode()
    var fc = SKSpriteNode()
    var g = SKSpriteNode()
    var gc = SKSpriteNode()
    var a = SKSpriteNode()
    var ac = SKSpriteNode()
    var b = SKSpriteNode()
    var bc = SKSpriteNode()
    var c2 = SKSpriteNode()
    var c2c = SKSpriteNode()
    var d2 = SKSpriteNode()
    var d2c = SKSpriteNode()
 
    var db = SKSpriteNode()
    var eb = SKSpriteNode()
    var gb = SKSpriteNode()
    var ab = SKSpriteNode()
    var bb = SKSpriteNode()
    var db2 = SKSpriteNode()
    //: SKSpriteNode?
    var eb2 = SKSpriteNode()
    
    var none = SKSpriteNode()
    
    
    
    override func didMove(to view: SKView)
    {
        
        c = self.childNode(withName: "c")! as! SKSpriteNode
        cc = c.childNode(withName: "cc")! as! SKSpriteNode
        d = self.childNode(withName: "d")! as! SKSpriteNode
        dc = d.childNode(withName: "dc")! as! SKSpriteNode
        e = self.childNode(withName: "e")! as! SKSpriteNode
        ec = e.childNode(withName: "ec")! as! SKSpriteNode
        f = self.childNode(withName: "f")! as! SKSpriteNode
        fc = f.childNode(withName: "fc")! as! SKSpriteNode
        g = self.childNode(withName: "g")! as! SKSpriteNode
        gc = g.childNode(withName: "gc")! as! SKSpriteNode
        a = self.childNode(withName: "a")! as! SKSpriteNode
        ac = a.childNode(withName: "ac")! as! SKSpriteNode
        b = self.childNode(withName: "b")! as! SKSpriteNode
        bc = b.childNode(withName: "bc")! as! SKSpriteNode
        c2 = self.childNode(withName: "c2")! as! SKSpriteNode
        c2c = c2.childNode(withName: "c2c")! as! SKSpriteNode
        d2 = self.childNode(withName: "d2")! as! SKSpriteNode
        d2c = d2.childNode(withName: "d2c")! as! SKSpriteNode
        db = self.childNode(withName: "db")! as! SKSpriteNode
        eb = self.childNode(withName: "eb")! as! SKSpriteNode
        gb = self.childNode(withName: "gb")! as! SKSpriteNode
        ab = self.childNode(withName: "ab")! as! SKSpriteNode
        bb = self.childNode(withName: "bb")! as! SKSpriteNode
        db2 = self.childNode(withName: "db2")! as! SKSpriteNode
        none = self.childNode(withName: "none") as! SKSpriteNode
        // eb2 = self.childNode(withName: "eb2")! as! SKSpriteNode
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
       // let location = (touches.first?.location(in: self))!
    }

    //make array of nodes and loop
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let location = (touches.first?.location(in: self))!
        //        let sound = SKAction.playSoundFileNamed("eb2.wav", waitForCompletion: false)
        //        run(sound)
        
        /*
        white(note: a, notec: ac)
        white(note: b, notec: bc)
        white(note: c, notec: cc)
        white(note: d, notec: dc)
        white(note: e, notec: ec)
        white(note: f, notec: fc)
        white(note: g, notec: gc)
        white(note: c2, notec: c2c)
        white(note: d2, notec: d2c)
        
        black(note: db)
        black(note: eb)
        black(note: gb)
        black(note: ab)
        black(note: bb)
        black(note: db2)
    */
        
        changeColor(note: a, location: location, notec: ac)
        changeColor(note: b, location: location, notec: bc)
        changeColor(note: c, location: location, notec: cc)
        changeColor(note: d, location: location, notec: dc)
        changeColor(note: e, location: location, notec: ec)
        changeColor(note: f, location: location, notec: fc)
        changeColor(note: g, location: location, notec: gc)
        changeColor(note: c2, location: location, notec: c2c)
        changeColor(note: d2, location: location, notec: d2c)
       
        
        
        changeColor(note: db, location: location, notec: none)
        changeColor(note: eb, location: location, notec: none)
        changeColor(note: gb, location: location, notec: none)
        changeColor(note: ab, location: location, notec: none)
        changeColor(note: bb, location: location, notec: none)
        changeColor(note: db2, location: location, notec: none)
       
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let location = (touches.first?.location(in: self))!
       /*
        revertColor(note: a, location: location, notec: ac)
        revertColor(note: b, location: location, notec: bc)
        revertColor(note: c, location: location, notec: cc)
        revertColor(note: d, location: location, notec: dc)
        revertColor(note: e, location: location, notec: ec)
        revertColor(note: f, location: location, notec: fc)
        revertColor(note: g, location: location, notec: gc)
        revertColor(note: c2, location: location, notec: c2c)
        revertColor(note: d2, location: location, notec: d2c)
        */
        
        white(note: a, notec: ac)
        white(note: b, notec: bc)
        white(note: c, notec: cc)
        white(note: d, notec: dc)
        white(note: e, notec: ec)
        white(note: f, notec: fc)
        white(note: g, notec: gc)
        white(note: c2, notec: c2c)
        white(note: d2, notec: d2c)
        
        
        
        black(note: db)
        black(note: eb)
        black(note: gb)
        black(note: ab)
        black(note: bb)
        black(note: db2)
        /*
        revertColor(note: db, location: location)
        revertColor(note: eb, location: location)
        revertColor(note: gb, location: location)
        revertColor(note: ab, location: location)
        revertColor(note: bb, location: location)
        revertColor(note: db2, location: location)
        //revertColor(note: eb2, location: location)
        */
    }
    
    
    func gray(note: SKSpriteNode, notec: SKSpriteNode)
    {
       
        if note.color != UIColor.gray
        {
        let noter = note.name!
        let sound = SKAction.playSoundFileNamed("\(noter).wav", waitForCompletion: false)
        run(sound)
        }
        note.color = UIColor.gray
        
        notec.color = UIColor.gray
        
    }
    
    func darkGray(note: SKSpriteNode)
    {
        if note.color != UIColor.darkGray
        {
        let noter = note.name!
        let sound = SKAction.playSoundFileNamed("\(noter).wav", waitForCompletion: false)
        run(sound)
        }
        
        note.color = UIColor.darkGray
        
    }
    
    func white(note: SKSpriteNode, notec: SKSpriteNode)
    {
        note.color = UIColor.white
        notec.color = UIColor.white
    }
    
    func black(note: SKSpriteNode?)
    {
        note!.color = UIColor.black
    }
    
    
    
    func changeColor(note: SKSpriteNode, location: CGPoint, notec: SKSpriteNode)
    {
        
        if note.frame.contains(location) || notec.frame.contains(location)
        {
            if  note.name != "db" && note.name != "eb" && note.name != "gb" && note.name != "ab"  && note.name != "bb"  && note.name != "db2" && notec.name != "db" && notec.name != "eb" && notec.name != "gb" && notec.name != "ab"  && notec.name != "bb"  && notec.name != "db2"//|| note != eb2
            {
                gray(note: note, notec: notec)
            }
            else
            {
                darkGray(note: note)
            }
        }
        
    }
    
    func revertColor(note: SKSpriteNode, location: CGPoint, notec: SKSpriteNode)
    {
        if note.frame.contains(location)
        {
            if note.name != "db" && note.name != "eb" && note.name != "gb" && note.name != "ab"  && note.name != "bb"  && note.name != "db2"//|| note != eb2
            {
                white(note: note, notec: notec)
            }
            else
            {
                black(note: note)
            }
        }
        
        
        
    }
    
    
    
}



