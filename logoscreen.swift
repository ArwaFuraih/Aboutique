//
//  logoscreen.swift
//  Aboutique
//
//  Created by Arwa Alfuraih on 20/01/2022.
//

import SwiftUI

struct logoscreen: View {
    var body: some View {
        ZStack {
            Color(red: 0.902, green: 0.871, blue: 0.843)                        .ignoresSafeArea()
            Image("Alogo")
                .frame(width: 350.0, height: 700.0)
                
            }
    }
}

struct logoscreen_Previews: PreviewProvider {
    static var previews: some View {
        logoscreen()
            
        
    }
}
