//
//  SwiftUIView.swift
//  UIKit and SwiftUI
//
//  Created by Irem Karaoglu on 19.04.2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    weak var navigationController: UINavigationController?
    
    var body: some View {
        VStack {
            HStack {
                Text("SwiftUI Screen")
                    .bold()
                    .font(.system(size: 21.0))
            }
            Spacer()
                .frame(width: 1, height: 74, alignment: .bottom)
            VStack(alignment: .center){
                Button(action: {
                    navigationController?.popViewController(animated: true)
                }) {
                    Text("Navigate to UIKit Screen")
                        .font(.system(size: 21.0))
                        .bold()
                        .frame(width: UIScreen.main.bounds.width, height: 10, alignment: .center)
                }
            }
            Spacer()
                .frame(width: 2, height: 105, alignment: .bottom)
        }.navigationBarHidden(true)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
