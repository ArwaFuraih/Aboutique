//
//  SwiftUIView5.swift
//  VOLY
//
//  Created by alya almutairi on 21/06/1443 AH.
//

import SwiftUI

struct SwiftUIView5: View {
    @State private var usernam: String = ""
    @State private var userna: String = ""
    @State private var usern: String = ""
    @State var stepperValue: Int = 0
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255)
                VStack(spacing: 13){
                    
                    
                    
                    Text("CHOOSE YOUR BRANDS")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.515, green: 0.51, blue: 0.505))
                        .padding(.leading, -150.0)
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 357, height: 110)
                            .foregroundColor(.white)
                        
   
                        
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 11)
                                    .frame(width: 101.44, height: 75)
                                    .foregroundColor(Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255))
                                Image("ch")
                                    .resizable()
                                    .frame(width: 68, height: 45)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 11)
                                    .frame(width: 101.44, height: 75)
                                    .foregroundColor(Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255))
                                Image("pra")
                                    .resizable()
                                    .frame(width: 85, height: 29)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 11)
                                    .frame(width: 101.44, height: 75)
                                    .foregroundColor(Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255))
                                Image("lo")
                                    .resizable()
                                    .frame(width: 60, height: 49)
                                
                                
                            }
                            
                        }
                        
                        
                    }
                    
                    Form{
                        
                        
                        Section(header:Text("order information")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("re"))
                        ){
                            
                            TextField("Order name", text: $usernam)
                                .frame(width: 180, height: 40.0)
                            Stepper(" Quantity \(stepperValue)", value: $stepperValue)
                                .foregroundColor(.black)
                            ZStack{
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(Color.black)
                                
                                TextField("Upload product picture", text: $userna)
                                .frame(width: 600, height: 40.0)}
                            
                            TextField("Write your notes here", text: $usern)
                            
                                .frame(width: 180, height: 180.0)
                            
                            
                            
                        }
                        
                        
                        Button(action: {
                            print("")
                        }) {
                            Text("Send Request")
                                .font(.title2)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .frame(width: 268, height: 55)
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(11)
                                .padding()
                        }

                    }
                }.background(Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255))
                
                
            }
            .navigationBarTitle("Request Order" , displayMode: .inline)
        }
        
        
    }
}


struct SwiftUIView5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView5()
    }
}
