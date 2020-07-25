//
//  TFWithImage.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI


struct TFWithImage: View {
    @State var data =  ""
    let title:String
    let icon:String
    
    
    
  
    var body: some View {
        
        HStack( spacing: 20){
   
            
            TextField(title, text: $data).multilineTextAlignment(.trailing)
                

            Image( icon).foregroundColor(Color.gray)
        }.padding()
        
        .background(Color.gray)
        
        .cornerRadius(10)
    }
}

struct TFWithImage_Previews: PreviewProvider {
    static var previews: some View {
        TFWithImage(title:"title",icon: "lock.fill").previewLayout(.fixed(width: 320, height: 0))
    }
}
