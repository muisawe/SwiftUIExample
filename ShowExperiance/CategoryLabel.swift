//
//  CategoryLabel.swift
//  NewWattan
//
//  Created by Moumen Alisawe on 7/1/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI

struct CategoryLabel: View {
    var categoryName:String
    var body: some View {
        ZStack{
            Color(.red).frame(width: 64, height: 24).clipShape(RoundedCornerShape(corner: [.topRight,.bottomLeft], radii: 8))
            
            Text(categoryName)
                .foregroundColor(.white)
                .lineLimit(1)
                .frame(width: 60)
                .padding(.trailing,2)
            
        }
    }
}
