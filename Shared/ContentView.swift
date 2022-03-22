//
//  ContentView.swift
//  Shared
//
//  Created by 近藤和志 on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var theURL = "https://"
    @State private var showingModal = false
    @State private var showingModal2 = false
    @Environment(\.presentationMode) var presentation
    @Environment(\.presentationMode) var presentation2
    @AppStorage("name") var name: String = "user"
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text("\(name)さん、ようこそ").padding()
                TextField("URL", text: $theURL)
                    .font(.title)
                    .keyboardType(.URL)
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack{
                    Button(action: {
                        self.showingModal.toggle()
                    }) {
                        Image(systemName: "gear.circle").font(.title)
                    }.sheet(isPresented: $showingModal) {
                        settings()
                    }.frame(alignment: .trailing)
                    
                    Spacer()
                    NavigationLink(destination:
                                    WebView(theURL1: $theURL)
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
                        self.showingModal2.toggle()
                    }) {
                        Image(systemName: "questionmark.circle").font(.title)
                    }.sheet(isPresented: $showingModal2) {
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
