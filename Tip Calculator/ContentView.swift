//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Diego Gumbayan on 8/21/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tipPercentage = 0.20
    var body: some View {
        VStack(spacing:12) {
            Text("The Golden Fork")
                .font(.title)
                .bold()
            Text("Thank you for dining with us!")
                .font(.subheadline)
                .foregroundStyle(.gray)
            HStack(spacing: 12){
                Button("15%") {tipPercentage = 0.15}
                Button("18%") {tipPercentage = 0.18}
                Button("20%") {tipPercentage = 0.20}
            }
            .buttonStyle(.bordered)
            Divider()
            HStack{
                Text("Bill")
                Spacer()
                Text("$42.50")
            }
            
            HStack{
        Text("Tip (\(Int(tipPercentage * 100))%")
                Spacer()
                Text("$\(42.50 * tipPercentage, specifier: "%.2f")")
            }
            Divider()
            HStack{
                Text("$\(42.50 + 42.50 * tipPercentage, specifier: "%.2f)")")
                    .bold()
                Spacer()
                Text("$51.00")
                    .bold()
            }
        }
        .padding()
        .frame(width:280)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .shadow(color: .yellow, radius: 5, x: 0, y:3)
            
        )
        
    }
}

#Preview {
    ContentView()
}
