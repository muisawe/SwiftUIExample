//
//  ContactUsView.swift
//  ProjectManager
//
//  Created by Moumen Alisawe on 7/25/20.
//  Copyright © 2020 moumen. All rights reserved.
//


import SwiftUI

struct ContactUs: View {
    @Binding var showView : Bool
    @State var text:String = ""
    var body: some View {
        VStack(spacing:0){
            NavBarWithBackButtom(title: "اتصل بنا" , action: {
                self.showView.toggle()
                
            }
            ).zIndex(.infinity)
        
            ScrollView(showsIndicators:false){
                VStack(spacing: 20){
                    
                    TFWithImage(title:"hi",icon: "person")
                    
                    TFWithImage(title:"hi",icon: "mobile")
                    
                    TFWithImage(title:"hi",icon: "email")
                        
                    VStack{
                        
                        HStack(alignment:VerticalAlignment.top){
                            Spacer()
                            MultilineTextField("الرسالة", text: $text, onCommit: {
                                print("Final text: \(self.text)")
                            })
                            Image("pencil-edit-button").padding(.top,10)

                        
                        }
                        Spacer()
                    
                    }.frame(height: 120).frame(maxWidth: .infinity).padding().background(Color.gray).clipShape(RoundedCornerShape(corner: .allCorners, radii: 8))
                    
                    
                    
                    
                    BorderButton(action:{
                                        print("hi")
                        
                    },
                    borderColor:.red){
                        Text("Hi")
                    }
                    .frame(width: 240 )
                }.padding(.vertical, 10)
                .padding(.horizontal,20)
                
            }
        }
        //        this three line help the nav bar
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs(showView: .constant(true))
    }
}

