//
//  WebView.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/21.
//

import SwiftUI

struct WebView: View {
    @Environment(\.presentationMode) var presentation
    @Binding var theURL1: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            WebpageView(loadUrl: theURL1)
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.bin.fill")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(25)
            }).padding()
            Spacer()
            
            
        }
    }
}
