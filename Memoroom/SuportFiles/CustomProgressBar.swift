
import Foundation
import SwiftUI

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
                    })
            }
            .cornerRadius(15)
        }
    }
}
