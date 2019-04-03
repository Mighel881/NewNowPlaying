%hook SPTNowPlayingTestManagerImplementation

- (bool)isNewNowPlayingViewEnabled {
    return FALSE;
} 
- (bool)isNewNowPlayingViewEnabledIPad {
    return TRUE;
} 
- (bool)isNewNowPlayingViewEnabledOnFree {
    return TRUE;
} 
-(bool)isNewNowPlayingViewEnabledOnPremium {
    return TRUE;
} 

- (bool)isNewNowPlayingViewConsolidatedFlagEnabled {
    return TRUE;
} 
- (bool)isShowsFormatEnabledForPlayerState:(id)arg1 {
    return TRUE;
} 
%end

%hook SPTNowPlayingContainerIdleMonitor
- (void)setCountdownEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
} 
%end

%hook SPTAdFeatureFlagChecks
- (bool)isNewNowPlayingViewEnabled {
    return TRUE;
} 
%end

%hook SPTCollectionPlatformTestManagerImplementation
- (bool)isNewNowPlayingViewEnabled {
    return TRUE;
} 
%end

%hook SPTNowPlayingCoverArtViewCell
- (bool)isShowsFormatAppearance {
    return TRUE;
} 
%end







