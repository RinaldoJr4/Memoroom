//
//  RandomGeneration.swift
//  Memoroom
//
//  Created by rsbj on 29/06/23.
//

import SpriteKit
import SwiftUI

extension RoomGameScene {

    func generateRandomRoom(quantity:Int){
        var randomElement = 0
        var randomColor = 0
        var pastColors: [Int] = []
        
        for i in 1...quantity {
            randomElement = Int.random(in: 1..<12)
            randomColor = Int.random(in: 2..<4)
            pastColors.append(randomElement)
            
            if i >= 2 {
                for j in 0...(i-2){
                    if randomElement == pastColors[j]{
                        randomElement = randomElement + 1
                    }
                }
            }
            
            if randomElement > 11 {
                randomElement = randomElement - 11
            }
            
            if randomElement == 1 {
                abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomColor)")
                abajour.name = "quarto_abajour_1"
            }
            else if randomElement == 2 {
                bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomColor)")
                bolsa.name = "quarto_bolsa_1"
            }
            else if randomElement == 3 {
                cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomColor)")
                cama.name = "quarto_cama_1"
            }
            else if randomElement == 4 {
                camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomColor)")
                camisa.name = "quarto_camisa_1"
            }
            else if randomElement == 5 {
                laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomColor)")
                laptop.name = "quarto_laptop_1"
            }
            else if randomElement == 6 {
                quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomColor)")
                quadro1.name = "quarto_quadro1_1"
            }
            else if randomElement == 7 {
                quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomColor)")
                quadro2.name = "quarto_quadro2_1"
            }
            else if randomElement == 8 {
                quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomColor)")
                quadro3.name = "quarto_quadro3_1"
            }
            else if randomElement == 9 {
                sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomColor)")
                sapato.name = "quarto_sapato_1"
            }
            else if randomElement == 10 {
                urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomColor)")
                urso.name = "quarto_urso_1"
            }
            else if randomElement == 11 {
                vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomColor)")
                vaso.name = "quarto_vaso_1"
            }
        }
    }
    
}
