//
//  ContentView.swift
//  ShowExperiance
//
//  Created by Moumen Alisawe on 7/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var index:Int = 0
    var body: some View {
        VStack(spacing:0){
            ZStack{
                if index == 0 {               GridView()
              
                }else if index == 1 {
                    HomeView()
                    
                }else {
                    ZStack{
                        Color.blue
                        
                    }
                }

            }
            TapBar(selectedIndex: self.$index)
            
        }.edgesIgnoringSafeArea(.top)
        .gesture(DragGesture().onEnded({ (value) in
            if value.predictedEndTranslation.width < UIScreen.main.bounds.width/2{
                if index == 2{
                    index = 0
                }else{
                    index += 1
                }
            
                
            }
            else if value.predictedEndTranslation.width > UIScreen.main.bounds.width/2{
                if index == 0{
                    index = 2
                }else{
                    index -= 1
                }
            }
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

