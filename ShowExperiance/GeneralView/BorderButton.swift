//
//  ButtonWithBorder.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI


struct BorderButton<Content>: View where Content:View {
    let content: () -> Content
    let action:()-> Void
    let color:Color

    init(action:@escaping ()-> Void,borderColor:Color,@ViewBuilder content: @escaping () -> Content) {
        self.action = action
        self.content = content
        self.color = borderColor
       }
    
    var body: some View {
        Button(action: {
            self.action()
            
          }) {
            content()
                  .frame(minWidth: 0, maxWidth: .infinity)
                  .font(.system(size: 18))
                  .padding()
                .foregroundColor(self.color)
                  .overlay(
                      RoundedRectangle(cornerRadius: 25)
                          .stroke(color, lineWidth: 2)
              )
          }
    }
}

struct ButtonWithBorder_Previews: PreviewProvider {
    static var previews: some View {
        BorderButton(action:{print("hi")},borderColor:.red){
            Text("Hi")
        }
    }
}
