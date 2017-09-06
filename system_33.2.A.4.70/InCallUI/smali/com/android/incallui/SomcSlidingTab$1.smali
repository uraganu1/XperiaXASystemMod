.class final Lcom/android/incallui/SomcSlidingTab$1;
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;-><init>(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    .line 89
    iput v1, p0, Lcom/android/incallui/SomcSlidingTab$1;->mVideoProfile:I

    .line 90
    const v0, 0x7f0800fb

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSliderMarginStartId:I

    .line 91
    iput v1, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSliderMarginBottomId:I

    .line 92
    const v0, 0x7f0800f9

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mHintTextSizeId:I

    .line 93
    const v0, 0x7f070094

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mHintTextColorId:I

    .line 94
    const v0, 0x7f0b0270

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mDefaultHintTextId:I

    .line 95
    const v0, 0x7f020126

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mFirstNormalId:I

    .line 96
    const v0, 0x7f020127

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mFirstPressedId:I

    .line 97
    const v0, 0x7f020125

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mFirstGhostId:I

    .line 98
    const v0, 0x7f02010b

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSliderRightBgId:I

    .line 99
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSliderDefaultBgId:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mIsSecondButtonAvailable:Z

    .line 102
    const v0, 0x7f0b0271

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mRightPressedHintTextId:I

    .line 103
    const v0, 0x7f020129

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSecondNormalId:I

    .line 104
    const v0, 0x7f02012a

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSecondPressedId:I

    .line 105
    const v0, 0x7f020128

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSecondGhostId:I

    .line 106
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$1;->mSliderLeftBgId:I

    .line 87
    return-void
.end method
