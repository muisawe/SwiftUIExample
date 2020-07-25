//
//  SliderCard.swift
//  NewWattan
//
//  Created by Moumen Alisawe on 6/30/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI

struct SliderCard: View {
     var image:Image
     var title:String
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            image.resizable().cornerRadius(10)
            Color.black.opacity(0.4).cornerRadius(10)
    
            Text(title).foregroundColor(.white)
                .multilineTextAlignment(.trailing).padding(.horizontal)
                .padding(.bottom,15)
            }.padding(.horizontal,20)
        
    }
}

struct SliderCard_Previews: PreviewProvider {
    static let img = Image("placeholder")
    static var previews: some View {
        
        SliderCard(image: img,title: "كيفية إختصار الوقت و الجهد عند كتابة مستندات وورد باستخدام خاصية النص التلقائي و التصحيح التلقائي.")
    }
}
