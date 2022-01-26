//
//  ContentView.swift
//  PersonalShoppers
//
//  Created by Shahad on 17/06/1443 AH.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home().edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    @State var SearchingFor = ""
    @State var selected = "row"
     
    var body : some View{
        NavigationView{
            
        VStack{
            
            ZStack{
                
                HStack{
                    //search
                //    List{
              //  ForEach(results ,id: \.self){ city in
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
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(self.selected == "grid" ? Color.black : Color.black.opacity(0.2))
                            
                            Circle().fill(self.selected == "grid" ? Color.black : Color.clear).frame(width: 5, height: 5).padding(.vertical,4)
                        }
  
                    }
                }
                
            }.padding([.top,.horizontal], -25.0)
            .background(Color.white)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                if self.selected == "row"{
                    
                    RowView()
                }
                else{
                    
                    GridView()
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


struct RowView : View {
   // @State var SearchingFor = ""
    var body : some View{
      
        
        
        VStack(spacing: 18){
            //search for row
         //   Text("")
           // .searchable(text: $SearchingFor)
           // ForEach(rowData.filter({"\($0)".contains(SearchingFor.lowercased()) || SearchingFor.isEmpty})){ s in
                //search for row
            
            ForEach(rowData){i in
                
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

struct GridView : View {
  
    var body : some View{
   
        VStack(spacing: 18){
          
            ForEach(gridData){i in
              
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

struct DataType : Identifiable {
    
    var id : Int
    var rows : [row]
}

struct row : Identifiable {
    
    var id : Int
    var name : String
    var city : String
    var pic : String
    var likes : String
}

// sample data...

var gridData = [
    
DataType(id: 0, rows:
    
            [row(id: 0, name: "Antonia Foyle", city: "Munich" , pic: "AF", likes: "4.2"),
             row(id: 1, name: "Julia Gartfelder", city: "Paris" , pic: "Julia", likes: "4.1")]
),

DataType(id: 1, rows:
    [row(id: 0, name: "Dalle Piane ", city: "Rome" , pic: "Dp", likes: "4.5"),
     row(id: 1, name: "Charles", city: "London" , pic: "Charles", likes: "4.0")]
),

DataType(id: 2, rows: [row(id: 0, name: "The Huntress", city: "Paris" , pic: "The Huntress", likes: "4.6"),
    row(id: 1, name: "Emma Leblanc", city: "Paris" , pic: "Emma Leblanc", likes: "3.9")]
),

DataType(id: 3, rows: [row(id: 0, name: "Styled Revival", city: "New York" , pic: "SR", likes: "3.5"),
        row(id: 1, name: "An Eye for Detail", city: "Paris" , pic: "An Eye for Detail", likes: "4.4")]
)
    
]

var rowData = [
    
row(id: 0, name: "Antonia Foyle", city: "Munich" , pic: "AF", likes: "4.2"),
row(id: 1, name: "Julia Gartfelder", city: "Paris" , pic: "Julia", likes: "4.1"),

row(id: 2, name: "Dalle Piane ", city: "Rome" , pic: "Dp", likes: "4.5"),
row(id: 3, name: "Charles", city: "London" , pic: "Charles", likes: "4.0"),

row(id: 4, name: "The Huntress", city: "Paris" , pic: "The Huntress", likes: "4.6"),
row(id: 5, name: "Emma Leblanc", city: "Paris" , pic: "Emma Leblanc", likes: "3.9"),
row(id: 6, name: "Styled Revival", city: "New York" , pic: "SR", likes: "3.5"),
row(id: 7, name: "An Eye for Detail", city: "Paris" , pic: "An Eye for Detail", likes: "4.4")
    
]
