#import <Foundation/Foundation.h>

%hook YTColdConfig
- (BOOL)enableIosFloatingMiniplayer { return NO; }
- (BOOL)enableYouthereCommandsOnIos { return NO; }
- (BOOL)ignoreVideoZoomAspectRatioParams { return YES; }
- (BOOL)isVideoZoomEnabled { return YES; }
- (BOOL)respectDeviceCaptionSetting { return NO; }
- (BOOL)shouldUseAppThemeSetting { return YES; }
%end

%hook YTIMediaQualitySettingsHotConfig
%new(c@:) - (BOOL)omitAdvancedMenuOptionForAirPlay { return NO; }
%end

%hook YTYouThereController
- (BOOL)shouldShowYouTherePrompt { return NO; }
%end