//
//  HomeScreenComponents.swift
//  DrinkingGame
//
//  Created by Marius Bringsvor Rusten on 04/03/2025.
//

import SwiftUI

// MARK: HomeButton
struct HomeButton: View {
    @State private var isTapped = false
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Font.custom("LuckiestGuy-Regular", size: 20))
                .foregroundColor(.white)
                .frame(width: 250, height: 100)
                .background(Color.orange)
                .cornerRadius(15)
                .shadow(radius: 5)
                .padding(2)
        }
        .scaleEffect(isTapped ? 1.2 : 1.0) // Bounce effect
        .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0), value: isTapped)
        .onTapGesture {
            isTapped.toggle()
            
            // Reset animation after delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                isTapped = false
            }
        }
    }
}


// MARK: Title Card
struct HomeTitleCard: View {
    @State private var isTapped = false
    
    var body: some View {
            ZStack {
                Text("All-in!")
                    .font(Font.custom("LuckiestGuy-Regular", size: 86))
                    .foregroundColor(.red)
                    .shadow(color: .red, radius: 10)
                
                Text("all-in!")
                    .font(Font.custom("LuckiestGuy-Regular", size: 80))
                    .foregroundColor(.white)
                    .shadow(color: .red, radius: 10)
            }
            .scaleEffect(isTapped ? 1.2 : 1.0) // Bounce effect
            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0), value: isTapped)
            .onTapGesture {
                isTapped.toggle()
                
                // Reset animation after delay
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    isTapped = false
                }
            }
            .padding(.top)
    }
}

// MARK: Table Edge
struct TableEdge: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 70)
            .stroke(
                Color(hue: 0.085, saturation: 0.688, brightness: 0.249), lineWidth: 30
            )
            .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 5)
            .ignoresSafeArea()
    }
}

// MARK: Under Title Card
struct UnderTitleCard: View {
    @State private var isTapped = false
    
    var body: some View {
        ZStack{
            Text("The all-in-one drinking game!")
                .font(Font.custom("LuckiestGuy-Regular", size: 31))
                .foregroundColor(.red)
                .shadow(color: .red, radius: 10)
            
            Text("The all-in-one drinking game!")
                .font(Font.custom("LuckiestGuy-Regular", size: 30))
                .foregroundColor(.white)
                .shadow(color: .red, radius: 10)
        }
            
        .scaleEffect(isTapped ? 1.2 : 1.0) // Bounce effect
        .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0), value: isTapped)
        .onTapGesture {
            isTapped.toggle()
                    
            // Reset animation after delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                isTapped = false
            }
        }
    }
}

// Preview
struct HomeScreenComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
