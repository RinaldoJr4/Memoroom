//
//  ContentView.swift
//  Memoroom
//
//  Created by rsbj on 26/06/23.
//

import SwiftUI
import SpriteKit


struct RoomContentView: View {
    
    @State var value = 0.7
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var score = 0
    
    var scene : SKScene{
        var scene = SKScene()
        scene = RoomGameScene(score: $score,size: CGSize(width: 500, height: 500))
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
                            Button("Reiniciar", action: {value = 0.7})
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

struct CustomProgressBar: ProgressViewStyle {
    let size: CGSize
    let score: Int
    @State var color = Color(.systemBlue)
    @State var backColor = Color(.gray)
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            ZStack(alignment: .leading) {
                Rectangle().frame(width: (size.width * 0.8),height: 30)
                    .foregroundColor(backColor)
                Rectangle()
                    .frame(width: (size.width * 0.8) * CGFloat(configuration.fractionCompleted ?? 0.0),height: 30)
                    .foregroundColor(color)
                    .onChange(of: configuration.fractionCompleted, perform: { newValue in
                        if newValue ?? 0.0 <= 0.33 {
                            color = .red
                        }
                        if newValue ?? 0.0 >= 0.66 {
                            color = .blue
                        }
                        else{
                            color = .yellow
                        }
                        if newValue ?? 0.0 <= 0 {
//                            if score == 3 {
//                                backColor = .green
//                            }
//                            else {
//                                backColor = .red
//                            }
                        }
                        if newValue ?? 0.0 >= 0.7{
                            backColor = .gray
                        }
                    })
            }
            .cornerRadius(15)
        }
    }
}
