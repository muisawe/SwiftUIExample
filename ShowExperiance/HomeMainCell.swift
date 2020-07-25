//
//  HomeMainCell.swift
//  NewWattan
//
//  Created by Moumen Alisawe on 7/1/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI


struct HomeMainCell: View {
    @State var title = "عنوان الخبر"
    var body: some View {
        VStack(){
            ZStack(alignment:.topTrailing){
                Image("placeholder").resizable().frame( minHeight: 140).clipShape(RoundedCornerShape(corner: [.topRight,.topLeft], radii: 8))
                CategoryLabel(categoryName:"التصنيف")
            }
            Spacer()
            Text(title).lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.trailing)
                .padding(.bottom,3)
                .padding(.horizontal,10)
             
            
        }.frame(  maxWidth: UIScreen.screenWidth - 10).frame( height: 210).background(Color.white).clipShape(RoundedCornerShape(corner: [.topRight,.topLeft], radii: 8)).shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 3)

    }
}

struct HomeMainCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeMainCell()
    }
}
