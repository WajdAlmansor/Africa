
import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: .init(latitude: 6.600286, longitude: 16.4377599),
            span: .init(latitudeDelta: 60, longitudeDelta: 60)
        )
    )

    var body: some View {
        Map(position: $position)
            .overlay(
                NavigationLink (destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accent)
                            .fontWeight(.bold)
                    }//end hstack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }//end Navigation
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 286)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

#Preview {
    InsetMapView()
}
