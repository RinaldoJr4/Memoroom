//
//  GameScene.swift
//  Memoroom
//
//  Created by rsbj on 26/06/23.
//

import SpriteKit
import SwiftUI

class RoomGameScene: SKScene {
    
    @Binding var score: Int
    
//  Essa parte do código é responsável por fazer a ponte entre a ContentView e a GameScene
    public init(score: Binding<Int>,size: CGSize){
        _score = score
        super.init(size: size)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var fundo = SKSpriteNode(imageNamed: "quarto_base")
    var estante = SKSpriteNode(imageNamed: "quarto_estante")
    var mesa = SKSpriteNode(imageNamed: "quarto_mesa")
    
    var abajour = SKSpriteNode(imageNamed: "quarto_abajour_1")
    var bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_1")
    var cama = SKSpriteNode(imageNamed: "quarto_cama_1")
    var camisa = SKSpriteNode(imageNamed: "quarto_camisa_1")
    var laptop = SKSpriteNode(imageNamed: "quarto_laptop_1")
    var quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_1")
    var quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_1")
    var quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_1")
    var sapato = SKSpriteNode(imageNamed: "quarto_sapato_1")
    var urso = SKSpriteNode(imageNamed: "quarto_urso_1")
    var vaso = SKSpriteNode(imageNamed: "quarto_vaso_1")
    
    var auxiliarCama = SKSpriteNode(color: .clear, size: CGSize(width: 200, height: 150))
    var auxiliarCama2 = SKSpriteNode(color: .clear, size: CGSize(width: 250, height: 80))
    
    override func didMove(to view: SKView) {
        generateRandomRoom(quantity: 1)
        setup()
    }
    
    func setup() {
        fundo.size = self.size
        fundo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        fundo.zPosition = 0
        addChild(fundo)
        
        cama.size = CGSize(width: 316, height: 271)
        cama.position = CGPoint(x: 184, y: 205)
        cama.zPosition = 1
        addChild(cama)
        
        auxiliarCama.position = CGPoint(x: 88, y: 282)
        auxiliarCama.zRotation = 0.50
        auxiliarCama.zPosition = 2
        addChild(auxiliarCama)
        auxiliarCama2.position = CGPoint(x: 105, y: 330)
        auxiliarCama2.zPosition = 2
        addChild(auxiliarCama2)
        
        estante.size = CGSize(width: 183, height: 104)
        estante.position = CGPoint(x: 154, y: 367)
        estante.zPosition = 3
        addChild(estante)
        
        mesa.size = CGSize(width: 175, height: 129)
        mesa.position = CGPoint(x: 367, y: 181)
        mesa.zPosition = 4
        addChild(mesa)
        
        urso.size = CGSize(width: 63, height: 68)
        urso.position = CGPoint(x: 91, y: 192)
        urso.zPosition = 5
        addChild(urso)
        
        vaso.size = CGSize(width: 75, height: 82)
        vaso.position = CGPoint(x: 180, y: 418)
        vaso.zPosition = 6
        addChild(vaso)
        
        abajour.size = CGSize(width: 48, height: 81)
        abajour.position = CGPoint(x: 117, y: 383)
        abajour.zPosition = 7
        addChild(abajour)
        
        quadro1.size = CGSize(width: 77, height: 105)
        quadro1.position = CGPoint(x: 293, y: 407)
        quadro1.zPosition = 8
        addChild(quadro1)
        
        quadro2.size = CGSize(width: 39, height: 82)
        quadro2.position = CGPoint(x: 358, y: 364)
        quadro2.zPosition = 9
        addChild(quadro2)
        
        quadro3.size = CGSize(width: 62, height: 140)
        quadro3.position = CGPoint(x: 416, y: 327)
        quadro3.zPosition = 10
        addChild(quadro3)
        
        camisa.size = CGSize(width: 85, height: 62)
        camisa.position = CGPoint(x: 207, y: 74)
        camisa.zPosition = 11
        addChild(camisa)
        
        bolsa.size = CGSize(width: 61, height: 71)
        bolsa.position = CGPoint(x: 266, y: 144)
        bolsa.zPosition = 12
        addChild(bolsa)
        
        laptop.size = CGSize(width: 100, height: 98)
        laptop.position = CGPoint(x: 373, y: 225)
        laptop.zPosition = 13
        addChild(laptop)
        
        sapato.size = CGSize(width: 91, height: 55)
        sapato.position = CGPoint(x: 315, y: 92)
        sapato.zPosition = 14
        addChild(sapato)
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
}
