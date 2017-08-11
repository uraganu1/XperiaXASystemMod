.class final Lcom/android/incallui/SomcSlidingTab$2;
.super Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;
.source "SomcSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;-><init>(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mVideoProfile:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSliderMarginBottomId:I

    .line 115
    const v0, 0x7f080109

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSliderMarginStartId:I

    .line 116
    const v0, 0x7f0800f9

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mHintTextSizeId:I

    .line 118
    const v0, 0x7f0b02de

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mDefaultHintTextId:I

    .line 119
    const v0, 0x7f020058

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mFirstNormalId:I

    .line 120
    const v0, 0x7f020059

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mFirstPressedId:I

    .line 121
    const v0, 0x7f020057

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mFirstGhostId:I

    .line 122
    const v0, 0x7f020054

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSliderRightBgId:I

    .line 123
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSliderDefaultBgId:I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mIsSecondButtonAvailable:Z

    .line 126
    const v0, 0x7f0b0271

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mRightPressedHintTextId:I

    .line 127
    const v0, 0x7f020129

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSecondNormalId:I

    .line 128
    const v0, 0x7f02012a

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSecondPressedId:I

    .line 129
    const v0, 0x7f020128

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSecondGhostId:I

    .line 130
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$2;->mSliderLeftBgId:I

    .line 111
    return-void
.end method
