.class public Lcom/android/incallui/SomcSlidingTab;
.super Landroid/view/ViewGroup;
.source "SomcSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;,
        Lcom/android/incallui/SomcSlidingTab$1;,
        Lcom/android/incallui/SomcSlidingTab$2;
    }
.end annotation


# static fields
.field private static final sVideoSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

.field private static final sVoiceOneHandSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

.field private static final sVoiceSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;


# instance fields
.field private mAbortGhostAnimation:Z

.field private mAccessability:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivePointerId:I

.field private mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

.field private mBackground:Landroid/widget/ImageView;

.field protected mDefaultHintText:Ljava/lang/String;

.field protected mDisabledFirstButton:Landroid/widget/ImageView;

.field protected mDisabledSecondButton:Landroid/widget/ImageView;

.field protected mExpandedButton:Landroid/widget/ImageView;

.field private mFingerFlickerDone:Z

.field private final mFingerFlickeringThreshold:I

.field private mFingerOff:I

.field private mFingerStartPos:I

.field protected mFirstActivatePoint:I

.field protected mFirstBtnPosition:I

.field private mFirstGhost:Landroid/graphics/drawable/Drawable;

.field protected mFirstNormal:Landroid/graphics/drawable/Drawable;

.field private mFirstPressed:Landroid/graphics/drawable/Drawable;

.field protected mFirstTouchablePart:I

.field protected mGhostButton:Landroid/widget/ImageView;

.field private mHapticsEnabled:Z

.field private mHintParentLayout:Landroid/widget/RelativeLayout;

.field protected mHintText:Landroid/widget/TextView;

.field private mHintTextColor:I

.field private mHintTextMarginHorizontal:I

.field private mHintTextParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mHintTextSize:F

.field private mIsAnimating:Z

.field private mIsGhostAnimating:Z

.field private mIsSecondButtonAvailable:Z

.field private mLastMovePos:I

.field private mLongpressGhostStarted:Z

.field private final mOnehandEnabled:Z

.field private mPastActionPoint:Z

.field private mPortrait:Z

.field private mPressTimestamp:J

.field private mResetAfterGhost:Z

.field protected mRightPressedHintText:Ljava/lang/String;

.field protected mSecondActivatePoint:I

.field protected mSecondBtnPosition:I

.field private mSecondGhost:Landroid/graphics/drawable/Drawable;

.field protected mSecondNormal:Landroid/graphics/drawable/Drawable;

.field private mSecondPressed:Landroid/graphics/drawable/Drawable;

.field protected mSecondTouchablePart:I

.field private mSliderDefaultBg:Landroid/graphics/drawable/Drawable;

.field protected mSliderHeight:I

.field private mSliderLeftBg:Landroid/graphics/drawable/Drawable;

.field private mSliderMarginBottom:I

.field protected mSliderMarginStart:I

.field private mSliderRightBg:Landroid/graphics/drawable/Drawable;

.field private mSliderState:B

.field protected mSliderWidth:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVideoProfile:I


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcSlidingTab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/SomcSlidingTab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mResetAfterGhost:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/incallui/SomcSlidingTab;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/SomcSlidingTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/SomcSlidingTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SomcSlidingTab;->mLongpressGhostStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/SomcSlidingTab;II)V
    .locals 0
    .param p1, "amount"    # I
    .param p2, "sliderState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SomcSlidingTab;->animateGhostMore(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;-><init>(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    sput-object v0, Lcom/android/incallui/SomcSlidingTab;->sVoiceSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    .line 86
    new-instance v0, Lcom/android/incallui/SomcSlidingTab$1;

    invoke-direct {v0}, Lcom/android/incallui/SomcSlidingTab$1;-><init>()V

    sput-object v0, Lcom/android/incallui/SomcSlidingTab;->sVoiceOneHandSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    .line 111
    new-instance v0, Lcom/android/incallui/SomcSlidingTab$2;

    invoke-direct {v0}, Lcom/android/incallui/SomcSlidingTab$2;-><init>()V

    sput-object v0, Lcom/android/incallui/SomcSlidingTab;->sVideoSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mLongpressGhostStarted:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mResetAfterGhost:Z

    .line 226
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPressTimestamp:J

    .line 229
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mIsAnimating:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 238
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    .line 244
    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mLastMovePos:I

    .line 249
    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    .line 270
    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    .line 271
    iput v2, p0, Lcom/android/incallui/SomcSlidingTab;->mVideoProfile:I

    .line 274
    iput-byte v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    .line 302
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mAccessability:Z

    .line 315
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickeringThreshold:I

    .line 318
    const-string/jumbo v0, "accessibility"

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 321
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Portrait"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    .line 328
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    const-string/jumbo v3, "haptic_feedback_enabled"

    .line 328
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHapticsEnabled:Z

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    const-string/jumbo v3, "com.sonymobile.one_hand_phoneapp"

    .line 331
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mOnehandEnabled:Z

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SomcSlidingTab;->initializeContents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v2

    .line 328
    goto :goto_1

    :cond_3
    move v1, v2

    .line 331
    goto :goto_2
.end method

.method private animateGhost(J)V
    .locals 9
    .param p1, "afterMs"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 944
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    if-nez v4, :cond_1

    iget-byte v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-eqz v4, :cond_1

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "animMove":I
    iput-boolean v7, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 948
    iget-byte v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v4, v7, :cond_3

    .line 949
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_2

    .line 950
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 955
    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int v0, v4, v5

    .line 965
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_5

    move v1, v0

    .line 968
    .local v1, "fromX":I
    :goto_2
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    .line 969
    .local v2, "fromY":I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 970
    int-to-float v4, v1

    int-to-float v5, v2

    .line 969
    invoke-direct {v3, v4, v8, v5, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 971
    .local v3, "ghostMoveAnimationAfter":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 972
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 973
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 974
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 975
    new-instance v4, Lcom/android/incallui/SomcSlidingTab$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/SomcSlidingTab$3;-><init>(Lcom/android/incallui/SomcSlidingTab;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 992
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 943
    .end local v0    # "animMove":I
    .end local v1    # "fromX":I
    .end local v2    # "fromY":I
    .end local v3    # "ghostMoveAnimationAfter":Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void

    .line 952
    .restart local v0    # "animMove":I
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 956
    :cond_3
    iget-byte v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 957
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_4

    .line 958
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    :goto_4
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 963
    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 960
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 967
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "fromX":I
    goto :goto_2

    .line 968
    :cond_6
    move v2, v0

    .restart local v2    # "fromY":I
    goto :goto_3
.end method

.method private animateGhostMore(II)V
    .locals 8
    .param p1, "amount"    # I
    .param p2, "sliderState"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 997
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    if-eqz v4, :cond_0

    .line 998
    invoke-virtual {p0, v6}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 999
    return-void

    .line 1002
    :cond_0
    const/4 v0, 0x0

    .line 1003
    .local v0, "animMove":I
    iput-boolean v6, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 1005
    iget-byte v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v4, v6, :cond_3

    .line 1006
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_2

    .line 1007
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 1012
    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int v0, v4, v5

    .line 1022
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_5

    move v1, v0

    .line 1025
    .local v1, "fromX":I
    :goto_2
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    .line 1026
    .local v2, "fromY":I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1027
    .local v3, "ghostMoveAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1028
    new-instance v4, Lcom/android/incallui/SomcSlidingTab$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/incallui/SomcSlidingTab$4;-><init>(Lcom/android/incallui/SomcSlidingTab;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1046
    iput-boolean v6, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 1047
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 996
    return-void

    .line 1009
    .end local v1    # "fromX":I
    .end local v2    # "fromY":I
    .end local v3    # "ghostMoveAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1013
    :cond_3
    iget-byte v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1014
    iget-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v4, :cond_4

    .line 1015
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    :goto_4
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 1020
    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 1017
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstGhost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1024
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "fromX":I
    goto :goto_2

    .line 1025
    :cond_6
    move v2, v0

    .restart local v2    # "fromY":I
    goto :goto_3
.end method

.method private applyResource(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V
    .locals 3
    .param p1, "tabResource"    # Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 448
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mVideoProfile:I

    iput v1, p0, Lcom/android/incallui/SomcSlidingTab;->mVideoProfile:I

    .line 449
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginBottomId:I

    if-nez v1, :cond_0

    .line 450
    iput v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    .line 454
    :goto_0
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginStartId:I

    if-nez v1, :cond_1

    .line 455
    iput v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    .line 459
    :goto_1
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextSizeId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 460
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 459
    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextSize:F

    .line 461
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextColorId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextColor:I

    .line 462
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mDefaultHintTextId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDefaultHintText:Ljava/lang/String;

    .line 463
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstNormalId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    .line 464
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstPressedId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstPressed:Landroid/graphics/drawable/Drawable;

    .line 465
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstGhostId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstGhost:Landroid/graphics/drawable/Drawable;

    .line 466
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderRightBgId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderRightBg:Landroid/graphics/drawable/Drawable;

    .line 467
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderDefaultBgId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderDefaultBg:Landroid/graphics/drawable/Drawable;

    .line 468
    iget-boolean v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mIsSecondButtonAvailable:Z

    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    .line 469
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mRightPressedHintTextId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mRightPressedHintText:Ljava/lang/String;

    .line 470
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondNormalId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    .line 471
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondPressedId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondPressed:Landroid/graphics/drawable/Drawable;

    .line 472
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondGhostId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondGhost:Landroid/graphics/drawable/Drawable;

    .line 473
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderLeftBg:Landroid/graphics/drawable/Drawable;

    .line 475
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->initiateViews()V

    .line 446
    return-void

    .line 452
    :cond_0
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginBottomId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    goto/16 :goto_0

    .line 457
    :cond_1
    iget v1, p1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginStartId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    goto/16 :goto_1
.end method

.method private clearAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1105
    if-nez p1, :cond_0

    .line 1106
    return-void

    .line 1109
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1110
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1113
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1104
    return-void
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPressTimestamp:J

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 797
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->updateExpandable()V

    .line 798
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSlidingTab;->vibrate(J)V

    .line 793
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 4
    .param p1, "whichHandle"    # I

    .prologue
    const/4 v2, 0x1

    .line 1131
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    if-nez v1, :cond_0

    .line 1132
    return-void

    .line 1134
    :cond_0
    move v0, p1

    .line 1135
    .local v0, "handle":I
    iget-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-nez v1, :cond_1

    .line 1137
    if-ne p1, v2, :cond_3

    const/4 v0, 0x2

    .line 1139
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_4

    .line 1140
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    iget v2, p0, Lcom/android/incallui/SomcSlidingTab;->mVideoProfile:I

    iget-object v3, p0, Lcom/android/incallui/SomcSlidingTab;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/SomcIncomingCallAnswerListener;->onAnswer(ILandroid/content/Context;)V

    .line 1130
    :cond_2
    :goto_1
    return-void

    .line 1137
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1141
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1142
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/incallui/SomcIncomingCallAnswerListener;->onDecline(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private initializeContents(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 340
    const v3, 0x7f0800fa

    .line 339
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextMarginHorizontal:I

    .line 343
    new-instance v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;-><init>(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    .line 344
    .local v1, "tabRes":Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;
    sget-object v2, Lcom/android/incallui/R$styleable;->SomcSlidingTab:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    .local v0, "array":Landroid/content/res/TypedArray;
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderRightBgId:I

    .line 345
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderRightBgId:I

    .line 348
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderLeftBgId:I

    .line 347
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderLeftBgId:I

    .line 350
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderDefaultBgId:I

    .line 349
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderDefaultBgId:I

    .line 352
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginBottomId:I

    .line 351
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginBottomId:I

    .line 354
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginStartId:I

    .line 353
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSliderMarginStartId:I

    .line 356
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextSizeId:I

    .line 355
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextSizeId:I

    .line 358
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextColorId:I

    .line 357
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mHintTextColorId:I

    .line 360
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mDefaultHintTextId:I

    .line 359
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mDefaultHintTextId:I

    .line 362
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mRightPressedHintTextId:I

    .line 361
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mRightPressedHintTextId:I

    .line 364
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstNormalId:I

    .line 363
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstNormalId:I

    .line 366
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstPressedId:I

    .line 365
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstPressedId:I

    .line 368
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstGhostId:I

    .line 367
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mFirstGhostId:I

    .line 370
    iget-boolean v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mIsSecondButtonAvailable:Z

    .line 369
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mIsSecondButtonAvailable:Z

    .line 372
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondNormalId:I

    .line 371
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondNormalId:I

    .line 374
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondPressedId:I

    .line 373
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondPressedId:I

    .line 376
    iget v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondGhostId:I

    .line 375
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;->mSecondGhostId:I

    .line 377
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    .line 380
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    .line 381
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 382
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 383
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    .line 384
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    .line 385
    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 387
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    .line 389
    invoke-direct {p0, v1}, Lcom/android/incallui/SomcSlidingTab;->applyResource(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    .line 337
    return-void
.end method

.method private initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 3
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "visible"    # Z
    .param p4, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x2

    .line 488
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSlidingTab;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSlidingTab;->addView(Landroid/view/View;)V

    .line 487
    :cond_0
    return-void

    .line 491
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initiateTextView(Landroid/widget/TextView;Ljava/lang/String;FIZI)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # F
    .param p4, "textColor"    # I
    .param p5, "visible"    # Z
    .param p6, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x2

    const/4 v0, 0x0

    .line 500
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    if-eqz p5, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    invoke-virtual {p1, v2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 503
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 504
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 505
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 506
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setId(I)V

    .line 507
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 512
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->addView(Landroid/view/View;)V

    .line 499
    :cond_1
    return-void

    .line 501
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initiateViews()V
    .locals 12

    .prologue
    const/16 v11, 0x3ec

    const/16 v10, 0x3eb

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 395
    .local v7, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderDefaultBg:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x3ed

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 396
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mDefaultHintText:Ljava/lang/String;

    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextSize:F

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mHintTextColor:I

    .line 397
    const/16 v6, 0x3ee

    move-object v0, p0

    .line 396
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/SomcSlidingTab;->initiateTextView(Landroid/widget/TextView;Ljava/lang/String;FIZI)V

    .line 398
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x3ea

    invoke-direct {p0, v0, v1, v9, v2}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 400
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderDefaultBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    .line 402
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderDefaultBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    .line 403
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1, v5, v10}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 404
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDefaultHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 405
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1, v5, v11}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 407
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mRightPressedHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstPressed:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x3e9

    invoke-direct {p0, v0, v1, v9, v2}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 392
    return-void

    .line 410
    :cond_1
    const-string/jumbo v0, "window"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 413
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    .line 414
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    .line 415
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1, v5, v10}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 416
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDefaultHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 417
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1, v5, v11}, Lcom/android/incallui/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 419
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mRightPressedHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private moveAnimation(Landroid/view/View;I)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "toPos"    # I

    .prologue
    const/16 v8, 0x1e

    const/16 v7, -0x1e

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1051
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_3

    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v3, v5, :cond_3

    .line 1053
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    :goto_0
    const/4 v1, 0x0

    .line 1059
    .local v1, "animToX":I
    const/4 v2, 0x0

    .line 1060
    .local v2, "animToY":I
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 1066
    :goto_1
    if-gt v1, v8, :cond_1

    if-ge v1, v7, :cond_6

    .line 1067
    :cond_1
    iput-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mIsAnimating:Z

    .line 1068
    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 1071
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v6, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1072
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1073
    new-instance v3, Lcom/android/incallui/SomcSlidingTab$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/SomcSlidingTab$5;-><init>(Lcom/android/incallui/SomcSlidingTab;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1084
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1050
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_2
    :goto_3
    return-void

    .line 1052
    .end local v1    # "animToX":I
    .end local v2    # "animToY":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-nez v3, :cond_4

    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1055
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1063
    .restart local v1    # "animToX":I
    .restart local v2    # "animToY":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    goto :goto_1

    .line 1066
    :cond_6
    if-gt v2, v8, :cond_1

    if-lt v2, v7, :cond_1

    .line 1086
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 1087
    invoke-virtual {p0, v5}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_3

    .line 1069
    :cond_7
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    goto :goto_2

    .line 1088
    :cond_8
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_2

    .line 1089
    iput-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(I)V
    .locals 3
    .param p1, "newPos"    # I

    .prologue
    .line 836
    iget-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/incallui/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 838
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 840
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 843
    :cond_0
    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 844
    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 846
    iget-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 848
    .local v0, "moveBy":I
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 835
    :goto_0
    return-void

    .line 850
    .end local v0    # "moveBy":I
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 851
    .restart local v0    # "moveBy":I
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private setBackgroundLayout()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 594
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v2, v3

    .line 596
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    .line 595
    sub-int/2addr v2, v3

    .line 596
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v4

    .line 597
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    .line 596
    sub-int/2addr v4, v5

    .line 595
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 593
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private setHintLayout()V
    .locals 17

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    .line 560
    .local v11, "sliderHeight":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    .line 561
    .local v12, "sliderWidth":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int v10, v14, v15

    .line 562
    .local v10, "sliderBottom":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 565
    .local v1, "firstButtonWidth":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v14, :cond_4

    .line 566
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 573
    .local v9, "secondButtonWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/SomcSlidingTab;->mHintTextMarginHorizontal:I

    add-int v6, v14, v15

    .line 574
    .local v6, "hintTextLeftPos":I
    sub-int v8, v10, v11

    .line 575
    .local v8, "hintTextTopPos":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v9

    .line 576
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/SomcSlidingTab;->mHintTextMarginHorizontal:I

    .line 575
    sub-int v7, v14, v15

    .line 577
    .local v7, "hintTextRightPos":I
    move v5, v10

    .line 578
    .local v5, "hintTextBottomPos":I
    sub-int v4, v7, v6

    .line 579
    .local v4, "hintParentWidth":I
    sub-int v3, v5, v8

    .line 582
    .local v3, "hintParentHeight":I
    const/high16 v14, 0x40000000    # 2.0f

    .line 581
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 582
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/SomcSlidingTab;->mHintTextParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v15, v15, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v16, 0x0

    .line 581
    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 584
    .local v13, "widthSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    .line 583
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/SomcSlidingTab;->mHintTextParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v15, v15, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v16, 0x0

    .line 583
    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 586
    .local v2, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v4, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v14, v13, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mHintParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v14, v6, v8, v7, v5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 558
    return-void

    .line 559
    .end local v1    # "firstButtonWidth":I
    .end local v2    # "heightSpec":I
    .end local v3    # "hintParentHeight":I
    .end local v4    # "hintParentWidth":I
    .end local v5    # "hintTextBottomPos":I
    .end local v6    # "hintTextLeftPos":I
    .end local v7    # "hintTextRightPos":I
    .end local v8    # "hintTextTopPos":I
    .end local v9    # "secondButtonWidth":I
    .end local v10    # "sliderBottom":I
    .end local v11    # "sliderHeight":I
    .end local v12    # "sliderWidth":I
    .end local v13    # "widthSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    .restart local v11    # "sliderHeight":I
    goto/16 :goto_0

    .line 560
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    .restart local v12    # "sliderWidth":I
    goto/16 :goto_1

    .line 563
    .restart local v10    # "sliderBottom":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .restart local v1    # "firstButtonWidth":I
    goto/16 :goto_2

    .line 567
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .restart local v9    # "secondButtonWidth":I
    goto/16 :goto_3

    .line 570
    .end local v9    # "secondButtonWidth":I
    :cond_4
    move v9, v1

    .restart local v9    # "secondButtonWidth":I
    goto/16 :goto_3
.end method

.method private setHintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "hintText"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->setHintLayout()V

    .line 541
    return-void
.end method

.method private setLayout(Landroid/widget/ImageView;I)V
    .locals 8
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "offset"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 548
    .local v1, "tw":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 549
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 550
    .local v0, "h":I
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_0

    .line 551
    sub-int v3, p2, v2

    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v4, v5

    add-int v5, p2, v2

    .line 552
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v6, v7

    .line 551
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 546
    :goto_0
    return-void

    .line 554
    :cond_0
    sub-int v3, v1, v2

    sub-int v4, p2, v0

    add-int v5, v1, v2

    add-int v6, p2, v0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 804
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/SomcSlidingTab;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 807
    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    packed-switch v0, :pswitch_data_0

    .line 817
    :goto_0
    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/SomcSlidingTab;->animateGhostMore(II)V

    .line 821
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/SomcSlidingTab;->moveAnimation(Landroid/view/View;I)V

    .line 802
    return-void

    .line 809
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDefaultHintText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->setHintText(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mRightPressedHintText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->setHintText(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_0
    iput-boolean v4, p0, Lcom/android/incallui/SomcSlidingTab;->mResetAfterGhost:Z

    goto :goto_1

    .line 822
    :cond_1
    iget v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    goto :goto_2

    .line 807
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sliderTouchEvent(IFFI)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "xPos"    # F
    .param p3, "yPos"    # F
    .param p4, "pointerId"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "invalidate":Z
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_5

    .end local p2    # "xPos":F
    :goto_0
    float-to-int v2, p2

    .line 691
    .local v2, "touchVal":I
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_8

    .line 692
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_7

    .line 693
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p3

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    const/4 v1, 0x1

    .line 698
    .local v1, "isYPosTouchable":Z
    :goto_1
    if-eqz p1, :cond_0

    const/4 v3, 0x5

    if-ne p1, v3, :cond_d

    .line 699
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mAccessability:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_a

    .line 704
    :cond_1
    iput v2, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerStartPos:I

    .line 707
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstTouchablePart:I

    if-ge v2, v3, :cond_b

    .line 708
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v3, :cond_2

    .line 709
    invoke-virtual {p0, v6}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 712
    :cond_2
    iput-byte v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    .line 713
    iget-object v3, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 714
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->disableButtonPress()V

    .line 715
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerStartPos:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerOff:I

    .line 716
    iput p4, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    .line 785
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 786
    iget-object v3, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 789
    :cond_4
    return v5

    .end local v1    # "isYPosTouchable":Z
    .end local v2    # "touchVal":I
    .restart local p2    # "xPos":F
    :cond_5
    move p2, p3

    .line 689
    goto :goto_0

    .line 693
    .end local p2    # "xPos":F
    .restart local v2    # "touchVal":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isYPosTouchable":Z
    goto :goto_1

    .line 692
    .end local v1    # "isYPosTouchable":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "isYPosTouchable":Z
    goto :goto_1

    .line 695
    .end local v1    # "isYPosTouchable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_9

    const/4 v1, 0x1

    .restart local v1    # "isYPosTouchable":Z
    goto :goto_1

    .end local v1    # "isYPosTouchable":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "isYPosTouchable":Z
    goto :goto_1

    .line 700
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->invalidate()V

    .line 701
    return v5

    .line 717
    :cond_b
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondTouchablePart:I

    if-le v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v3, :cond_3

    .line 718
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v3, :cond_c

    .line 719
    invoke-virtual {p0, v6}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 722
    :cond_c
    iput-byte v7, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    .line 723
    iget-object v3, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 724
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->disableButtonPress()V

    .line 725
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerStartPos:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerOff:I

    .line 726
    iput p4, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    goto :goto_2

    .line 728
    :cond_d
    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-eqz v3, :cond_10

    .line 729
    if-eq p1, v5, :cond_e

    const/4 v3, 0x6

    if-ne p1, v3, :cond_10

    .line 732
    :cond_e
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    if-ne v3, p4, :cond_3

    .line 733
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    .line 734
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    if-eqz v3, :cond_f

    .line 735
    invoke-virtual {p0, v2}, Lcom/android/incallui/SomcSlidingTab;->sliderButtonReleaseAfter(I)V

    .line 739
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    .line 737
    :cond_f
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->sliderButtonReleaseBefore()V

    goto :goto_3

    .line 742
    :cond_10
    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-eqz v3, :cond_3

    if-ne p1, v7, :cond_3

    .line 746
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    if-eq v3, p4, :cond_11

    .line 747
    return v5

    .line 750
    :cond_11
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    if-nez v3, :cond_15

    .line 751
    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v3, v5, :cond_14

    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondActivatePoint:I

    if-le v2, v3, :cond_14

    .line 754
    :cond_12
    iput-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    .line 755
    const/4 v0, 0x1

    .line 765
    :cond_13
    :goto_4
    if-nez v0, :cond_17

    .line 766
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mLastMovePos:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickeringThreshold:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_17

    .line 767
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mLastMovePos:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickeringThreshold:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_17

    .line 768
    return v5

    .line 752
    :cond_14
    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v3, v7, :cond_15

    .line 753
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstActivatePoint:I

    if-lt v2, v3, :cond_12

    .line 756
    :cond_15
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    if-eqz v3, :cond_13

    .line 757
    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v3, v5, :cond_16

    .line 758
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondActivatePoint:I

    add-int/lit8 v3, v3, -0xa

    if-ge v2, v3, :cond_16

    .line 761
    :goto_5
    iput-boolean v6, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    .line 762
    const/4 v0, 0x1

    goto :goto_4

    .line 759
    :cond_16
    iget-byte v3, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v3, v7, :cond_13

    .line 760
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstActivatePoint:I

    add-int/lit8 v3, v3, 0xa

    if-le v2, v3, :cond_13

    goto :goto_5

    .line 770
    :cond_17
    iput v2, p0, Lcom/android/incallui/SomcSlidingTab;->mLastMovePos:I

    .line 773
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerOff:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerOff:I

    .line 775
    iget-boolean v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickerDone:Z

    if-nez v3, :cond_18

    .line 776
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerStartPos:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickeringThreshold:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_18

    .line 777
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerStartPos:I

    iget v4, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickeringThreshold:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 779
    :cond_18
    iput-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 780
    iget v3, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerOff:I

    sub-int v3, v2, v3

    invoke-direct {p0, v3}, Lcom/android/incallui/SomcSlidingTab;->moveControl(I)V

    .line 781
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method private updateExpandable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 856
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 857
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 862
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderRightBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 863
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 870
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 883
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSlidingTab;->animateGhost(J)V

    .line 855
    return-void

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 871
    :cond_3
    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 872
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderLeftBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 873
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_4

    .line 876
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 881
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mRightPressedHintText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->setHintText(Ljava/lang/String;)V

    goto :goto_1

    .line 878
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private vibrate(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/android/incallui/SomcSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1098
    const-string/jumbo v1, "vibrator"

    .line 1097
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1094
    :cond_1
    return-void
.end method


# virtual methods
.method protected animateExpandedToDisabled(Z)V
    .locals 6
    .param p1, "animateExpanded"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 915
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 916
    .local v0, "goneToDispAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 918
    iget-boolean v1, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 926
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    if-eqz p1, :cond_3

    .line 932
    iget-byte v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 933
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 914
    :cond_0
    :goto_1
    return-void

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-byte v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 935
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 938
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 939
    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1151
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    const/4 v0, 0x1

    return v0
.end method

.method public initVideoSlider()V
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lcom/android/incallui/SomcSlidingTab;->sVideoSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->applyResource(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    .line 439
    return-void
.end method

.method public initVoiceSlider()V
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mOnehandEnabled:Z

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/android/incallui/SomcSlidingTab;->sVoiceOneHandSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->applyResource(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    .line 428
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v0, Lcom/android/incallui/SomcSlidingTab;->sVoiceSlidingTabResource:Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->applyResource(Lcom/android/incallui/SomcSlidingTab$SlidingTabResource;)V

    goto :goto_0
.end method

.method protected measureDimension(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "wantedSize"    # I

    .prologue
    .line 632
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 633
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 634
    .local v2, "specSize":I
    move v0, p2

    .line 636
    .local v0, "size":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 637
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 639
    move v0, v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 522
    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mAccessability:Z

    .line 524
    if-nez p1, :cond_1

    .line 525
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->setBackgroundLayout()V

    .line 529
    invoke-direct {p0}, Lcom/android/incallui/SomcSlidingTab;->setHintLayout()V

    .line 530
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 531
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 521
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 605
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    invoke-virtual {p0, p1, v5}, Lcom/android/incallui/SomcSlidingTab;->measureDimension(II)I

    move-result v4

    .line 606
    .local v4, "width":I
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    invoke-virtual {p0, p2, v5}, Lcom/android/incallui/SomcSlidingTab;->measureDimension(II)I

    move-result v1

    .line 608
    .local v1, "height":I
    iget-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderWidth:I

    .line 609
    .local v2, "sliderLength":I
    :goto_0
    iget-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 611
    .local v0, "firstButtonLength":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 615
    .local v3, "specSize":I
    :goto_2
    div-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    .line 617
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondBtnPosition:I

    .line 619
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstTouchablePart:I

    .line 621
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstTouchablePart:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondTouchablePart:I

    .line 623
    int-to-double v6, v2

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 624
    iget v6, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderMarginStart:I

    .line 623
    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstActivatePoint:I

    .line 626
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mFirstActivatePoint:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/incallui/SomcSlidingTab;->mSecondActivatePoint:I

    .line 628
    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/SomcSlidingTab;->setMeasuredDimension(II)V

    .line 604
    return-void

    .line 608
    .end local v0    # "firstButtonLength":I
    .end local v2    # "sliderLength":I
    .end local v3    # "specSize":I
    :cond_0
    iget v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderHeight:I

    .restart local v2    # "sliderLength":I
    goto :goto_0

    .line 610
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .restart local v0    # "firstButtonLength":I
    goto :goto_1

    .line 611
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .restart local v3    # "specSize":I
    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    .line 650
    iget-boolean v5, p0, Lcom/android/incallui/SomcSlidingTab;->mIsAnimating:Z

    if-eqz v5, :cond_0

    .line 651
    const/4 v5, 0x1

    return v5

    .line 654
    :cond_0
    const/4 v4, 0x0

    .line 655
    .local v4, "touchHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 656
    .local v0, "action":I
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v1, v5, 0x8

    .line 658
    .local v1, "currentIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 660
    .local v2, "currentPointerId":I
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    if-ne v5, v2, :cond_3

    .line 661
    :cond_1
    and-int/lit16 v5, v0, 0xff

    .line 662
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 661
    invoke-direct {p0, v5, v6, v7, v2}, Lcom/android/incallui/SomcSlidingTab;->sliderTouchEvent(IFFI)Z

    move-result v4

    .line 674
    .end local v4    # "touchHandled":Z
    :cond_2
    :goto_0
    return v4

    .line 663
    .restart local v4    # "touchHandled":Z
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 664
    iget v5, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 666
    .local v3, "pointerIndex":I
    if-eq v3, v6, :cond_4

    .line 667
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 668
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    .line 667
    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/incallui/SomcSlidingTab;->sliderTouchEvent(IFFI)Z

    move-result v4

    .local v4, "touchHandled":Z
    goto :goto_0

    .line 670
    .local v4, "touchHandled":Z
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_0
.end method

.method public resetSlider(Z)V
    .locals 4
    .param p1, "animateExpanded"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 894
    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SomcSlidingTab;->mIsSecondButtonAvailable:Z

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSlidingTab;->animateExpandedToDisabled(Z)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 898
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mResetAfterGhost:Z

    .line 901
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mIsAnimating:Z

    .line 902
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 903
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 904
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mPastActionPoint:Z

    .line 905
    iput-boolean v2, p0, Lcom/android/incallui/SomcSlidingTab;->mLongpressGhostStarted:Z

    .line 906
    iput v3, p0, Lcom/android/incallui/SomcSlidingTab;->mLastMovePos:I

    .line 907
    iput-byte v2, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    .line 908
    iput v3, p0, Lcom/android/incallui/SomcSlidingTab;->mActivePointerId:I

    .line 910
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mDefaultHintText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->setHintText(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderDefaultBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 893
    return-void
.end method

.method public setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/incallui/SomcSlidingTab;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 1121
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 482
    return-void
.end method

.method protected sliderButtonReleaseAfter(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 827
    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 828
    invoke-direct {p0, v1}, Lcom/android/incallui/SomcSlidingTab;->dispatchTriggerEvent(I)V

    .line 832
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 826
    return-void

    .line 829
    :cond_1
    iget-byte v0, p0, Lcom/android/incallui/SomcSlidingTab;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 830
    invoke-direct {p0, v2}, Lcom/android/incallui/SomcSlidingTab;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method
