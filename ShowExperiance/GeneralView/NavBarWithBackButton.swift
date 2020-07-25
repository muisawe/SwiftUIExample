//
//  NavBarWithBackButtom.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//


import SwiftUI

struct NavBar<Content>: View where Content: View {
    var title:String = "الرئيسية"
//    var action = ()-> Void
    
    let content: () -> Content

    init(title:String = "الرئيسية",@ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
       }
    
    var body: some View {
        VStack(spacing:0){
            HStack(spacing:0){
                Spacer()
                content()

                Spacer()

            }
            .padding()
            .padding(.top,UIScreen.topEdgge)
            .background(Color.red)
            
        }
       
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar{
            Color.red
        }
    }
}
    

struct NavBarWithBackButtom: View {
    var title:String = "الرئيسية"
//    var action = ()-> Void
    var action:()-> Void
    
    
    var body: some View {
        
        VStack(spacing:0){
            HStack(spacing:0){
                Spacer()
                Button(action: action)  {
                    Text(title).foregroundColor(.white)
                    Image(systemName: "chevron.right").foregroundColor(.white)
                }
                
            }
            .padding()
            .padding(.top,UIScreen.topEdgge)
            .background(Color.red)
            
        }
       
    }
}
struct NavBarWithBackButtom_Previews: PreviewProvider {
    static var previews: some View {
        NavBarWithBackButtom( action: {print("hi")})
    }
}
