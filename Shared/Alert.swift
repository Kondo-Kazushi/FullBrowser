//
//  Alert.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/23.
//

import SwiftUI

struct Alert: View {
    
    @Binding var theURL1: String
    
    var body: some View {
        ZStack{
            AlertMessage(theURL1: $theURL1)
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage(theURL1: $theURL1)
            
        }.padding()
    }
}

struct AlertMessage: View {
    
    @Binding var theURL1: String
    
    var body: some View {
        
        VStack{
            Image(systemName: "exclamationmark.triangle.fill").font(.largeTitle)
                .foregroundColor(Color.red)
            Text("\(theURL1)").font(.title)
                .foregroundColor(Color.black)
                .padding()
            Text("は正常に表示されない可能性があります").font(.title2)
                .foregroundColor(Color.black)
            if let url = URL(string: theURL1) {
                Link(destination: url){
                    Text("デフォルトのブラウザで開く").font(.title2)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(25)
                }
            }
        }
    }
}

struct Alert2: View {
    
    @Binding var theURL1: String
    
    var body: some View {
        ZStack{
            AlertMessage2(theURL1: $theURL1)
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage2(theURL1: $theURL1)
            
        }.padding()
    }
}

struct AlertMessage2: View {
    
    @Binding var theURL1: String
    
    var body: some View {
        
        VStack{
            Image(systemName: "exclamationmark.triangle.fill").font(.largeTitle)
                .foregroundColor(Color.red)
            Text("\(theURL1)").font(.title)
                .foregroundColor(Color.black)
                .padding()
            Text("はURLとして正しくないと思われるため開けない可能性があります").font(.title2)
                .foregroundColor(Color.black)
        }
    }
}

