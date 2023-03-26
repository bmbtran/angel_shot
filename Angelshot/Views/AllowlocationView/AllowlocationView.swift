import SwiftUI

struct AllowlocationView: View {
    @StateObject var allowlocationViewModel = AllowlocationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Image("img_location1")
                    .resizable()
                    .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(191.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.top, getRelativeHeight(231.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
                Text(StringConstants.kMsgPleaseAllowYo)
                    .font(FontScheme.kInterBlack(size: getRelativeHeight(20.0)))
                    .fontWeight(.black)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(286.0), height: getRelativeHeight(44.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(27.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
                Text(StringConstants.kMsgThisAllowsUs)
                    .font(FontScheme.kInterLight(size: getRelativeHeight(12.0)))
                    .fontWeight(.light)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(219.0), height: getRelativeHeight(26.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(40.0))
                HStack {
                    Text(StringConstants.kLblNext)
                        .font(FontScheme.kInterExtraBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .padding(.leading, getRelativeWidth(133.0))
                    Image("img_arrow2")
                        .resizable()
                        .frame(width: getRelativeWidth(22.0), height: getRelativeHeight(3.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(25.0))
                        .padding(.bottom, getRelativeHeight(23.0))
                        .padding(.leading, getRelativeWidth(8.0))
                        .padding(.trailing, getRelativeWidth(103.0))
                }
                .onTapGesture {
                    let location = LocationPermission()
                    location.request()
                    location.result = { isGranted in
                        if !isGranted {
                            location.onDeniedOrRestricted()
                        }
                    }
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                           bottomRight: 25.5)
                        .fill(ColorConstants.Green401))
                .padding(.vertical, getRelativeHeight(31.0))
                .padding(.horizontal, getRelativeWidth(40.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .actionSheet(isPresented: $allowlocationViewModel.isActionSheetShow, content: {
            ActionSheet(title: Text("Choose"), buttons: [
                .default(Text("Camera"), action: {
                    if UIImagePickerController.isSourceTypeAvailable(.camera) {
                        allowlocationViewModel.imagePickerSource = .camera
                        allowlocationViewModel.isImagePickerShow = true
                    } else {
                        allowlocationViewModel.showAlert("Error", "Camera is not available!")
                    }
                }),
                .default(Text("Photo Library"), action: {
                    allowlocationViewModel.imagePickerSource = .photoLibrary
                    allowlocationViewModel.isImagePickerShow = true
                }),
                .destructive(Text("Cancel"))
            ])
        })
        .sheet(isPresented: $allowlocationViewModel.isImagePickerShow, content: {
            MediaPicker(sourceType: allowlocationViewModel.imagePickerSource,
                        mediaTypes: ["public.image"]) { image, url in
                if let image = image {
                    allowlocationViewModel.selectedImage = image
                }
            }
        })
        .hideNavigationBar()
    }
}

struct AllowlocationView_Previews: PreviewProvider {
    static var previews: some View {
        AllowlocationView()
    }
}
