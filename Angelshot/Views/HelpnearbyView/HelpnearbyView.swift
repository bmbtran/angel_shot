import SwiftUI

struct HelpnearbyView: View {
    @StateObject var helpnearbyViewModel = HelpnearbyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Image("img_iosstatusbar")
                    .resizable()
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(28.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(33.45))
                HStack {
                    HStack {
                        Image("img_941")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(11.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(15.0))
                        Spacer()
                        Image("img_notch")
                            .resizable()
                            .frame(width: getRelativeWidth(219.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Spacer()
                        Image("img_rightside")
                            .resizable()
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(11.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(15.0))
                    }
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(26.0),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(65.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 34.0, topRight: 34.0)
                    .fill(ColorConstants.WhiteA700))
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

struct HelpnearbyView_Previews: PreviewProvider {
    static var previews: some View {
        HelpnearbyView()
    }
}
