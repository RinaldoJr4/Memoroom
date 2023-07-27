//
//  MenuView.swift
//  Memoroom
//
//  Created by rsbj on 27/07/23.
//

import SwiftUI

struct MenuView: View {
        
    var body: some View {
        NavigationLink("Quarto", destination: RoomContentView().navigationBarBackButtonHidden())
    }
}
