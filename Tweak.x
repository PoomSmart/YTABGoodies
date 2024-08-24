#import <Foundation/Foundation.h>

%hook YTColdConfig
- (BOOL)respectDeviceCaptionSetting { return NO; }
- (BOOL)shouldUseAppThemeSetting { return YES; }
- (BOOL)enableYouthereCommandsOnIos { return NO; }
- (BOOL)isVideoZoomEnabled { return YES; }
- (BOOL)ignoreVideoZoomAspectRatioParams { return YES; }
%end

%hook YTIMediaQualitySettingsHotConfig
%new(B@:) - (BOOL)omitAdvancedMenuOptionForAirPlay { return NO; }
%end

%hook YTYouThereController
- (BOOL)shouldShowYouTherePrompt { return NO; }
%end