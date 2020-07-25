//
//  TabBar.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI

struct TapBar: View {
    @Binding var selectedIndex:Int
    
    var body: some View {
        HStack(spacing:30){
            TabBarItem(index: 0, selectedIndex: $selectedIndex, imageName:  "person.crop.square", title: "Grid view")
            Spacer(minLength: 15)
          TabBarItem(index: 1, selectedIndex: $selectedIndex, imageName:                "person.3.fill", title: "Customer")

            Spacer(minLength: 15)
            TabBarItem(index: 2, selectedIndex: $selectedIndex, imageName:            "pencil.and.ellipsis.rectangle", title: "Projects")

            
        }.padding(.vertical,-10)
            .padding(.horizontal,25)
            .background(Color.white)
            .animation(.spring())
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar(selectedIndex: .constant(0))
        
    }
}
