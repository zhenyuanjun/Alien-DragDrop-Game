//
//  ResetButton.swift
//  gesture
//
//  Created by 陳元浚 on 2021/3/31.
//

import SwiftUI

struct ResetButton: View {
    var action: (() -> Void)?

    var body: some View {
        Group {
            Button(action: {
                self.action?()
            }) {
                Text("重置單字")
                    .font(.title)
                    .padding()
            }
            .buttonStyle(BorderlessButtonStyle())
            .background(Color.green)
            .clipShape(Capsule())
            .foregroundColor(.white)

            Text("(警告：會被扣十分)")
                .font(.headline)
                .foregroundColor(.white)
                .shadow(color: .red, radius: 5)
                .shadow(color: .red, radius: 5)
        }
    }
}

struct ResetButton_Previews: PreviewProvider {
    static var previews: some View {
        ResetButton()
    }
}
