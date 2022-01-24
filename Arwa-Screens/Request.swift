//
//  Request.swift
//  Aboutique
//
//  Created by Arwa Alfuraih on 23/01/2022.
//

import SwiftUI

struct Request: View {
    var body: some View {
        
        NavigationView {
            
            VStack{
                Divider()
                ZStack{
                    
                    Color(red: 0.984, green: 0.984, blue: 984).edgesIgnoringSafeArea(.all)

                ScrollView{
                    
                    VStack(spacing : 27){
                        
                        ZStack{
                            VStack{
                                Group{
                            HStack{
                                
                            ZStack{
                            Rectangle()
                                .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(15)
                                .frame(width: 77, height: 69)
                            Image ("SR")
                            }
                            VStack{
                                Text("Styled Revival")
                                    .font(.body)
                                    .padding(.leading, -60)
                                
                                Text("____________________")
                                Text("Chanel Handbag              10,000$")
                                    .font(.caption2)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                               
                            }
                                
                            }//pic and title
                                }//group
                                HStack(spacing : 50){
                                Text("Request Date :")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -50)
                                    Text("12/4/2021")
                                        .foregroundColor(Color.gray)
                                }
                                HStack{
                                Text("Request Status : ")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -3)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 11)
                                                    .foregroundColor(Color(red: 0.968, green: 0.88, blue: 0.7))
                                                    .frame(width: 147, height: 32)
                                        Text("Pending...")
                                            .font(.callout)
                                            .foregroundColor(Color.gray)

                                    }//pending shape
                                }
                            }
                        RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color(red: 0.902, green: 0.871, blue: 0.843), lineWidth: 2)
                                    .frame(width: 322, height: 194)

                        }//pending
                        
                        
 //--------------------
                        
                        ZStack{
                            VStack{
                            Group{
                        HStack{
                            
                        ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 77, height: 69)
                        Image ("Charles")
                        }
                        VStack{
                            Text("Charles")
                                .font(.body)
                                .padding(.leading, -85)
                            
                            Text("____________________")
                            Text("Large Classic Chanel       20,000$")
                                .font(.caption2)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                           
                        }
                            
                        }//pic and title
                            }//group
                            
                            
                                HStack(spacing : 60){
                                Text("Request Date :")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -50)
                                    Text("4/4/2021")
                                        .foregroundColor(Color.gray)
                                }
                                HStack{
                                Text("Request Status : ")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -3)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 11)
                                            .foregroundColor(Color(red: 0.788, green: 0.872, blue: 0.824))
                                                    .frame(width: 147, height: 32)
                                        Text("Accepted")
                                            .font(.callout)

                                    }//pending shape
                                    
                                }
                                .padding(.bottom, 20.0)

                                ZStack{
                                    
                                    Rectangle()
                                    .cornerRadius(15)
                                    .frame(width: 267, height: 39)
                                    Text("Complete your order")
                                        .foregroundColor(Color.white)
                                    
                                }
                            }
                            RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color(red: 0.902, green: 0.871, blue: 0.843), lineWidth: 2)
                                        .frame(width: 322, height: 268)
                            
                        }//Accepted
                        
    //-----------------
                        
                        ZStack{
                            VStack{
                            Group{
                        HStack{
                            
                        ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 77, height: 69)
                        Image ("Charles")
                        }
                        VStack{
                            Text("Julia Garlfelder")
                                .font(.body)
                                .padding(.leading, -85)
                            
                            Text("____________________")
                            Text("Large Classic Chanel       20,000$")
                                .font(.caption2)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                           
                        }
                            
                        }//pic and title
                            }//group
                            
                            
                                HStack(spacing : 60){
                                Text("Request Date :")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -50)
                                    Text("4/4/2021")
                                        .foregroundColor(Color.gray)
                                }
                                HStack{
                                Text("Request Status : ")
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -3)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 11)
                                            .foregroundColor(Color(red: 0.788, green: 0.872, blue: 0.824))
                                                    .frame(width: 147, height: 32)
                                        Text("Accepted")
                                            .font(.callout)

                                    }//pending shape
                                    
                                }
                                .padding(.bottom, 20.0)

                                ZStack{
                                    
                                    Rectangle()
                                    .cornerRadius(15)
                                    .frame(width: 267, height: 39)
                                    Text("Complete your order")
                                        .foregroundColor(Color.white)
                                    
                                }
                            }
                            RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color(red: 0.902, green: 0.871, blue: 0.843), lineWidth: 2)
                                        .frame(width: 322, height: 268)
                            
                        }//Declined
                        
                        
                        
                    }//overall VStack
                    
                }//scroll view
                
            }
                
            }//Zstack for backgroundcolor
            
            .navigationBarTitle("Requests" , displayMode: .inline )
      
        }
   
    }//body
}// View

struct Request_Previews: PreviewProvider {
    static var previews: some View {
        Request()
            //.background(Color(red: 0.902, green: 0.871, blue: 0.843))

    }
}

