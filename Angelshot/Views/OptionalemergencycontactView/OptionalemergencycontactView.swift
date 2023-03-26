import SwiftUI

struct OptionalemergencycontactView: View {
    @StateObject var optionalemergencycontactViewModel = OptionalemergencycontactViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kMsgEnterYourOpti)
                            .font(FontScheme.kInterBlack(size: getRelativeHeight(30.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(321.0), height: getRelativeHeight(66.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(66.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(119.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgEnterYourEmer)
                            .font(FontScheme.kInterBlack(size: getRelativeHeight(14.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(14.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterEmergency,
                                          text: $optionalemergencycontactViewModel.frameText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray100)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: optionalemergencycontactViewModel.frameText) { newValue in

                                optionalemergencycontactViewModel.isValidFrameText = newValue
                                    .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            if !optionalemergencycontactViewModel.isValidFrameText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                            }
                        }
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterEmergency2,
                                          text: $optionalemergencycontactViewModel.frameoneText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray100)
                                    .padding()
                                    .keyboardType(.phonePad)
                            }
                            .onChange(of: optionalemergencycontactViewModel
                                .frameoneText) { newValue in

                                    optionalemergencycontactViewModel.isValidFrameoneText = newValue
                                        .isValidPhone(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            if !optionalemergencycontactViewModel.isValidFrameoneText {
                                Text("Please enter valid phone number.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(114.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(4.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgEnterYourEmer2)
                            .font(FontScheme.kInterBlack(size: getRelativeHeight(14.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(14.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(40.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterEmergency3,
                                          text: $optionalemergencycontactViewModel.frametwoText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray100)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: optionalemergencycontactViewModel
                                .frametwoText) { newValue in

                                    optionalemergencycontactViewModel.isValidFrametwoText = newValue
                                        .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            if !optionalemergencycontactViewModel.isValidFrametwoText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                            }
                        }
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterEmergency4,
                                          text: $optionalemergencycontactViewModel.framethreeText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray100)
                                    .padding()
                                    .keyboardType(.phonePad)
                            }
                            .onChange(of: optionalemergencycontactViewModel
                                .framethreeText) { newValue in

                                    optionalemergencycontactViewModel
                                        .isValidFramethreeText = newValue
                                        .isValidPhone(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            if !optionalemergencycontactViewModel.isValidFramethreeText {
                                Text("Please enter valid phone number.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(114.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(30.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgEnterYourEmer3)
                            .font(FontScheme.kInterBlack(size: getRelativeHeight(14.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(14.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(37.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterEmergency5,
                                          text: $optionalemergencycontactViewModel.framefourText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray100)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: optionalemergencycontactViewModel
                                .framefourText) { newValue in

                                    optionalemergencycontactViewModel
                                        .isValidFramefourText = newValue
                                        .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            if !optionalemergencycontactViewModel.isValidFramefourText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                            }
                        }
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterEmergency6,
                                          text: $optionalemergencycontactViewModel.framefiveText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray100)
                                    .padding()
                                    .keyboardType(.phonePad)
                            }
                            .onChange(of: optionalemergencycontactViewModel
                                .framefiveText) { newValue in

                                    optionalemergencycontactViewModel
                                        .isValidFramefiveText = newValue
                                        .isValidPhone(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Gray300,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            if !optionalemergencycontactViewModel.isValidFramefiveText {
                                Text("Please enter valid phone number.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                            }
                        }
                        Text(StringConstants.kLblSkip)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(28.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(32.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            .onTapGesture {
                                optionalemergencycontactViewModel.nextScreen = "HomeView"
                            }
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
                            optionalemergencycontactViewModel.nextScreen = "HomeView"
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                                   bottomRight: 25.5)
                                .fill(ColorConstants.Green401))
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(234.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(5.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $optionalemergencycontactViewModel.nextScreen,
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

struct OptionalemergencycontactView_Previews: PreviewProvider {
    static var previews: some View {
        OptionalemergencycontactView()
    }
}
