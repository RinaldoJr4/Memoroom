//
//  BeachView.swift
//  Memoroom
//
//  Created by rsbj on 28/07/23.
//

import SwiftUI
import SpriteKit


struct BeachContentView: View {
    
    @State var value = 0.7
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var score = 0
    
    var scene : SKScene{
        var scene = SKScene()
        scene = BeachGameScene()
        return scene
    }
    
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Color("BaseColor")
                VStack{
                    Spacer()
                    Text("Score: \(score)")
                        .font(.custom("system", size:geo.size.height/20))
                    Spacer()
                    if value > 0 {
                        SpriteView(scene: scene)
                            .aspectRatio(CGSize(width: 50, height: 50), contentMode: .fit)
                    }
                    else {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("BaseColor"))
                                .aspectRatio(CGSize(width: 50, height: 50), contentMode: .fit)
                            Button("Reiniciar", action: {
                                value = 0.7
                            })
                                .font(.system(size: 40))
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    ProgressView("", value: value, total: 0.7)
                        .progressViewStyle(CustomProgressBar(size: geo.size, score: score))
                        .onReceive(timer) { _ in
                            withAnimation(.easeInOut) {
                                if value > 0 {
                                    value -= 0.1
                                }
                            }
                        }
                    Spacer()
                }
            }
            .ignoresSafeArea()
        }
    }
}
