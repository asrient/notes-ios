//
//  ContentView.swift
//  Shared
//
//  Created by Aritra Sen on 29/11/20.
//

import SwiftUI

struct Sec1: View {
    var show=true
    init(_ show:Bool){
        self.show=show
    }
    var body: some View {
        if self.show{
            List {
                    Text("Charmander")
                    Text("Squirtle")
                    Text("Bulbasaur")
                    Text("Pikachu")
                  }
        }
    }
}

struct ContentView: View {
    @State var show:Bool=false
    @EnvironmentObject var state: GlobalStore
    var body: some View {
        VStack{
            Text("Notes")
            .font(.headline)
            .fontWeight(.heavy)
            .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.11, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
            .padding()
                Text("Asrient's studio \(state.count)")
            Button(action: {
                self.show = !self.show
                print("Clicked!")
                state.count+=1
            }){
                Label("Lightning", systemImage: "bolt.fill")
            }
            .padding(.vertical,12.0)
            
        }.sheet(isPresented: self.$show) {
            // show the add user view
            List {
                    Text("Charmander")
                    Text("Bello")
                    Text("Bulbasaur")
                    Text("Pikachu")
                  }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(GlobalStore())
        }
    }
}
