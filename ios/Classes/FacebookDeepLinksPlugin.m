#import "FacebookDeepLinksPlugin.h"
#if __has_include(<facebook_sdk_flutter/facebook_sdk_flutter-Swift.h>)
#import <facebook_sdk_flutter/facebook_sdk_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "facebook_sdk_flutter-Swift.h"
#endif

@implementation FacebookDeepLinksPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFacebookDeepLinksPlugin registerWithRegistrar:registrar];
}
@end
