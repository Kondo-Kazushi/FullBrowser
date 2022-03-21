//
//  ContentView.swift
//  Shared
//
//  Created by 近藤和志 on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var theURL = "https://www.jw.org/ja"
    @State private var showingModal = false
    @Environment(\.presentationMode) var presentation

    
    var body: some View {
        NavigationView{
            VStack{
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $theURL)
                    .font(.title)
                    .keyboardType(.URL)
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack{
                    Spacer()
                    NavigationLink(destination:
                                    ZStack{
                        WebView(theURL1: $theURL)
                        
                    }
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    )
                    {
                        Text("開く").font(.title)
                            .bold()
                    }.frame(alignment: .center)
                    Spacer()
                    Button(action: {
                        self.showingModal.toggle()
                    }) {
                        Image(systemName: "questionmark.circle").font(.title)
                    }.sheet(isPresented: $showingModal) {
                        about()
                    }.frame(alignment: .trailing)
                }
            }.padding()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
