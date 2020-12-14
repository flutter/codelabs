#import "PluginCodelabPlugin.h"
#import "FLRSynth.h"

@implementation PluginCodelabPlugin{
  int _numKeysDown;
  FLRSynthRef _synth;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    _synth = FLRSynthCreate();
    FLRSynthStart(_synth);
  }
  return self;
}

- (void)dealloc {
  FLRSynthDestroy(_synth);
}

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"plugin_codelab"
            binaryMessenger:[registrar messenger]];
  PluginCodelabPlugin* instance = [[PluginCodelabPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call
                  result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS "
        stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if ([@"onKeyDown" isEqualToString:call.method]) {
    FLRSynthKeyDown(_synth, [call.arguments[0] intValue]);
    _numKeysDown += 1;
    result(@(_numKeysDown));
  } else if ([@"onKeyUp" isEqualToString:call.method]) {
    FLRSynthKeyUp(_synth, [call.arguments[0] intValue]);
    
    _numKeysDown -= 1;
    result(@(_numKeysDown));
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
