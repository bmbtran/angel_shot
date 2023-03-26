import SwiftUI

struct SmsView: View {
    @StateObject var smsViewModel = SmsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblBack)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(78.0))
                    .padding(.horizontal, getRelativeWidth(29.0))
                    VStack {
                        Image("img_email1")
                            .resizable()
                            .frame(width: getRelativeWidth(250.0), height: getRelativeWidth(250.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgWeWillSendAn)
                            .font(FontScheme.kInterBlack(size: getRelativeHeight(16.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(37.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgDoYouWantTo)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        VStack {
                            Button(action: {
                                smsViewModel.nextScreen = "SmsTwoView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblAccept)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(51.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                                   bottomLeft: 25.5,
                                                                   bottomRight: 25.5)
                                                .fill(ColorConstants.Green401))
                                }
                            })
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.Green401))
                            Text(StringConstants.kLblReturnToMenu)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Green401)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(105.0))
                                .onTapGesture {
                                    smsViewModel.nextScreen = "HomeView"
                                }
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(84.0),
                               alignment: .center)
                        .clipShape(Capsule())
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(433.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(102.0))
                    .padding(.horizontal, getRelativeWidth(29.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $smsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SmsTwoView(),
                                   tag: "SmsTwoView",
                                   selection: $smsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .actionSheet(isPresented: $smsViewModel.isActionSheetShow, content: {
                ActionSheet(title: Text("Choose"), buttons: [
                    .default(Text("Camera"), action: {
                        if UIImagePickerController.isSourceTypeAvailable(.camera) {
                            smsViewModel.imagePickerSource = .camera
                            smsViewModel.isImagePickerShow = true
                        } else {
                            smsViewModel.showAlert("Error", "Camera is not available!")
                        }
                    }),
                    .default(Text("Photo Library"), action: {
                        smsViewModel.imagePickerSource = .photoLibrary
                        smsViewModel.isImagePickerShow = true
                    }),
                    .destructive(Text("Cancel"))
                ])
            })
            .sheet(isPresented: $smsViewModel.isImagePickerShow, content: {
                MediaPicker(sourceType: smsViewModel.imagePickerSource,
                            mediaTypes: ["public.image"]) { image, url in

                    if let image = image {
                        smsViewModel.selectedImage = image
                    }
                }
            })
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SmsView_Previews: PreviewProvider {
    static var previews: some View {
        SmsView()
    }
}
