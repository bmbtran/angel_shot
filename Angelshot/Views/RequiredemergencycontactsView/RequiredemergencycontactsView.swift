import SwiftUI

struct RequiredemergencycontactsView: View {
    @StateObject var requiredemergencycontactsViewModel = RequiredemergencycontactsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    Text(StringConstants.kLblSettings)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(16.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(64.0),
                                               height: getRelativeHeight(19.0),
                                               alignment: .topLeading)
                                    ZStack(alignment: .leading) {
                                        Text(StringConstants.kLblLogout)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(16.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(54.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(44.0))
                                            .padding(.leading, getRelativeWidth(172.0))
                                        Text(StringConstants.kMsgEnterYourEme)
                                            .font(FontScheme
                                                .kInterBlack(size: getRelativeHeight(30.0)))
                                            .fontWeight(.black)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(321.0),
                                                   height: getRelativeHeight(64.0),
                                                   alignment: .topLeading)
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(321.0),
                                           height: getRelativeHeight(64.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(53.0))
                                }
                                .frame(width: getRelativeWidth(351.0),
                                       height: getRelativeHeight(67.0), alignment: .leading)
                            }
                            Text(StringConstants.kMsgEnterYourEmer4)
                                .font(FontScheme.kInterBlack(size: getRelativeHeight(14.0)))
                                .fontWeight(.black)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(228.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmergency7,
                                              text: $requiredemergencycontactsViewModel.frameText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.alphabet)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                if !requiredemergencycontactsViewModel.isValidFrameText {
                                    Text("Please enter valid text.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmergency8,
                                              text: $requiredemergencycontactsViewModel
                                                  .frameoneText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.phonePad)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                if !requiredemergencycontactsViewModel.isValidFrameoneText {
                                    Text("Please enter valid phone number.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                            Text(StringConstants.kMsgEnterYourEmer5)
                                .font(FontScheme.kInterBlack(size: getRelativeHeight(14.0)))
                                .fontWeight(.black)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(230.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(40.0))
                                .padding(.horizontal, getRelativeWidth(33.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmergency9,
                                              text: $requiredemergencycontactsViewModel
                                                  .frametwoText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.alphabet)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                if !requiredemergencycontactsViewModel.isValidFrametwoText {
                                    Text("Please enter valid text.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmergency10,
                                              text: $requiredemergencycontactsViewModel
                                                  .framethreeText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.phonePad)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                if !requiredemergencycontactsViewModel.isValidFramethreeText {
                                    Text("Please enter valid phone number.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                            Text(StringConstants.kMsgEnterYourEmer6)
                                .font(FontScheme.kInterBlack(size: getRelativeHeight(14.0)))
                                .fontWeight(.black)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(230.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(40.0))
                                .padding(.horizontal, getRelativeWidth(33.0))
                        }
                        Group {
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmergency11,
                                              text: $requiredemergencycontactsViewModel
                                                  .framefourText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.alphabet)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                if !requiredemergencycontactsViewModel.isValidFramefourText {
                                    Text("Please enter valid text.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmergency12,
                                              text: $requiredemergencycontactsViewModel
                                                  .languageText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.phonePad)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                if !requiredemergencycontactsViewModel.isValidLanguageText {
                                    Text("Please enter valid phone number.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(354.0), height: getRelativeHeight(557.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(118.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kLblNext)
                                .font(FontScheme.kInterExtraBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.heavy)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(45.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(133.0))
                            Image("img_arrow2")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeHeight(3.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(26.0))
                                .padding(.leading, getRelativeWidth(6.0))
                                .padding(.trailing, getRelativeWidth(105.0))
                        }
                        .onTapGesture {
                            requiredemergencycontactsViewModel
                                .nextScreen = "OptionalemergencycontactView"
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                                   bottomRight: 25.5)
                                .fill(ColorConstants.Green401))
                        .padding(.leading, getRelativeWidth(43.0))
                    }
                    .frame(width: getRelativeWidth(354.0), height: getRelativeHeight(51.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(69.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OptionalemergencycontactView(),
                                   tag: "OptionalemergencycontactView",
                                   selection: $requiredemergencycontactsViewModel.nextScreen,
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

struct RequiredemergencycontactsView_Previews: PreviewProvider {
    static var previews: some View {
        RequiredemergencycontactsView()
    }
}
