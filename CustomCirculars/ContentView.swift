//
//  ContentView.swift
//  CustomCirculars
//
//  Created by Atil Samancioglu on 7.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0

    
    var body: some View {
        ZStack{
            Circular(lineWidth: 40,
                     backgroundColor: Color.blue.opacity(0.2),
                     foregroundColor: Color.blue,
                     percentage: firstCirclePercentage
            )
            .frame(width: 350, height: 350)
            .onTapGesture {
                if self.firstCirclePercentage == 0 {
                    self.firstCirclePercentage = 50
                } else {
                    self.firstCirclePercentage = 0
                }
            }
            
            Circular(lineWidth: 40,
                     backgroundColor: Color.red.opacity(0.2),
                     foregroundColor: Color.red,
                     percentage: secondCirclePercentage
            )
            .frame(width: 250, height: 250)
            .onTapGesture {
                if self.secondCirclePercentage == 0 {
                    self.secondCirclePercentage = 75
                } else {
                    self.secondCirclePercentage = 0
                }
            }
            
            Circular(lineWidth: 40,
                     backgroundColor: Color.green.opacity(0.2),
                     foregroundColor: Color.green,
                     percentage: thirdCirclePercentage
            )
            .frame(width: 150, height: 150)
            .onTapGesture {
                if self.thirdCirclePercentage == 0 {
                    self.thirdCirclePercentage = 100
                } else {
                    self.thirdCirclePercentage = 0
                }
            }
            
     
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
