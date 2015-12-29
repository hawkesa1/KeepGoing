//
//  GameScene.swift
//  KeepGoing
//
//  Created by Alex on 29/12/2015.
//  Copyright (c) 2015 Alex. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    
    let Circle = SKShapeNode(circleOfRadius: 60 )
    let myLabel = SKLabelNode(fontNamed:"Chalkduster")
    var pressCount=0;
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        myLabel.text = String (pressCount);
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(myLabel)
        
        
        
         oneLittleCircle();
    }
    
    //let scaler=SKAction.sequence([scaleUp,scaleDown]);
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch=touches.first! as UITouch;
        let location = touch.locationInNode(self)
            let scaleUp=SKAction.scaleTo(1.1,duration: 0.1);
            if self.Circle.containsPoint(location)
            {
                pressCount++;
                myLabel.text = String (pressCount);
                Circle.runAction(scaleUp);
                print("Circle Pressed");
            }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch=touches.first! as UITouch;
        let location = touch.locationInNode(self)
        let scaleDown=SKAction.scaleTo(1.0,duration: 0.1);
        if self.Circle.containsPoint(location)
        {
            Circle.runAction(scaleDown);
            print("Circle Pressed");
        }
        
    }
    

    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
    
    func oneLittleCircle(){
        
        Circle.position = CGPointMake(frame.midX, 60+20)  //Middle of Screen
        Circle.strokeColor = SKColor.blackColor()
        Circle.glowWidth = 1.0
        Circle.fillColor = SKColor.whiteColor()
        self.addChild(Circle)
    }
}