//
//  ContentView.swift
//  TransitionBootCamp
//
//  Created by Bishowjit Ray on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
              
            }
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                                           ))
                   // .transition(AnyTransition.scale.animation(.easeInOut))
                  //.animation(.easeInOut)
            }
           
          
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
