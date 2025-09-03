import SwiftUI
import MapKit

struct MapView: View {

    @State private var region: MKCoordinateRegion = {
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()

    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")


    var body: some View {
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })//End Map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accent)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                }//end vstack
            }// end hstack
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
           , alignment: .top
            )
        }
}

#Preview {
    MapView()
}
