.class public Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;
.super Ljava/lang/Object;
.source "StatusBarBgAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;
    }
.end annotation


# static fields
.field private static mIsScreenOn:Z

.field private static mShowValueAnimator:Z


# instance fields
.field private mBarHeight:I

.field private mBarHeightKeyguard:I

.field private mContext:Landroid/content/Context;

.field private mDisplayWidth:F

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mGlowWidth:F

.field private mImageView:Landroid/widget/ImageView;

.field private final mOngoingCallReceiver:Landroid/content/BroadcastReceiver;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)F
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mDisplayWidth:F

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)F
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mGlowWidth:F

    return v0
.end method

.method static synthetic -get3(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mShowValueAnimator:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mIsScreenOn:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mShowValueAnimator:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mShowValueAnimator:Z

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mIsScreenOn:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarWindowView"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v7, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeightKeyguard:I

    .line 39
    iput v7, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeight:I

    .line 41
    new-instance v0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$1;-><init>(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mOngoingCallReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.sonymobile.systemui.ACTION_ONGOING_CALL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mOngoingCallReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 88
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v5, 0x0

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 92
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    const v0, 0x7f10015b

    .line 91
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 94
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f10015c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mImageView:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mGlowWidth:F

    .line 98
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mDisplayWidth:F

    .line 100
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 101
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;-><init>(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v8, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 102
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mOngoingCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x2

    .line 120
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mDisplayWidth:F

    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 119
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 122
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 124
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setKeyguardShowing(Landroid/view/View;Z)V
    .locals 3
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "keyguardOn"    # Z

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 137
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeightKeyguard:I

    if-gez v2, :cond_0

    .line 139
    const v2, 0x7f0a0031

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeightKeyguard:I

    .line 141
    :cond_0
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeightKeyguard:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 150
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void

    .line 144
    :cond_1
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeight:I

    if-gez v2, :cond_2

    .line 146
    const v2, 0x1050017

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeight:I

    .line 148
    :cond_2
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->mBarHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method
