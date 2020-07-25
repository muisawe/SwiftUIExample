//
//  DatePickerGrapocaly.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showView = false

        
    
    
    var body: some View {
        NavigationView{
        VStack(spacing:0){
            


            NavBar{
                HStack{
                    Spacer()
                NavigationLink(destination:                    ContactUs(showView: self.$showView),isActive : self.$showView){
                    Image(systemName: "paperplane.fill").foregroundColor(.white)
                    
                }
                        

             }
                
            }.zIndex(.infinity)
            
           
            ScrollView{
            VStack(spacing: 20){
            Slider()

                    
                ForEach(0..<10){ i in
                    if i % 4 == 0 {
                            
                            HomeMainCell().padding(.horizontal)
                            
                        
                        
                    }else{
                        HomeSecondeCell().padding(.horizontal)
                    }
                }
            
            
            }
            
        }
        }
//        this three line help the nav bar
        .background(Color.black.opacity(0.05)
        .edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea([.top, .bottom])

        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environment(\.sizeCategory, .medium)
            
    }
}

