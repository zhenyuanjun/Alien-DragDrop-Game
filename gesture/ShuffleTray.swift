//
//  ShuffleTray.swift
//  gesture
//
//  Created by 陳元浚 on 2021/3/31.
//

import SwiftUI

struct ShuffleTray: View {
    var action: (() -> Void)?

    var body: some View {
        HStack {
            Spacer()

            Button(action: {
                self.action?()
            }) {
                Text("重置文字")
                    .font(.headline)
                    .padding()
            }
            .buttonStyle(BorderlessButtonStyle())
            .background(Color.red)
            .clipShape(Capsule())
            .foregroundColor(.white)
        }
        .padding([.trailing, .bottom])
    }
}

struct ShuffleTray_Previews: PreviewProvider {
    static var previews: some View {
        ShuffleTray()
    }
}
