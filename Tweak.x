#import <Foundation/Foundation.h>

%hook YTColdConfig
- (BOOL)respectDeviceCaptionSetting { return NO; }
- (BOOL)shouldUseAppThemeSetting { return YES; }
- (BOOL)enableYouthereCommandsOnIos { return NO; }
- (BOOL)isVideoZoomEnabled { return YES; }
- (BOOL)ignoreVideoZoomAspectRatioParams { return YES; }
%end

%hook YTHotConfig
- (BOOL)isPromptForLocalNetworkPermissionsEnabled { return NO; }
%end

%hook YTIMediaQualitySettingsHotConfig
%new - (BOOL)omitAdvancedMenuOptionForAirPlay { return NO; }
%end

%hook YTYouThereController
- (BOOL)shouldShowYouTherePrompt { return NO; }
%end