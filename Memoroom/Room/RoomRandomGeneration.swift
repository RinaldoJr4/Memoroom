//
//  RandomGeneration.swift
//  Memoroom
//
//  Created by rsbj on 29/06/23.
//

import SpriteKit
import SwiftUI

extension RoomGameScene {
    
    func generate1Random(){
        // altera um dos objetos variáveis
        
        let randomInt = Int.random(in: 1..<12)
        // numero aleatório entre 1 e 11 (escolhe qual objeto vai ser alterado)
        let randomInt2 = Int.random(in: 2..<4)
        // segundo numero aleatorio entre 2 e 3 para a variacao de cores (escolhe qual cor o objeto vai ter)
        
        if randomInt == 1 {
            abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomInt2)")
            abajour.name = "quarto_abajour_1"
        }
        else if randomInt == 2 {
            bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomInt2)")
            bolsa.name = "quarto_bolsa_1"
        }
        else if randomInt == 3 {
            cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomInt2)")
            cama.name = "quarto_cama_1"
        }
        else if randomInt == 4 {
            camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomInt2)")
            camisa.name = "quarto_camisa_1"
        }
        else if randomInt == 5 {
            laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomInt2)")
            laptop.name = "quarto_laptop_1"
        }
        else if randomInt == 6 {
            quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomInt2)")
            quadro1.name = "quarto_quadro1_1"
        }
        else if randomInt == 7 {
            quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomInt2)")
            quadro2.name = "quarto_quadro2_1"
        }
        else if randomInt == 8 {
            quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomInt2)")
            quadro3.name = "quarto_quadro3_1"
        }
        else if randomInt == 9 {
            sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomInt2)")
            sapato.name = "quarto_sapato_1"
        }
        else if randomInt == 10 {
            urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomInt2)")
            urso.name = "quarto_urso_1"
        }
        else if randomInt == 11 {
            vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomInt2)")
            vaso.name = "quarto_vaso_1"
        }
        // mudou cor dependendo do numero do objeto
    }
    
    func generate2Random(){
        // altera dois dos objetos variáveis
        
        let randomInt11 = Int.random(in: 1..<12)
        // numero aleatório entre 1 e 11 (escolhe qual vai ser o primeiro objeto que vai ser alterado)
        let randomInt12 = Int.random(in: 2..<4)
        // segundo numero aleatorio entre 2 e 3 para a variacao de cores (escolhe qual cor o primeiro objeto vai ter)
        
        if randomInt11 == 1 {
            abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomInt12)")
            abajour.name = "quarto_abajour_1"
        }
        else if randomInt11 == 2 {
            bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomInt12)")
            bolsa.name = "quarto_bolsa_1"
        }
        else if randomInt11 == 3 {
            cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomInt12)")
            cama.name = "quarto_cama_1"
        }
        else if randomInt11 == 4 {
            camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomInt12)")
            camisa.name = "quarto_camisa_1"
        }
        else if randomInt11 == 5 {
            laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomInt12)")
            laptop.name = "quarto_laptop_1"
        }
        else if randomInt11 == 6 {
            quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomInt12)")
            quadro1.name = "quarto_quadro1_1"
        }
        else if randomInt11 == 7 {
            quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomInt12)")
            quadro2.name = "quarto_quadro2_1"
        }
        else if randomInt11 == 8 {
            quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomInt12)")
            quadro3.name = "quarto_quadro3_1"
        }
        else if randomInt11 == 9 {
            sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomInt12)")
            sapato.name = "quarto_sapato_1"
        }
        else if randomInt11 == 10 {
            urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomInt12)")
            urso.name = "quarto_urso_1"
        }
        else if randomInt11 == 11 {
            vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomInt12)")
            vaso.name = "quarto_vaso_1"
        }
        // mudou cor do primeiro objeto
        
        var randomInt21 = Int.random(in: 1..<12)
        // numero aleatório entre 1 e 11 (escolhe qual vai ser o segundo objeto que vai ser alterado)
        let randomInt22 = Int.random(in: 2..<4)
        // segundo numero aleatorio entre 2 e 3 para a variacao de cores (escolhe qual cor o segundo objeto vai ter)
        
        if randomInt11 == randomInt21 && randomInt11 == 11 {
            randomInt21 = randomInt21 - 1
        }
        else if randomInt11 == randomInt21{
            randomInt21 = randomInt21 + 1
        }
        // garante que nao vai mudar a cor do mesmo objeto
        
        if randomInt21 == 1 {
            abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomInt22)")
            abajour.name = "quarto_abajour_1"
        }
        else if randomInt21 == 2 {
            bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomInt22)")
            bolsa.name = "quarto_bolsa_1"
        }
        else if randomInt21 == 3 {
            cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomInt22)")
            cama.name = "quarto_cama_1"
        }
        else if randomInt21 == 4 {
            camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomInt22)")
            camisa.name = "quarto_camisa_1"
        }
        else if randomInt21 == 5 {
            laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomInt22)")
            laptop.name = "quarto_laptop_1"
        }
        else if randomInt21 == 6 {
            quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomInt22)")
            quadro1.name = "quarto_quadro1_1"
        }
        else if randomInt21 == 7 {
            quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomInt22)")
            quadro2.name = "quarto_quadro2_1"
        }
        else if randomInt21 == 8 {
            quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomInt22)")
            quadro3.name = "quarto_quadro3_1"
        }
        else if randomInt21 == 9 {
            sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomInt22)")
            sapato.name = "quarto_sapato_1"
        }
        else if randomInt21 == 10 {
            urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomInt22)")
            urso.name = "quarto_urso_1"
        }
        else if randomInt21 == 11 {
            vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomInt22)")
            vaso.name = "quarto_vaso_1"
        }
        // mudou a cor do segundo objeto
    }
    
    func generate3Random(){
        // altera tres dos objetos variáveis
        
        let randomInt11 = Int.random(in: 1..<12)
        // numero aleatório entre 1 e 11 (escolhe qual vai ser o primeiro objeto que vai ser alterado)
        let randomInt12 = Int.random(in: 2..<4)
        // segundo numero aleatorio entre 2 e 3 para a variacao de cores (escolhe qual cor o primeiro objeto vai ter)
        
        if randomInt11 == 1 {
            abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomInt12)")
            abajour.name = "quarto_abajour_1"
        }
        else if randomInt11 == 2 {
            bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomInt12)")
            bolsa.name = "quarto_bolsa_1"
        }
        else if randomInt11 == 3 {
            cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomInt12)")
            cama.name = "quarto_cama_1"
        }
        else if randomInt11 == 4 {
            camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomInt12)")
            camisa.name = "quarto_camisa_1"
        }
        else if randomInt11 == 5 {
            laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomInt12)")
            laptop.name = "quarto_laptop_1"
        }
        else if randomInt11 == 6 {
            quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomInt12)")
            quadro1.name = "quarto_quadro1_1"
        }
        else if randomInt11 == 7 {
            quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomInt12)")
            quadro2.name = "quarto_quadro2_1"
        }
        else if randomInt11 == 8 {
            quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomInt12)")
            quadro3.name = "quarto_quadro3_1"
        }
        else if randomInt11 == 9 {
            sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomInt12)")
            sapato.name = "quarto_sapato_1"
        }
        else if randomInt11 == 10 {
            urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomInt12)")
            urso.name = "quarto_urso_1"
        }
        else if randomInt11 == 11 {
            vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomInt12)")
            vaso.name = "quarto_vaso_1"
        }
        // mudou cor do primeiro objeto
        
        var randomInt21 = Int.random(in: 1..<12)
        // numero aleatório entre 1 e 11 (escolhe qual vai ser o segundo objeto que vai ser alterado)
        let randomInt22 = Int.random(in: 2..<4)
        // segundo numero aleatorio entre 2 e 3 para a variacao de cores (escolhe qual cor o segundo objeto vai ter)
        
        if randomInt11 == randomInt21 && randomInt11 == 11 {
            randomInt21 = randomInt21 - 1
        }
        else if randomInt11 == randomInt21{
            randomInt21 = randomInt21 + 1
        }
        // garante que nao vai mudar a cor do mesmo objeto
        
        if randomInt21 == 1 {
            abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomInt22)")
            abajour.name = "quarto_abajour_1"
        }
        else if randomInt21 == 2 {
            bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomInt22)")
            bolsa.name = "quarto_bolsa_1"
        }
        else if randomInt21 == 3 {
            cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomInt22)")
            cama.name = "quarto_cama_1"
        }
        else if randomInt21 == 4 {
            camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomInt22)")
            camisa.name = "quarto_camisa_1"
        }
        else if randomInt21 == 5 {
            laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomInt22)")
            laptop.name = "quarto_laptop_1"
        }
        else if randomInt21 == 6 {
            quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomInt22)")
            quadro1.name = "quarto_quadro1_1"
        }
        else if randomInt21 == 7 {
            quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomInt22)")
            quadro2.name = "quarto_quadro2_1"
        }
        else if randomInt21 == 8 {
            quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomInt22)")
            quadro3.name = "quarto_quadro3_1"
        }
        else if randomInt21 == 9 {
            sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomInt22)")
            sapato.name = "quarto_sapato_1"
        }
        else if randomInt21 == 10 {
            urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomInt22)")
            urso.name = "quarto_urso_1"
        }
        else if randomInt21 == 11 {
            vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomInt22)")
            vaso.name = "quarto_vaso_1"
        }
        // mudou a cor do segundo objeto
        
        var randomInt31 = Int.random(in: 1..<12)
        // numero aleatório entre 1 e 11 (escolhe qual vai ser o terceiro objeto que vai ser alterado)
        let randomInt32 = Int.random(in: 2..<4)
        // segundo numero aleatorio entre 2 e 3 para a variacao de cores (escolhe qual cor o terceiro objeto vai ter)
        
        while randomInt31 == randomInt11 || randomInt31 == randomInt21 {
            if randomInt31 > 1{
                randomInt31 = randomInt31 - 1
            }
            else {
                randomInt31 = randomInt31 + 10
            }
        }
        // garante que nao vai mudar a cor do mesmo objeto
        
        if randomInt31 == 1 {
            abajour = SKSpriteNode(imageNamed: "quarto_abajour_\(randomInt32)")
            abajour.name = "quarto_abajour_1"
        }
        else if randomInt31 == 2 {
            bolsa = SKSpriteNode(imageNamed: "quarto_bolsa_\(randomInt32)")
            bolsa.name = "quarto_bolsa_1"
        }
        else if randomInt31 == 3 {
            cama = SKSpriteNode(imageNamed: "quarto_cama_\(randomInt32)")
            cama.name = "quarto_cama_1"
        }
        else if randomInt31 == 4 {
            camisa = SKSpriteNode(imageNamed: "quarto_camisa_\(randomInt32)")
            camisa.name = "quarto_camisa_1"
        }
        else if randomInt31 == 5 {
            laptop = SKSpriteNode(imageNamed: "quarto_laptop_\(randomInt32)")
            laptop.name = "quarto_laptop_1"
        }
        else if randomInt31 == 6 {
            quadro1 = SKSpriteNode(imageNamed: "quarto_quadro1_\(randomInt32)")
            quadro1.name = "quarto_quadro1_1"
        }
        else if randomInt31 == 7 {
            quadro2 = SKSpriteNode(imageNamed: "quarto_quadro2_\(randomInt32)")
            quadro2.name = "quarto_quadro2_1"
        }
        else if randomInt31 == 8 {
            quadro3 = SKSpriteNode(imageNamed: "quarto_quadro3_\(randomInt32)")
            quadro3.name = "quarto_quadro3_1"
        }
        else if randomInt31 == 9 {
            sapato = SKSpriteNode(imageNamed: "quarto_sapato_\(randomInt32)")
            sapato.name = "quarto_sapato_1"
        }
        else if randomInt31 == 10 {
            urso = SKSpriteNode(imageNamed: "quarto_urso_\(randomInt32)")
            urso.name = "quarto_urso_1"
        }
        else if randomInt31 == 11 {
            vaso = SKSpriteNode(imageNamed: "quarto_vaso_\(randomInt32)")
            vaso.name = "quarto_vaso_1"
        }
        // mudou a cor do terceiro objeto
    }
}
