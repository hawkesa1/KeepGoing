//
//  GameScene.swift
//  KeepGoing
//
//  Created by Alex on 29/12/2015.
//  Copyright (c) 2015 Alex. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    
    let Circle = SKShapeNode(circleOfRadius: 100 ) // Size of Circle
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(myLabel)
        
        
        
         oneLittleCircle();
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            //let sprite = SKSpriteNode(imageNamed:"Spaceship")
            //sprite.xScale = 0.5
            //sprite.yScale = 0.5
            //sprite.position = location
           // let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            //sprite.runAction(SKAction.repeatActionForever(action))
            
            let scaleUp=SKAction.scaleTo(1.1,duration: 0.1);
            let scaleDown=SKAction.scaleTo(1.0,duration: 0.1);
            let scaler=SKAction.sequence([scaleUp,scaleDown]);
            
            if self.Circle.containsPoint(location)
            {
                Circle.fillColor = SKColor.redColor();
                Circle.runAction(scaler);
                
                print("Circle Pressed");
            }
            
            
            
           
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
    
    func oneLittleCircle(){
        
        Circle.position = CGPointMake(frame.midX, 100+20)  //Middle of Screen
        Circle.strokeColor = SKColor.blackColor()
        Circle.glowWidth = 1.0
        Circle.fillColor = SKColor.orangeColor()
        self.addChild(Circle)
    }
}