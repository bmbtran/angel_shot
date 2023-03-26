import SwiftUI

struct RowmakeafakecalCell: View {
    var columnmakeafakecalClick: (() -> Void)?
    var columnsendsmsClick: (() -> Void)?
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgMakeAFakeCal)
                    .font(FontScheme.kInterExtraBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.horizontal, getRelativeWidth(9.0))
                Text(StringConstants.kMsgInitiateAFake)
                    .font(FontScheme.kInterLight(size: getRelativeHeight(10.0)))
                    .fontWeight(.light)
                    .foregroundColor(ColorConstants.Black901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                    .padding(.horizontal, getRelativeWidth(9.0))
                Image("img_vector_black_900_4")
                    .resizable()
                    .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(37.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.vertical, getRelativeHeight(4.0))
                    .padding(.horizontal, getRelativeWidth(13.0))
            }
            .onTapGesture {
                columnmakeafakecalClick?()
            }
            .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(120.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                       bottomRight: 10.0)
                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.CyanA700,
                                                                     ColorConstants
                                                                         .LightGreenA101]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblSendSms)
                    .font(FontScheme.kInterExtraBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.heavy)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(77.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(17.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                ZStack(alignment: .bottomTrailing) {
                    Text(StringConstants.kMsgSendSmsOfYou)
                        .font(FontScheme.kInterLight(size: getRelativeHeight(10.0)))
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.Black901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .padding(.bottom, getRelativeHeight(31.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    Image("img_vector_black_900_5")
                        .resizable()
                        .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.top, getRelativeHeight(30.75))
                        .padding(.leading, getRelativeWidth(104.16))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(65.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(1.0))
                .padding(.horizontal, getRelativeWidth(10.0))
            }
            .onTapGesture {
                columnsendsmsClick?()
            }
            .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(120.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                       bottomRight: 10.0)
                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.CyanA700,
                                                                     ColorConstants
                                                                         .LightGreenA101]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)))
            .padding(.leading, getRelativeWidth(11.0))
        }
        .frame(width: getRelativeWidth(343.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowmakeafakecalCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowmakeafakecalCell()
 }
 } */
