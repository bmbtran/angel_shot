import SwiftUI

struct InitialmapView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                              locationEnable: .constant(true))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(86.0),
                           alignment: .bottomLeading)
                    .background(ColorConstants.Bluegray50)
                    .padding(.top, getRelativeHeight(758.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct InitialmapView_Previews: PreviewProvider {
    static var previews: some View {
        InitialmapView()
    }
}
