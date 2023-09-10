//
//  MyView.swift
//  Presentation
//
//  Created by 현수빈 on 2023/08/20.
//

import SwiftUI

public struct MyView: View {
    @available(iOS 14.0, *)
    public var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Hanyang University")
                    .font(.title)
                HStack {
                    Text("The engine of Korea")
                        .font(.subheadline)
                    Spacer()
                    Text("Seoul")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Divider()
                Text("About Sunny")
                    .font(.title2)
                Text("Best student in Hanyang")
            }
            .padding()
            Spacer()
        }
    }
    
    
    public init(){}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
