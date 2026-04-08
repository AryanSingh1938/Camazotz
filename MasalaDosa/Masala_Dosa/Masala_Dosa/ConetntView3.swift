//  ContentView3.swift
//  Masala_Dosa
//
//  Created by Kartikey Chaudhary on 08/04/26.
//
import SwiftUI

struct ContentView3: View {
    @State private var meettech: Bool = false
    var temperature: Double
    var weatherCode: Int
    var body: some View {
        ZStack {
            Image("Image 2")
                .resizable() .scaledToFill()
                .ignoresSafeArea()
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("Today's Suggestions")
                    .foregroundColor(.blue)
                    .font(.system(size: 24, weight: .heavy, design: .rounded))
                    
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.gray.opacity(0.6))
                    .shadow(color: .black, radius: 20)
                    .cornerRadius(20)
                    .frame(width: .infinity, height: 300)
                    .padding(.top, 40)
                    .overlay(
                        Text(getSuggestionText(weatherCode: weatherCode,temp: temperature))
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .lineSpacing(6)
                            .clipped()
                    )
            }
        }
    }
    private func getSuggestionText(weatherCode: Int, temp: Double) -> String {
        var suggestion = ""
        
        switch weatherCode {
        case 0:
            suggestion = "The skies are looking mostly clear!"
            
        case 1:
            suggestion = "It's quite foggy out there. Drive safely and keep your headlights on!"
            
        case 2:
            suggestion = "It's wet outside. Don't forget to grab an umbrella or a raincoat before heading out!"
        case 3:
            suggestion = "Snow is expected! Dress warmly in layers and wear appropriate footwear."
        case 4:
            suggestion = "Thunderstorms ahead. It's best to stay indoors if possible and avoid open areas."
        default:
            suggestion = "Have a great day ahead! "
        }
        
        
        if temp < 10 {
            suggestion += "\n\nIt's quite cold today, so make sure to bundle up."
        } else if temp > 25 {
            suggestion += "\n\nIt's warm out, so stay hydrated and wear breathable clothing."
        } else {
            suggestion += "\n\nThe temperature is very comfortable right now."
        }
        
        return suggestion
    }
    
}
