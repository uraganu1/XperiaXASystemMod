.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;
    }
.end annotation


# instance fields
.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryLevelKeyguard:Landroid/widget/TextView;

.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

.field private mClock:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDarkIntensityKeyguard:F

.field private mDarkModeIconColorSingleTone:I

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private mIconTintKeyguard:I

.field private mInvertKeyguardSystemBar:Z

.field private mLightModeIconColorSingleTone:I

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mMoreIcon:Landroid/widget/ImageView;

.field private mNetworkLabel:Landroid/view/View;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field private mPendingDarkIntensity:F

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mSignalClusterKeyguard:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field private mSystemIconArea:Landroid/widget/LinearLayout;

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;F)V
    .locals 0
    .param p1, "darkIntensity"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Landroid/view/View;
    .param p3, "keyguardStatusBar"    # Landroid/view/View;
    .param p4, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const v5, 0x7f10019b

    const v4, 0x7f100199

    const v2, 0x7f100198

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 97
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTintKeyguard:I

    .line 113
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mInvertKeyguardSystemBar:Z

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    .line 127
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 128
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 129
    const v0, 0x7f100164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 131
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 132
    const v0, 0x7f100161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    .line 133
    const v0, 0x7f100163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 134
    const v0, 0x7f100162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mMoreIcon:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 136
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalClusterKeyguard:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 138
    const v0, 0x7f10019c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 139
    const v0, 0x7f10019c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    .line 140
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryLevel:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryLevelKeyguard:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f100063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f10015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetworkLabel:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    .line 145
    const v1, 0x10c000e

    .line 144
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    .line 147
    const v1, 0x10c000d

    .line 146
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 148
    const v0, 0x7f0b0040

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    .line 149
    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateResources()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 350
    if-nez p2, :cond_0

    .line 351
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 352
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 357
    const-wide/16 v2, 0xa0

    .line 355
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 358
    const-wide/16 v2, 0x0

    .line 355
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 359
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/view/View;)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 348
    return-void
.end method

.method private animateIconTint(FJJ)V
    .locals 4
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 421
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 416
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 374
    if-nez p2, :cond_0

    .line 375
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 376
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 380
    const-wide/16 v2, 0x140

    .line 378
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 381
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 382
    const-wide/16 v2, 0x32

    .line 378
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    .line 391
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 391
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 371
    :cond_1
    return-void
.end method

.method private applyIconTint()V
    .locals 5

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 461
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IF)V

    .line 464
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mMoreIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 465
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 466
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryLevel:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyNotificationIconsTint()V

    .line 458
    return-void
.end method

.method private applyIconTintKeyguard()V
    .locals 5

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 474
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTintKeyguard:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalClusterKeyguard:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTintKeyguard:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensityKeyguard:F

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IF)V

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensityKeyguard:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 478
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryLevelKeyguard:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTintKeyguard:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 6

    .prologue
    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 483
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 484
    .local v3, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v5, 0x7f10001c

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 485
    .local v2, "isPreL":Z
    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isGrayscale(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v0

    .line 486
    :goto_1
    if-eqz v0, :cond_0

    .line 487
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 482
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x1

    .local v0, "colorize":Z
    goto :goto_1

    .line 481
    .end local v0    # "colorize":Z
    .end local v2    # "isPreL":Z
    .end local v3    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 452
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 455
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    .line 450
    return-void
.end method

.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 6
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 536
    .local v1, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 537
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "blacklist":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 539
    .local v2, "slot":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 540
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "blacklist":[Ljava/lang/String;
    .end local v2    # "slot":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private isGrayscale(Lcom/android/systemui/statusbar/StatusBarIconView;)Z
    .locals 5
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    const v4, 0x7f10001d

    .line 493
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 494
    .local v1, "isGrayscale":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 495
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 498
    .local v0, "grayscale":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 499
    return v0
.end method

.method private setIconTintInternal(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 437
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 438
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 439
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 438
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 436
    return-void
.end method

.method private setIconTintInternalKeyguard(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 444
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensityKeyguard:F

    .line 445
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 446
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 445
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTintKeyguard:I

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTintKeyguard()V

    .line 443
    return-void
.end method


# virtual methods
.method public addSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, "blocked":Z
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v6, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 192
    .local v1, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 193
    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v6, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 196
    .restart local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 197
    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 189
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 508
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 509
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 511
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 506
    return-void
.end method

.method public appTransitionPending()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 502
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 515
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_1

    .line 516
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 517
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    .line 518
    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    .line 517
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 531
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 514
    return-void

    .line 521
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    .line 526
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    .line 527
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 338
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 331
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  system icons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 334
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    return-void
.end method

.method public hideNetworkLabel(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetworkLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetworkLabel:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 305
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 297
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeSystemIcon(Ljava/lang/String;II)V

    .line 169
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 173
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {p0, v3, v0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_3
    return-void
.end method

.method public removeSystemIcon(Ljava/lang/String;II)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 211
    return-void
.end method

.method public setClockVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    return-void

    .line 326
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setIconsDark(Z)V
    .locals 8
    .param p1, "dark"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 400
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v4, :cond_1

    .line 401
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->deferIconTintChange(F)V

    .line 399
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 401
    goto :goto_0

    .line 402
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    if-eqz v4, :cond_3

    .line 403
    if-eqz p1, :cond_2

    move v1, v0

    .line 404
    :cond_2
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 405
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    move-object v0, p0

    .line 403
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_1

    .line 407
    :cond_3
    if-eqz p1, :cond_4

    move v1, v0

    :cond_4
    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_1
.end method

.method public setIconsDarkKeyguard()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mInvertKeyguardSystemBar:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternalKeyguard(F)V

    .line 411
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNetworkLabel(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetworkLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetworkLabel:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 309
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 301
    return-void
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 20
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 217
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v18

    .line 217
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 222
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 223
    .local v2, "N":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v14, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v15, "uniqueIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_4

    .line 230
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 231
    .local v7, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 232
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 235
    :cond_0
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 229
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 239
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 240
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 239
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 242
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v18, v0

    .line 241
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 243
    const-string/jumbo v17, "StatusBarIconController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IconMerger feature, skip pkg / icon / iconlevel ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 244
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 245
    const-string/jumbo v19, "/"

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 245
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v19, v0

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 246
    const-string/jumbo v19, "/"

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 246
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v19, v0

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 249
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 254
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 258
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "key":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v12, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 261
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 262
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 263
    :cond_6
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_5

    .line 266
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 270
    .end local v5    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 271
    .local v13, "toRemoveCount":I
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v13, :cond_8

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v18, v0

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 275
    :cond_8
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_a

    .line 276
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 277
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-nez v17, :cond_9

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9, v11}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 283
    .end local v16    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v6

    .line 284
    .local v6, "childCount":I
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_c

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 286
    .local v4, "actual":Landroid/view/View;
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 287
    .local v8, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v4, v8, :cond_b

    .line 284
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 290
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_7

    .line 294
    .end local v4    # "actual":Landroid/view/View;
    .end local v8    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyNotificationIconsTint()V

    .line 216
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    const v1, 0x105001b

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x7f0a0021

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryLevel:Landroid/widget/TextView;

    const v1, 0x7f0a00b5

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    const v1, 0x7f0a001a

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mInvertKeyguardSystemBar:Z

    .line 178
    return-void
.end method

.method public updateSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 205
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 207
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 203
    return-void
.end method
