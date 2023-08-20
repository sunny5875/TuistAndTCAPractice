//
//  CircleImageView.swift
//  Presentation
//
//  Created by 현수빈 on 2023/08/20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
           Image("hanyang")
               .clipShape(Circle())
//               .overlay {
//                   Circle().stroke(.white, lineWidth: 4)
//               }
               .shadow(radius: 7)
       }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
