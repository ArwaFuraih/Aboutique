//
//  Brands.swift
//  Aboutique
//
//  Created by Arwa Alfuraih on 19/01/2022.
//

import SwiftUI

struct Event: Identifiable {
    let id: Int
    let city: String
    let pic: Image
    let color: Color
}

let events = [
    Event(id: 0, city: "paris", pic: Image("paris2") , color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Event(id: 2, city: "London", pic: Image("london-2"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Event(id: 1, city: "Munich", pic: Image("munich-2"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Event(id: 3, city: "Italy", pic: Image("italy-2"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
]



struct Brand: Identifiable {
    let id : Int
    let pic: Image
    let color: Color
}

let brands1 = [
    Brand(id: 0, pic: Image("chanellogo") , color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Brand(id: 2, pic: Image("pradalogo"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Brand(id: 1, pic: Image("lvlogo"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
]


let brands2 = [
    Brand(id: 0, pic: Image("diorlogo") , color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Brand(id: 2, pic: Image("hermeslogo"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
    Brand(id: 1, pic: Image("guccilogo"), color: Color(red: 0.902, green: 0.871, blue: 0.843)),
]


struct Brands: View {
    
    @State private var searchText = ""
    @State var id = 0
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading){
                
                Divider()
                
                //
                //                Text("Shop by Cities\(searchText)")
                //                                .searchable(text: $searchText)
                
                
                Text("Shop by Cities")
                
                //----------scroll view
                ScrollView(.horizontal , showsIndicators: false) {
                    HStack {
                        ForEach(events) { event in
                         
                            NavigationLink (destination: Shoppers(id: event.id) , label: {
                                                VStack {
                                Text(event.pic)
                                //.shadow(color: Color("lightShadow"), radius: 0, x: 0, y: -15 ); blur(radius: 15)
                                
                                
                                Text(event.city)
                                    .font(.system(.callout))
                                
                            }
                                                .padding(2)
                                                .background(event.color)
                                                .cornerRadius(11)
                                                .scaledToFit()
                            }
                                             
                                            )
//
                                              
                            
                            
                        }
                        
                    }
                }//city scroll view
                .padding()
                
                Text("Shop by Brands")
                
                
                
                //----------brands stack
                
                //            HStack {
                //                ForEach(brands1) { brand in
                //                    VStack {
                //                        Text(brand.pic)
                //                            //.shadow(color: Color("lightShadow"), radius: 0, x: 0, y: -15 ); blur(radius: 15)
                //
                //                    }
                //                    .padding(2)
                //                    .background(brand.color)
                //                    .cornerRadius(11)
                //                    .scaledToFit()
                //
                //                }
                //
                //            }//brands Hstack
                
                //                HStack {
                //                    ForEach(brands2) { brand in
                //                        VStack {
                //                            Text(brand.pic)
                //                                //.shadow(color: Color("lightShadow"), radius: 0, x: 0, y: -15 ); blur(radius: 15)
                //
                //                        }
                //                        .padding(2)
                //                        .background(brand.color)
                //                        .cornerRadius(11)
                //                        .scaledToFit()
                //
                //                    }
                //
                //                }//brands Hstack
                
                
                
                HStack{
                    
                    
                    
                    //Navigate to Homepage
                    NavigationLink(destination: Splash()){
                        ZStack{
                            Rectangle()
                                .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(15)
                                .frame(width: 115.0, height: 69.0)
                            Image ("chenellogo")
                            
                        }
                    }
                    
                    
                    ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 115.0, height: 69.0)
                        Image ("pradalogo")
                    }
                    
                    ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 115.0, height: 69.0)
                        Image ("lvlogo")
                    }
                    
                }//Hstack brands1
                
                HStack{
                    
                    ZStack{
                        Rectangle()
                            .fill(Color(red: 0.902, green: 0.871, blue: 0.843))
                            .cornerRadius(15)
                            .frame(width: 115.0, height: 69.0)
                        Image ("diorlogo")
                    }
                    
                    
                    ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 115.0, height: 69.0)
                        Image ("hermeslogo")
                    }
                    
                    ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 115.0, height: 69.0)
                        Image ("guccilogo")
                    }
                    
                }//Hstack brands2
                .padding(.top)
                
                
                
                Text("Shop Others")
                
                //-------------others stack
                
                HStack{
                    
                    ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 169, height: 108)
                        Image ("Applelogo")
                    }
                    
                    
                    ZStack{
                        Rectangle()
                            .fill(/*@START_MENU_TOKEN@*/Color(red: 0.902, green: 0.871, blue: 0.843)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .frame(width: 169, height: 108)
                        Image ("tiffanylogo")
                    }
                    
                }//others stack
                
                
                
                
                .navigationBarTitle("Aboutique" , displayMode: .inline )
            }
            .padding()//navigation
            
        }//Vstack -all-
        
    }//body
}//view



//inner shadow code
struct InnerShadowModifier: ViewModifier {
    @State var radius: CGFloat = 10
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(Color("bgColor"), lineWidth: 4)
                    .shadow(color: Color("darkShadow"), radius: 4, x: 5, y: 5)
                    .clipShape(RoundedRectangle(cornerRadius: radius))
                    .shadow(color: Color("lightShadow"), radius: 4, x: -5, y: -5)
                    .clipShape(RoundedRectangle(cornerRadius: radius)
                              ))
    }
}

struct Brands_Previews: PreviewProvider {
    static var previews: some View {
        Brands()
    }
}
