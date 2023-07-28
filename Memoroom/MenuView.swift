//
//  MenuView.swift
//  Memoroom
//
//  Created by rsbj on 27/07/23.
//

import SwiftUI

struct MenuView: View {
        
    var body: some View {
        VStack(spacing: 50) {
            NavigationLink("Quarto", destination: RoomContentView().navigationBarBackButtonHidden())
                .font(.largeTitle)
            NavigationLink("Praia", destination: BeachContentView().navigationBarBackButtonHidden())
                .font(.largeTitle)
        }
    }
}
