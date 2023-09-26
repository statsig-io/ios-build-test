pod install

xcodebuild build \
  -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)" \
  -workspace CocoapodsExample.xcworkspace \
  -scheme CocoapodsExample

xcodebuild test \
  -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)" \
  -workspace CocoapodsExample.xcworkspace \
  -scheme CocoapodsExample