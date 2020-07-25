//
//  Slider.swift
//  NewWattan
//
//  Created by Moumen Alisawe on 6/30/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI

struct Slider: View {
    @State private var currentPage = 0
    
    var body: some View {
        VStack(alignment:.center,spacing: 0){

             PagerView(pageCount: 3, currentIndex: $currentPage) {
                ForEach(0..<3){_ in
                    SliderCard(image: Image("placeholder"), title: "كيفية إختصار الوقت و الجهد عند كتابة مستندات وورد باستخدام خاصية النص التلقائي و التصحيح التلقائي.")
                        .frame(width: UIScreen.screenWidth - 10,                                     height: UIScreen.screenHeight/4)
                 
                        
                                                }
             }
            
            QuadPageControl(numberOfPages: 3, tintColor: UIColor.red.withAlphaComponent(0.09), currentPositionColor:.red, currentPage: $currentPage)
        }
        .frame(  maxWidth: .infinity, minHeight: (UIScreen.screenHeight/4)+35).padding(.top,10)
        
        
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider()
    }
}
