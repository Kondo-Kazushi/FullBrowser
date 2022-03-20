//
//  ContentView.swift
//  Shared
//
//  Created by 近藤和志 on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var theURL = "https://"
    
    var body: some View {
        NavigationView{
            VStack{
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $theURL)
                    .keyboardType(.URL)
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink("Open", destination: WebpageView(loadUrl: theURL)
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                )
                
            }.padding()
        }.navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
