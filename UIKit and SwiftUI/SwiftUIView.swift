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
               Text("SwiftUI Screen")
               Button(action: {
                   navigationController?.popViewController(animated: true)
               }) {
                   Text("Navigate to UIKit Screen")
               }.padding(48)
           }.navigationBarHidden(true)
       }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
