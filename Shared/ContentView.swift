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
    @AppStorage("version") var version: String = "1.1.0"
    var open = "開く"
    @State private var error = false
    @AppStorage("showname") var showname = true
    
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    if showname == true {
                        Text("\(name)").padding()
                            .font(.title2)
                    }
                    VStack{
                        if theURL.contains(".") {
                            
                        }else {
                            Alert3()
                        }
                        
                        if theURL.contains("http://") {
                            if theURL.contains("."){
                                Alert5(theURL1: $theURL)
                            }
                        }else if theURL.contains("https://") {
                            
                        }else {
                            Alert2()
                        }
                        
                        if theURL.contains("apple.com") {
                            Alert(theURL1: $theURL)
                        }
                        
                        if theURL.contains("jw.org") {
                            Alert6()
                        }
                        
                        if theURL.contains("myna.go.jp") {
                            Alert7()
                        }
                    }
                }
                Spacer()
                TextField("URL", text: $theURL)
                    .font(.title2)
                    .keyboardType(.URL)
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack{
                    Button(action: {
                        self.showingModal.toggle()
                    }) {
                        Image(systemName: "gear.circle").font(.title2)
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
                        Text("\(open)").font(.title2)
                            .bold()
                    }.frame(alignment: .center)
                    Spacer()
                    Button(action: {
                        self.showingModal2.toggle()
                    }) {
                        Image(systemName: "questionmark.circle").font(.title2)
                    }.sheet(isPresented: $showingModal2) {
                        about()
                    }.frame(alignment: .trailing)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }.padding()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
