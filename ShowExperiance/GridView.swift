//
//  DeveloperView.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI



struct GridView:View {
    private let symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

    private let colors: [Color] = [.yellow, .purple, .green]

    private let gridItemLayout = [GridItem(spacing:10), GridItem(spacing:10)]
    var body: some View{
       
        ScrollView(  showsIndicators: false){
               LazyVGrid(columns: gridItemLayout, spacing: 10) {
                   ForEach((0..<100)) { item in
                    Card(image: symbols[item%9] ,color: colors[item%3])
                   }
               }.padding(.horizontal, 10)
        }.padding(.top, 20)
        .background(Color.black.opacity(0.05))
    }
}



struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

import SwiftUI

struct  Card: View {
    let image:String
    let color:Color
    var body: some View {
        ZStack(alignment: .center){
            Image(systemName: image).resizable().aspectRatio(contentMode: .fit).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15).cornerRadius(10)
           color.opacity(0.4).cornerRadius(10)
            
        }.frame(width: 100, height: 100)
        
    }
}
