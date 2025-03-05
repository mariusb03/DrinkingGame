//
//  HomeScreenView.swift
//  "Drinkingapp"
//
//  Created by Marius Bringsvor Rusten on 04/03/2025.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var isTapped = false
    var body: some View {
        ZStack {
            
            HomeBackground()
            
            VStack(spacing: 20) {
                
                HomeTitleCard()
                
                UnderTitleCard()
                
                HStack(spacing: 20) {
                    HomeButton(title: "single phone") {
                        print("Navigate to Single Device Mode")
                    }
                    
                    HomeButton(title: "Multiple Phones") {
                        print("Navigate to Multiplayer Mode")
                    }
                }
            }
        }
        .overlay(
            TableEdge()
        )
    }
}


// 🛠 Preview
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

