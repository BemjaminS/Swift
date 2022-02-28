//
//  ContentView.swift
//  SlotMachine
//
//  Created by בן סויסה on 28/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var credit = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        
        
        ZStack{
            LinearGradient(colors: [.red , .yellow], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack(spacing : 30.0){
                Spacer()
                Text("SwiftUi Slots!")
                    .font(.title)
                    .foregroundColor(Color.white)
                Spacer()
                
                Text("Credits:\(credit)")
                    .font(.title2)
                    .foregroundColor(Color.white)
                Spacer()
                
                HStack {
                    Spacer()
                    Image("logo\(slot1)").resizable().aspectRatio( contentMode: .fit)
                    Spacer()
                    Image("logo\(slot2)").resizable().aspectRatio( contentMode: .fit)
                    Spacer()
                    Image("logo\(slot3)").resizable().aspectRatio( contentMode:.fit
                    )
                    Spacer()
                    
                }
                Spacer()
                Button {
                    
                    //Update logo
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    //Update credits
                    
                    if (slot1 == slot2) && (slot2 == slot3){
                        //match
                        credit += 15
                    }
                    else{
                       credit -= 5
                    }
                    
                } label: {
                    Text("Spin")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .padding(.horizontal, 40.0).background(.red)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        
                        
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
