.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$Patterns;,
        Lcom/android/keyguard/KeyguardStatusView$1;,
        Lcom/android/keyguard/KeyguardStatusView$2;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextClock;

.field private mClockPluginView:Landroid/view/ViewGroup;

.field private mClockView:Landroid/widget/TextClock;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private mDateView:Landroid/widget/TextClock;

.field private mDigitalClockContainer:Landroid/view/ViewGroup;

.field private mDigitalClockLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

.field private mLinearClockLayout:Landroid/widget/LinearLayout;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardStatusView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardStatusView;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->loadClockForUser(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->requestInvalidate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->startClockTicking()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->stopClockTicking()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mConfiguration:Landroid/content/res/Configuration;

    .line 97
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .line 104
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$2;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 165
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 166
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 163
    return-void
.end method

.method private clearOnDrawingUpdatedCallback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setOnDrawingUpdatedCallback(Landroid/view/ViewGroup;Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 531
    :cond_0
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const-string/jumbo v2, ""

    return-object v2

    .line 320
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string/jumbo v1, "EHm"

    .line 323
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 322
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 361
    .local v2, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 362
    .local v0, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 363
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 362
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    .line 364
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_0

    .line 365
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private initDigitalClockLeftAlignAnimationTargets()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 473
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 476
    .local v2, "resources":Landroid/content/res/Resources;
    sget v4, Lcom/android/keyguard/R$dimen;->somc_keyguard_themed_animation_text_left_offset:I

    .line 475
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 477
    .local v1, "offset":I
    new-instance v3, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    invoke-direct {v3}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;-><init>()V

    .line 478
    .local v3, "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockContainer:Landroid/view/ViewGroup;

    .line 479
    sget v5, Lcom/android/keyguard/R$id;->somc_keyguard_clockvanilla_scale_container:I

    .line 478
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntry(Landroid/view/View;)V

    .line 481
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v3, v4, v6, v5}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntryWithLeftOffsetView(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 482
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntryWithLeftOffsetView(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 483
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntryWithLeftOffset(Landroid/view/View;I)V

    .line 484
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntryWithLeftOffset(Landroid/view/View;I)V

    .line 485
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntryOnlyToLeft(Landroid/view/View;I)V

    .line 486
    iput-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    .line 469
    .end local v0    # "container":Landroid/view/View;
    .end local v1    # "offset":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    :cond_0
    return-void
.end method

.method private isConfigurationChangeDueToThemeChange(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 440
    .local v0, "diff":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v1

    return v1
.end method

.method private isLockscreenClockPluginInflated()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLinearClockLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadClockForUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 209
    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    .line 205
    return-void
.end method

.method private loadClockPluginView(Z)V
    .locals 6
    .param p1, "forceLoad"    # Z

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->refreshLoader()Z

    move-result v0

    .line 228
    :goto_0
    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->clearOnDrawingUpdatedCallback()V

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    .line 231
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLinearClockLayout:Landroid/widget/LinearLayout;

    .line 232
    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockContainer:Landroid/view/ViewGroup;

    .line 230
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->loadCurrentClock(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->startClockTicking()V

    .line 237
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLeftAlignAnimationTargets()V

    .line 238
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateClippingSources()V

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    .line 244
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshClippingStatus()V

    .line 221
    return-void

    .line 226
    :cond_2
    const/4 v0, 0x1

    .local v0, "loadNewClockPlugin":Z
    goto :goto_0
.end method

.method private notifyAttachedToWindowForThemedAnimationHelper()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->handleOnKeyguardStatusViewAttachedToWindow()V

    .line 457
    :cond_0
    return-void
.end method

.method private notifyDetachedToWindowForThemedAnimationHelper()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->handleOnKeyguardStatusViewDetachedFromWindow()V

    .line 463
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 296
    .local v0, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 298
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 293
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshClippingStatus()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->setDrawingEnabled(Z)V

    .line 537
    :cond_0
    return-void
.end method

.method private requestInvalidate()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->requestInvalidate()V

    .line 543
    :cond_0
    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    const-string/jumbo v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " transport text marquee"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 169
    :cond_1
    return-void

    .line 170
    :cond_2
    const-string/jumbo v0, "Disable"

    goto :goto_0
.end method

.method private startClockTicking()V
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->startClockTicking(Landroid/view/ViewGroup;)V

    .line 421
    return-void
.end method

.method private stopClockTicking()V
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->stopClockTicking(Landroid/view/ViewGroup;)V

    .line 431
    return-void
.end method

.method private updateAmPmVisibility()V
    .locals 4

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    if-nez v2, :cond_1

    .line 280
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 278
    :goto_0
    return-void

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 286
    sget v3, Lcom/android/keyguard/R$integer;->somc_digital_clock_max_ampm_chars:I

    .line 285
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 287
    .local v0, "maxAmPmChars":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->length()I

    move-result v2

    if-le v2, v0, :cond_3

    const/16 v1, 0x8

    .line 288
    .local v1, "visibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    .end local v1    # "visibility":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "visibility":I
    goto :goto_1
.end method

.method private updateClippingSources()V
    .locals 3

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    if-eqz v1, :cond_2

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "sources":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->getClippingSources(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    move-result-object v0

    .line 524
    .local v0, "sources":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .line 523
    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setOnDrawingUpdatedCallback(Landroid/view/ViewGroup;Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 527
    .end local v0    # "sources":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->setClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V

    .line 514
    :cond_2
    return-void
.end method

.method private updateLeftAlignAnimationTargets()V
    .locals 4

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->isLockscreenClockPluginInflated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    if-eqz v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 498
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->getLeftAlignAnimationTargets(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    move-result-object v2

    .line 499
    .local v2, "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 502
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/android/keyguard/R$dimen;->somc_keyguard_themed_animation_text_left_offset:I

    .line 501
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 504
    .local v0, "offset":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntryOnlyToLeft(Landroid/view/View;I)V

    .line 510
    .end local v0    # "offset":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-virtual {v3, v2}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->setLeftAlignAnimationTargets(Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;)V

    .line 490
    .end local v2    # "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    :cond_2
    return-void

    .line 507
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    .restart local v2    # "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public loadClockPluginView()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView(Z)V

    .line 217
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 345
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->startClockTicking()V

    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLeftAlignAnimationTargets()V

    .line 347
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateClippingSources()V

    .line 348
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->notifyAttachedToWindowForThemedAnimationHelper()V

    .line 339
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    .line 253
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 252
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 255
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 254
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    .line 258
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 257
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 261
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 260
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->isConfigurationChangeDueToThemeChange(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView(Z)V

    .line 248
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 355
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->stopClockTicking()V

    .line 356
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->notifyDetachedToWindowForThemedAnimationHelper()V

    .line 352
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 178
    sget v2, Lcom/android/keyguard/R$id;->alarm_status:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 179
    sget v2, Lcom/android/keyguard/R$id;->date_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    .line 180
    sget v2, Lcom/android/keyguard/R$id;->clock_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 181
    sget v2, Lcom/android/keyguard/R$id;->somc_digital_clock_am_pm:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    .line 182
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mAmPm:Landroid/widget/TextClock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 185
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->owner_info:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 188
    .local v0, "shouldMarquee":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 189
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 191
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 192
    sget v2, Lcom/android/keyguard/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLinearClockLayout:Landroid/widget/LinearLayout;

    .line 194
    sget v2, Lcom/android/keyguard/R$id;->somc_keyguard_digital_clock_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 193
    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDigitalClockContainer:Landroid/view/ViewGroup;

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->initDigitalClockLeftAlignAnimationTargets()V

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    .line 197
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 176
    return-void
.end method

.method refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 6
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v5, 0x0

    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "alarm":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 302
    .end local v0    # "alarm":Ljava/lang/String;
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockPluginView:Landroid/view/ViewGroup;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateAmPmVisibility()V

    .line 265
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 554
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setScaleX(F)V

    .line 555
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->requestInvalidate()V

    .line 553
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setScaleY(F)V

    .line 564
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->requestInvalidate()V

    .line 562
    return-void
.end method

.method public setThemedAnimationHelper(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mThemedAnimationHelper:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    .line 451
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLeftAlignAnimationTargets()V

    .line 453
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateClippingSources()V

    .line 448
    :cond_0
    return-void
.end method
