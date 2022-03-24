//
//  DetailView.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var showdetail
    
    var body: some View {
        VStack{
            Text("URLのスキームについて").font(.title)
                .bold()
                .padding()
            Text("記事を準備中")
            Spacer()
            Button("Done") {
                showdetail.wrappedValue.dismiss()
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(25)
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
