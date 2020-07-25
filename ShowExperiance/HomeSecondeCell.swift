//
//  HomeSecondeCell.swift
//  NewWattan
//
//  Created by Moumen Alisawe on 7/1/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI

struct HomeSecondeCell: View {
    @State var isVisibale = false
    var categoryName:String = "category"
    var title:String = "عنوان الخبر"
    private  let cardMaxWidth = UIScreen.screenWidth - 10
    private let cardHeight = UIScreen.screenHeight/5
    var body: some View {
        HStack(){
            Spacer()
            Text(title)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.trailing)
                .padding(.vertical,5)
                .padding(.horizontal,5)
          
            Spacer()
                   ZStack(alignment:.topTrailing){
                    Image("placeholder").resizable().clipShape(RoundedCornerShape(corner: [.topRight,.bottomRight], radii: 8)).frame(width: UIScreen.screenWidth/3)
                    CategoryLabel(categoryName: self.categoryName)
            }
        }.frame(  maxWidth: cardMaxWidth).frame( height: cardHeight).background(Color.white).clipShape(RoundedCornerShape(corner: .allCorners, radii: 8)).shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 3).onAppear {
                withAnimation(.spring(response:0.4 )){
                    self.isVisibale.toggle()
                }
            }
            

    }

    }

struct HomeSecondeCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeSecondeCell()
    }
}
