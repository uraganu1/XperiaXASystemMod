.class public Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;
.implements Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargetsProvider;
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;,
        Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Landroid/widget/TextClock;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextClock;

.field private mDigitalClockAmPm:Landroid/widget/TextClock;

.field private mNextAlarmText:Ljava/lang/String;

.field private mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

.field private mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

.field private final mScaleContainerScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->notifyDrawingUpdated()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    .line 46
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    .line 48
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    .line 50
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;)V

    .line 58
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainerScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    .line 81
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private fetchViewHandles()V
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/android/keyguard/R$id;->somc_keyguard_clockplugin_scale_container:I

    .line 96
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    .line 98
    sget v0, Lcom/android/keyguard/R$id;->somc_digital_clock_view_clock:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    .line 99
    sget v0, Lcom/android/keyguard/R$id;->somc_digital_clock_view_am_pm:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    .line 100
    sget v0, Lcom/android/keyguard/R$id;->somc_digital_clock_date:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    .line 101
    sget v0, Lcom/android/keyguard/R$id;->somc_digital_clock_alarm:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    .line 103
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refresh()V

    .line 91
    return-void
.end method

.method private notifyDrawingUpdated()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;->onDrawingUpdated()V

    .line 178
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->update(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refreshTime()V

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refreshAlarmStatus()V

    .line 106
    return-void
.end method

.method private refreshTime()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 115
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    sget-object v1, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    sget-object v1, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 112
    return-void
.end method

.method private updateAmPmVisibility()V
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 125
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    sget v3, Lcom/android/keyguard/R$integer;->somc_digital_clock_max_ampm_chars:I

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 134
    .local v0, "maxAmPmChars":I
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    const/16 v1, 0x8

    .line 135
    .local v1, "visibility":I
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    .line 134
    .end local v1    # "visibility":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visibility":I
    goto :goto_1
.end method


# virtual methods
.method public getClippingSources()Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    invoke-direct {v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;-><init>()V

    .line 158
    .local v0, "sources":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 159
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 161
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 162
    return-object v0
.end method

.method public getLeftAlignAnimationTargets()Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 205
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/android/keyguard/R$dimen;->somc_keyguard_themed_animation_text_left_offset:I

    .line 204
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 206
    .local v0, "offset":I
    new-instance v2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    invoke-direct {v2}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;-><init>()V

    .line 207
    .local v2, "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntry(Landroid/view/View;)V

    .line 208
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2, v3, v5, v4}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntryWithLeftOffsetView(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 209
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntryWithLeftOffsetView(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 210
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntryWithLeftOffset(Landroid/view/View;I)V

    .line 211
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntryWithLeftOffset(Landroid/view/View;I)V

    .line 213
    return-object v2
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->fetchViewHandles()V

    .line 85
    return-void
.end method

.method refreshAlarmStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarm"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refreshAlarmStatus()V

    .line 189
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->updateAmPmVisibility()V

    .line 186
    return-void
.end method

.method public setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .prologue
    const/4 v1, 0x0

    .line 170
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainerScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setOnScaleChangedCallback(Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;)V

    .line 169
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setOnScaleChangedCallback(Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;)V

    goto :goto_0
.end method

.method public startClockTicking()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refresh()V

    .line 193
    return-void
.end method

.method public stopClockTicking()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
