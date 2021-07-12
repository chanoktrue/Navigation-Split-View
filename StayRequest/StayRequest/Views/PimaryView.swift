//
//  PimaryView.swift
//  StayRequest
//
//  Created by Thongchai Subsaidee on 12/7/2564 BE.
//

import SwiftUI

struct PimaryView: View {
    
    //    @EnvironmentObject var requestVM: RequestViewModel
    
    @StateObject var requestVM = RequestViewModel()
    
    var body: some View {
        
        VStack {
            List(requestVM.requests) { item in
                VStack(alignment: .leading) {
                    HStack {
                        Circle()
                            .fill(Color("\(item.approval)"))
                            .frame(width: 20, height: 20)
                        
                        Text(item.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    Text("\(item.startDate) - \(item.endDate)")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray )
                    
                    Text(item.request)
                        .lineLimit(3)
                        .padding(.top, 5)
                }
            }
            .listStyle(PlainListStyle())
            
            HStack {
                NavigationLink(
                    destination: FindHostView(),
                    label: {
                        Text("Find another host")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(color: Color.blue.opacity(0.4), radius: 10, x: 0.0, y: 10.0)
                    })
            }
            .padding(.horizontal )
        }
    }
}

struct PimaryView_Previews: PreviewProvider {
    static var previews: some View {
        PimaryView()
    }
}
