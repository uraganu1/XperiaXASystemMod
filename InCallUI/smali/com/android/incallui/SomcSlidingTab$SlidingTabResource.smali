.class Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlidingTabResource"
.end annotation


# instance fields
.field mDefaultHintTextId:I

.field mFirstGhostId:I

.field mFirstNormalId:I

.field mFirstPressedId:I

.field mHintTextColorId:I

.field mHintTextSizeId:I

.field mIsSecondButtonAvailable:Z

.field mRightPressedHintTextId:I

.field mSecondGhostId:I

.field mSecondNormalId:I

.field mSecondPressedId:I

.field mSliderDefaultBgId:I

.field mSliderLeftBgId:I

.field mSliderMarginBottomId:I

.field mSliderMarginStartId:I

.field mSliderRightBgId:I

.field mVideoProfile:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mVideoProfile:I

    .line 63
    const v0, 0x7f0800f8

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginStartId:I

    .line 64
    iput v1, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginBottomId:I

    .line 65
    const v0, 0x7f0800f9

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextSizeId:I

    .line 66
    const v0, 0x7f070094

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextColorId:I

    .line 67
    const v0, 0x7f0b0270

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mDefaultHintTextId:I

    .line 68
    const v0, 0x7f020126

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstNormalId:I

    .line 69
    const v0, 0x7f020127

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstPressedId:I

    .line 70
    const v0, 0x7f020125

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstGhostId:I

    .line 71
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderRightBgId:I

    .line 72
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderDefaultBgId:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mIsSecondButtonAvailable:Z

    .line 75
    const v0, 0x7f0b0271

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mRightPressedHintTextId:I

    .line 76
    const v0, 0x7f020129

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondNormalId:I

    .line 77
    const v0, 0x7f02012a

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondPressedId:I

    .line 78
    const v0, 0x7f020128

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondGhostId:I

    .line 79
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderLeftBgId:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;-><init>()V

    return-void
.end method
