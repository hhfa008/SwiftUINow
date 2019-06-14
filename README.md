SwiftUI is available in iOS 13 and later.

But Most App must be backward compatible to iOS 12 and before.

 SwiftUINow takes advantage of the new features of Swift 5.x, just like SwiftUI.

 SwiftUINow is not limited by iOS version and available in iOS 9 and later.

 Note that SwiftUINow must be build in Xcode 11 and later  

 ## Example

* First, write UI Code by SwiftUINow
 ```swift
import SwiftUINow
var body: View {
        VStack {
            Text("Hello SwiftUINow").color(.blue)
            ForEach([0,1]){ number in
                Text("Hello SwiftUINow \(number)").color(.blue)
            }
        }
    }
```
* Then, show the UI


 ```swift
 import SnapKit

 //UIViewController.viewDidLoad
 override func viewDidLoad() {
        super.viewDidLoad()
        let aView = body.content
        view.addSubview(aView)
        aView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
```

## Install by CocoaPods

 ```ruby
pod 'SwiftUINow'
```

