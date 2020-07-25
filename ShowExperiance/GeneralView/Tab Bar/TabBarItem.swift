//
//  TabBarItem.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI


struct TabBarItem: View {
     var index:Int
    @Binding var selectedIndex:Int
    let imageName:String
    let title:String
    var body: some View {
        Button(action:{
            self.selectedIndex = self.index
        }){
            if self.index != selectedIndex{
                Image(systemName:
                    imageName).frame(width: 35, height: 30).foregroundColor(Color.black.opacity(0.2))
                
            }else{
                VStack{
                    Image(systemName:
                        imageName
                       ).frame(width: 25, height: 23).foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(y: -20)
                        .padding(.bottom,-20)
                    Text(title).foregroundColor(Color.black.opacity(0.7))
                        .padding(.bottom,15)
                    
                }
                
            }
            
        }
    }
}

struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItem(index: 0, selectedIndex: .constant(0), imageName: "person.fill", title: "Item")
    }
}
