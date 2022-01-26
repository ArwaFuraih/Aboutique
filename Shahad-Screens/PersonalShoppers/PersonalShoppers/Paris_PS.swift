//
//  Paris_PS.swift
//  PersonalShoppers
//
//  Created by Shahad on 22/06/1443 AH.
//

import SwiftUI

struct Paris_PS: View {
    var body: some View {
        Home2().edgesIgnoringSafeArea(.all)
    }
}

struct Paris_PS_Previews: PreviewProvider {
    static var previews: some View {
        Paris_PS()
    }
}

struct Home2 : View {
    @State var SearchingFor = ""
    @State var selected = "row"
     
    var body : some View{
        NavigationView{
            
        VStack{
            
            ZStack{
                
                HStack{
                    //search
                //    List{
                //        ForEach(results ,id: \.self){ city in
                  //          NavigationLink(destination: Text(city)){
                    //            Text(city)
                      //      }
                            
                       // }
                    //}
                    //hereeeeeee the search%%%%%%
                    
                    Text("")
                    .searchable(text: $SearchingFor)
                    
                    //ForEach(rowData.filter({"\($0)".contains(SearchingFor.lowercased()) || SearchingFor.isEmpty})){ i in
                       
                   // }
                    
                    //endsearch
//                    Button(action: {
//
//
//
//                    }) {
//
//
//
//                     //   Image("settings").resizable().frame(width: 25, height: 25).foregroundColor(Color.black.opacity(0.2))
//                    }
//                    .offset(y: -15)
                    
                    Spacer()
                    
//                    Button(action: {
//
//                    }) {
//
//                        Image("search").resizable().frame(width: 25, height: 25).foregroundColor(Color.black.opacity(0.2))
//                    }
//                    .offset(y: -15)
                }
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                        self.selected = "row"
                        
                    }) {
                        
                        VStack{
                            
                            Image(systemName: "rectangle.grid.1x2")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(self.selected == "row" ? Color.black : Color.black.opacity(0.2))
                            
                            Circle().fill(self.selected == "row" ? Color.black : Color.clear).frame(width: 5, height: 5).padding(.vertical,4.0)
                        }

                    }
                    
                    Button(action: {
                        
                        self.selected = "grid"
                        
                    }) {
                        
                        VStack{
                            
                            Image(systemName: "rectangle.grid.2x2")
                                .resizable(capInsets: EdgeInsets())
                                .frame(width: 25.0, height: 25)
                                .foregroundColor(self.selected == "grid" ? Color.black : Color.black.opacity(0.2))
                            
                            Circle().fill(self.selected == "grid" ? Color.black : Color.clear).frame(width: 5, height: 5).padding(.vertical,4)
                        }
                      //  .padding(.trailing, 280.0)
  
                    }
                }
                
            }.padding([.top,.horizontal], -25.0)
            .background(Color.white)
            
           
            
            ScrollView(.vertical, showsIndicators: false) {
                
                if self.selected == "row"{
                    
                    RowView_Paris()
                }
                else{
                    
                    GridView_Paris()
                }
            }
            
        }.background(Color("Color"))
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        .padding(.bottom,10)
            
        .navigationTitle("Personal Shoppers")
               .navigationBarTitleDisplayMode(.inline)
    }
}
    //search
   // var results: [String]{
     //   if SearchingFor.isEmpty {
       //     return cities
       // } else {
         //   return cities.filter { $0.contains(SearchingFor)}
      //  }
        
        
    }
    //endsearch

struct RowView_Paris : View {
   // @State var SearchingFor = ""
    var body : some View{
      
        
        
        VStack(spacing: 18){
            //search for row
         //   Text("")
           // .searchable(text: $SearchingFor)
           // ForEach(rowData.filter({"\($0)".contains(SearchingFor.lowercased()) || SearchingFor.isEmpty})){ s in
                //search for row
            
            ForEach(rowData_Paris){i in
                
                VStack{
                    
                    Image(i.pic).resizable().frame( height: 200)
                        
                        .background(Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255))
                        
                    //Divider()
                    HStack{
                        
                        
                        Text(i.name).font(.title)
                        VStack{
                            
                        Text(i.city)
                            .font(.callout)
                            .foregroundColor(Color.gray)
                            .padding(.trailing)
                        }
                            

                        Spacer(minLength: 0)
                        
                        
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("􀋃").renderingMode(.original)
                        }
                        Text(i.likes)
                        
                    }.padding()
                    
                }.background(Color.white)
                .cornerRadius(11)
            }
            
        }.padding()
    }
    //}  //end search for row
}

struct GridView_Paris : View {
  
    var body : some View{
   
        VStack(spacing: 18){
          
            ForEach(gridData_Paris){i in
              
                HStack(spacing: 15){
                    
                    ForEach(i.rows){j in
                        
                        VStack(spacing: 5){
                            
                            Image(j.pic).resizable().frame(height: 100)
                                .frame(width: 142.67, height: 107)
                                .padding(.bottom, 8.0)
                                .padding()
                                .background(Color(red: 230 / 255, green: 222 / 255, blue: 215 / 255))
                            
                            HStack{
                                
                                Text(j.name)
                                
                                Spacer(minLength: 0)
                              
                            }.padding(.horizontal)
                            VStack{
                                Text(j.city)
                                    .font(.callout)
                                    .foregroundColor(Color.gray)
                                .padding(.trailing, 90.0)}
                            
                            
                            HStack{
                                
                                Spacer()
                                
                               
                                
                                Button(action: {
                                    
                                }) {
                                    
                                    Image("􀋃").renderingMode(.original)
                                }
                                Text(j.likes)
                            }.padding([.horizontal,.bottom])
                        }.background(Color.white)
                        .cornerRadius(11)
                    }
                }
            }
            
        }.padding()
    }
    
}



struct DataType_Paris : Identifiable {
    
    var id : Int
    var rows : [row]
}

struct row_Paris : Identifiable {
    
    var id : Int
    var name : String
    var city : String
    var pic : String
    var likes : String
}

// sample data...

var gridData_Paris = [
    
    DataType_Paris(id: 0, rows:
    
            [row(id: 0, name: "Julia Gartfelder", city: "Paris" , pic: "Julia", likes: "4.1"),
             row(id: 1, name: "The Huntress", city: "Paris" , pic: "The Huntress", likes: "4.6")]
),

    DataType_Paris(id: 1, rows:
    [row(id: 0, name: "Emma Leblanc", city: "Paris" , pic: "Emma Leblanc", likes: "4.5"),
     row(id: 1, name: "An Eye for Detail", city: "Paris" , pic: "An Eye for Detail", likes: "4.4")]
)




    
]

var rowData_Paris = [
    
row(id: 0, name: "Julia Gartfelder", city: "Paris" , pic: "Julia", likes: "4.1"),
row(id: 1, name: "The Huntress", city: "Paris" , pic: "The Huntress", likes: "4.6"),

row(id: 2,  name: "Emma Leblanc", city: "Paris" , pic: "Emma Leblanc", likes: "4.5"),
row(id: 3, name: "An Eye for Detail", city: "Paris" , pic: "An Eye for Detail", likes: "4.4")

    
]

