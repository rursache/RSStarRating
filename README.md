# RSRatingView

RSRatingView is a simple Star Rating View for displaying star ratings and entering them (by touching the stars). It's written for iOS, in Swift 5.1. It also works with Interface Builder

## Installation
Use SPM to install this library

## Usage
### Interface Builder
1. Add a UIView to your interface
2. In the Identiy Inspector, change Class to `RSRatingView`
3. In the Attributes Inspector you can now set:
 * the **rating** (Float between 0 and 5)
 * the **star color**
 * the **Star Rounding** Raw Value - *IBInspectable can't handle enums, hence the raw value, see ENUM code below*
4. By checking **User Interaction Enabled** users can touch the view to enter a star rating. The rating stars updates while touching.

### Code
1. Create an instance of `RSRatingView`
```
let starRatingView = RSRatingView(frame: CGRect(origin: .zero, size: CGSize(width: 250, height: 50)), rating: 3.5, color: .systemOrange, starRounding: .roundToHalfStar)
```

Natural aspect ratio is 5 width to 1 height. 
2. Add the view as a subview
3. Properties (set and get)
 * `starRatingView.rating` (type: `Float`)
 * `starRatingView.starColor` (type: `UIColor`)
 * `starRatingView.starRounding` (type: `StarRounding`)
 * `starRatingView.isUserInteractionEnabled` (type: `Bool`)

## The StarRounding ENUM
`public enum StarRounding: Int {`  
`  case roundToHalfStar = 0`  
`  case ceilToHalfStar = 1`  
`  case floorToHalfStar = 2`  
`  case roundToFullStar = 3`  
`  case ceilToFullStar = 4`  
`  case floorToFullStar = 5`  
`}`

## Credits
Based on [guidove's StarRatingView](https://github.com/guidove/StarRatingView)

## License

RSEssentials is available under the **MPL-2.0 license**. See the [LICENSE](https://github.com/rursache/RSRatingView/blob/master/LICENSE) file for more info.
