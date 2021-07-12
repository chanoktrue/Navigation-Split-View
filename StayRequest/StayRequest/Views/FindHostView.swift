//
//  FindHostView.swift
//  StayRequest
//
//  Created by Thongchai Subsaidee on 12/7/2564 BE.
//

import SwiftUI

struct FindHostView: View {
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHGrid(rows: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(0..<25, id: \.self) { item in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                            .padding(.horizontal, 5)
                            .overlay(
                                Text("\(item)")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontWeight(.bold)
                            )
                    }
                }
                
            }
            .frame(height: 340)
            Spacer()
        }
        .navigationBarTitle(Text("Find a host"))
        
    }
}

struct FindHostView_Previews: PreviewProvider { 
    static var previews: some View {
        FindHostView()
    }
}
