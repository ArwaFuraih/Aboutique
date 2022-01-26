//
//  ContentView.swift
//  VOLY
//
//  Created by alya almutairi on 17/06/1443 AH.
//

import SwiftUI
import iPaymentButton
struct ContentView: View {
    @State private var username: String = ""
    @State private var sername: String = ""
    @State private var ername: String = ""
    @State private var name: String = ""
    @State private var rname: String = ""
    @State private var ame: String = ""
    @State private var me: String = ""
    @State private var e: String = ""
    var body: some View {
        NavigationView{
            
                VStack(alignment: .leading){
                    
                   
                    Form{
                        Section(header: Text("product information")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.515, green: 0.51, blue: 0.505))){
                            HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .padding(.leading, -22.0)
                                    .frame(width: 137, height: 125)
                                    .foregroundColor(Color(red: 0.853, green: 0.818, blue: 0.793))
                                
                                    
                                             Image("you")
                                    .resizable()
                                    .padding(.leading, -7.0)
                                    .frame(width: 173, height: 175)
                                    
                                    
                            }
                                VStack{
                                    
                                    Text("Large Classic Chanel handbag")
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, -6.0)
                                    
                                    
                                    Text("Purchaced by: Charles")
                                        .fontWeight(.regular)
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, -42.0)
                                    Text("Price: 35,600 SAR")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, -14.0)
                                }
                                
                            }
                        
                        }
                        Section(header: Text("Order Summarry")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.515, green: 0.51, blue: 0.505))){
                            VStack(spacing: 20){
                            HStack{
                            Text("Price:")
                                .fontWeight(.light)
                                Spacer()
                                Text("35,600 SAR")
                                    .fontWeight(.light)
                            }
                                HStack{
                                    Text("VAT:")
                                    .fontWeight(.light)
                                    Spacer()
                                    Text("5,340 SAR")
                                        .fontWeight(.light)
                                }
                                HStack{
                                    Text("PS Commission:")
                                    .fontWeight(.light)
                                    Spacer()
                                    Text("500 SAR")
                                        .fontWeight(.light)
                                }
                                HStack{
                                    Text("Total:")
                                    .fontWeight(.light)
                                    Spacer()
                                    Text("41,400 SAR")
                                        .fontWeight(.light)
                                }

                            
                            
                            
                            
                        }
                        }
                        
                        
                        Section(header: Text("SHIPPING ADDRESS")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.515, green: 0.51, blue: 0.505))){
                                VStack(spacing: 16){
                                HStack{
                                Text("Billing Address")
                                    .fontWeight(.light)
                                    Spacer()
                                    TextField("Billing Address", text: $username)
                                        .frame(width: 120, height: 35.0)
                                }
                                    HStack{
                                        Text("City")
                                        .fontWeight(.light)
                                        Spacer()
                                        TextField("City", text: $sername)
                                            .frame(width: 120, height: 35.0)
                                    }
                                    HStack{
                                        Text("State")
                                        .fontWeight(.light)
                                        Spacer()
                                        TextField("State", text: $ername)
                                            .frame(width: 120, height: 35.0)
                                    }
                                    HStack{
                                        Text("Postal Code")
                                        .fontWeight(.light)
                                        Spacer()
                                        TextField("Postal Code", text: $name)
                                            .frame(width: 120, height: 35.0)
                                    }}  }
                        
                        Section(header: Text("Payment Type")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.515, green: 0.51, blue: 0.505))){
                            VStack(spacing: 16){
                            HStack{
                            Text("Card Number")
                                .fontWeight(.light)
                                Spacer()
                                TextField("Card Number", text: $rname)
                                    .frame(width: 120, height: 35.0)
                            }
                                HStack{
                                    Text("Card Name")
                                    .fontWeight(.light)
                                    Spacer()
                                    TextField("Card Name", text: $ame)
                                        .frame(width: 120, height: 35.0)
                                }
                                HStack{
                                    Text("Expiration")
                                    .fontWeight(.light)
                                    Spacer()
                                    TextField("(MM/YY)", text: $me)
                                        .frame(width: 120, height: 35.0)
                                }
                                HStack{
                                    Text("CCV")
                                    .fontWeight(.light)
                                    Spacer()
                                    TextField("CCV", text: $e)
                                        .frame(width: 120, height: 35.0)
                                }}  }
                        
                        
                        Section(header: Text("we accpet")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.515, green: 0.51, blue: 0.505)))
                {
                            HStack(alignment: .center, spacing: 37){
                                Image("mada")
                                    .resizable()
                                    .frame(width: 50, height: 70)
                                Image("master")
                                Image("pal")
                                Image("visa")
                                
                                
                                
                            }
                        
                     
                            
                        
                        }
                        
                        VStack(spacing: 10){
                            
                            
                            Button(action: {
                                print("")
                            }) {
                                Text("Place Order")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 269, height: 55)
                                    .foregroundColor(.black)
                                    .background(Color(red: 0.853, green: 0.818, blue: 0.789))
                                    .cornerRadius(11)
                                    .padding()
                                ZStack{
                                    
                                RoundedRectangle(cornerRadius: 25)
                                        .foregroundColor(Color(red: 0.949, green: 0.949, blue: 0.97))
                                    .frame(width: 50, height: 40)
                                    
                                    
                                    
                                    Text("OR")
                                        .foregroundColor(Color.black)
                                        
                                }.padding(.bottom, 21.0)
                                
                                Spacer()
                                iPaymentButton{
                                    iPaymentButton.applePayDemo()
                                        
                                }.cornerRadius(11)
                                    .frame(width: 269, height: 46)
                                    .padding(.bottom)
                                
                                

                                       
                                
                            }
                            
                            
                        }
                        
                    }
                   }
           
                    
                  
                    
                    
                    
                    
                    
                    
                    
                    
                    
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
           
            
            
            .navigationBarTitle("Placing Order" , displayMode: .inline)
            
            
            }
        }
    
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
