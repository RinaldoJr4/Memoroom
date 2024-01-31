//
//  BeachGameScene.swift
//  Memoroom
//
//  Created by rsbj on 28/07/23.
//

import SpriteKit
import SwiftUI

class BeachGameScene: SKScene {
    
    @Binding var score: Int
    @Binding var difficulty: Int
    
    var fundo = SKSpriteNode(imageNamed: "praia_base")
    
    public init(score: Binding<Int>,size: CGSize, difficulty: Binding<Int>){
        _score = score
        _difficulty = difficulty
        super.init(size: size)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in RoomGameScene")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: UITouch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
//          Identifica em qual node clicou
            
            if touchedNode.name != nil {
                let size = touchedNode.frame.size
                let position = touchedNode.position
                let zPosition = touchedNode.zPosition
//              salva o tamanho e posicao
                
                touchedNode.removeFromParent()
//              remove o antigo node com a cor errada
                
                let newNode = SKSpriteNode(imageNamed: touchedNode.name!)
                newNode.size = size
                newNode.position = position
                newNode.zPosition = zPosition
                addChild(newNode)
//              coloca o novo node com a cor certa no lugar do outro
                
                score = score + 1
            }
        }
    }
    
    override func didMove(to view: SKView) {
        generateRandomRoom(quantity: difficulty)
        setup()
    }
    
    func setup() {
        // MARK: Hierarquia
        fundo.size = self.size
        fundo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        fundo.zPosition = 0
        addChild(fundo)
        
        
    }
    
}
