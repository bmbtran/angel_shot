import SwiftUI

struct EmergencycontactsView: View {
    @StateObject var emergencycontactsViewModel = EmergencycontactsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            HStack {
                                HStack {
                                    Image("img_941")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(17.0))
                                    Spacer()
                                    ZStack(alignment: .bottomTrailing) {
                                        Image("img_notch")
                                            .resizable()
                                            .frame(width: getRelativeWidth(219.0),
                                                   height: getRelativeHeight(28.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.trailing, getRelativeWidth(63.0))
                                        Image("img_rightside")
                                            .resizable()
                                            .frame(width: getRelativeWidth(66.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(17.33))
                                            .padding(.leading, getRelativeWidth(215.67))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(282.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(28.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(10.0))
                            Text(StringConstants.kMsgEmergencyConta)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Green400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(299.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(45.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            RowcontentblockCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(182.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(54.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(347.0), height: getRelativeHeight(649.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(649.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(83.0),
                                   alignment: .leading)
                            .background(ColorConstants.Bluegray50)
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(83.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(112.0))
                }
                .frame(width: getRelativeWidth(387.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Emergency1View(),
                                   tag: "Emergency1View",
                                   selection: $emergencycontactsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ReportmodeView(),
                                   tag: "ReportmodeView",
                                   selection: $emergencycontactsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct EmergencycontactsView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencycontactsView()
    }
}
