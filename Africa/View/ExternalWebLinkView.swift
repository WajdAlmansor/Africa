//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName:"globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }//end group
                .foregroundColor(.accent)
            }//end hstack
        }//end groupbox
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    ExternalWebLinkView(animal: animals[0])
}
