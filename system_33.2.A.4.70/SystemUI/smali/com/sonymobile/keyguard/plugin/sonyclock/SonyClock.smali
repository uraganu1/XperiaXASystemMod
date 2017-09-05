.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.super Landroid/widget/LinearLayout;
.source "SonyClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
.implements Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargetsProvider;
.implements Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;,
        Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;,
        Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmDisplay:Landroid/widget/TextView;

.field private mAmPmDateLayout:Landroid/view/ViewGroup;

.field private mAmPmDisplay:Landroid/widget/TextView;

.field private mAmPmFormat:Ljava/lang/CharSequence;

.field private mDashDisplay:Landroid/widget/TextView;

.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/CharSequence;

.field private mHourFormat12HourClock:Ljava/lang/CharSequence;

.field private mHourFormat24HourClock:Ljava/lang/CharSequence;

.field private mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mIsTicking:Z

.field private mMinuteFormat:Ljava/lang/CharSequence;

.field private mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mNextAlarmText:Ljava/lang/String;

.field private mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

.field private mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

.field private final mScaleContainerScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

.field private mTime:Ljava/util/Calendar;

.field private final mTimeEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->notifyDrawingUpdated()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    .line 104
    new-instance v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    .line 139
    new-instance v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    .line 138
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainerScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    .line 159
    return-void
.end method

.method private addDigitsToClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V
    .locals 4
    .param p1, "sources"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    .param p2, "digit"    # Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .prologue
    .line 413
    invoke-virtual {p2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->getClippingSourceViews()Ljava/util/List;

    move-result-object v1

    .line 414
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 415
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    .line 227
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private fetchDigitViewHandles()V
    .locals 13

    .prologue
    .line 196
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_hour_tens_digit:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 197
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_hour_ones_digit:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 198
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_minute_tens_digit:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 199
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_minute_ones_digit:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 201
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_current_hour_tens:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, "curHT":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_old_hour_tens:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 203
    .local v9, "oldHT":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_place_holder_hour_tens:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 204
    .local v5, "holderHT":Landroid/view/View;
    iget-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v12, v1, v9, v5}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 206
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_current_hour_ones:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "curHO":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_old_hour_ones:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 208
    .local v8, "oldHO":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_place_holder_hour_ones:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 209
    .local v4, "holderHO":Landroid/view/View;
    iget-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v12, v0, v8, v4}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 211
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_current_minute_tens:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "curMT":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_old_minute_tens:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 213
    .local v11, "oldMT":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_place_holder_minute_tens:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 214
    .local v7, "holderMT":Landroid/view/View;
    iget-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v12, v3, v11, v7}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 216
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_current_minute_ones:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 217
    .local v2, "curMO":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_old_minute_ones:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 218
    .local v10, "oldMO":Landroid/view/View;
    sget v12, Lcom/android/keyguard/R$id;->somc_sony_clock_digit_place_holder_minute_ones:I

    invoke-virtual {p0, v12}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 219
    .local v6, "holderMO":Landroid/view/View;
    iget-object v12, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v12, v2, v10, v6}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 195
    return-void
.end method

.method private fetchViewHandles()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->fetchDigitViewHandles()V

    .line 176
    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    .line 177
    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_dash:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    .line 178
    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_date:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    .line 179
    sget v1, Lcom/android/keyguard/R$id;->somc_sony_clock_alarm:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    .line 182
    sget v1, Lcom/android/keyguard/R$id;->somc_keyguard_clockplugin_scale_container:I

    .line 181
    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    .line 183
    sget v1, Lcom/android/keyguard/R$id;->ampm_date_layout:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDateLayout:Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_hour_format_12_hour_clock:I

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    .line 189
    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_hour_format_24_hour_clock:I

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    .line 190
    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_minute_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteFormat:Ljava/lang/CharSequence;

    .line 191
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateFormat()V

    .line 192
    sget v1, Lcom/android/keyguard/R$string;->somc_sony_clock_am_pm_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmFormat:Ljava/lang/CharSequence;

    .line 170
    return-void
.end method

.method private notifyDrawingUpdated()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;->onDrawingUpdated()V

    .line 405
    :cond_0
    return-void
.end method

.method private registerTimeEventReceiver()V
    .locals 5

    .prologue
    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    return-void
.end method

.method private registerTimeSettingsChangeObserver()V
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 346
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    .line 345
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 343
    return-void
.end method

.method private unregisterTimeEventReceiver()V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    return-void
.end method

.method private unregisterTimeSettingsChangeObserver()V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 349
    return-void
.end method

.method private updateAlarmDisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    .line 292
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 291
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateClockDisplay(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    .local v0, "hour":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 257
    .local v1, "minute":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 258
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 259
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 260
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 262
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateDisplay()V

    .line 263
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateAlarmDisplay()V

    .line 244
    .end local v0    # "hour":Ljava/lang/CharSequence;
    .end local v1    # "minute":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hour":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private updateDateDisplay()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    .line 285
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->somc_sony_clock_date_digit_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 284
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 267
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->somc_sony_clock_date_digit_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 275
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    .line 278
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->somc_sony_clock_date_digit_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 277
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDateFormat()V
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->somc_sony_clock_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateFormat:Ljava/lang/CharSequence;

    .line 222
    return-void
.end method

.method private updateTime()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime(Z)V

    .line 235
    return-void
.end method

.method private updateTime(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 241
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateClockDisplay(Z)V

    .line 239
    return-void
.end method


# virtual methods
.method public getClippingSources()Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 375
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    invoke-direct {v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;-><init>()V

    .line 376
    .local v0, "sources":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->addDigitsToClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    .line 377
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->addDigitsToClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    .line 378
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->addDigitsToClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    .line 379
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->addDigitsToClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    .line 380
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 381
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 383
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->addEntry(Landroid/view/View;Landroid/view/View;)V

    .line 384
    return-object v0
.end method

.method public getLeftAlignAnimationTargets()Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    .locals 4

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 361
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/android/keyguard/R$dimen;->somc_keyguard_themed_animation_text_left_offset:I

    .line 360
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 362
    .local v0, "offset":I
    new-instance v2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    invoke-direct {v2}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;-><init>()V

    .line 363
    .local v2, "targets":Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    invoke-virtual {v2, p0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addRootEntry(Landroid/view/View;)V

    .line 364
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntry(Landroid/view/View;)V

    .line 365
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDateLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntryWithLeftOffset(Landroid/view/View;I)V

    .line 366
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->addChildEntryWithLeftOffset(Landroid/view/View;I)V

    .line 367
    return-object v2
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 167
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->fetchViewHandles()V

    .line 164
    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 1
    .param p1, "alarm"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateClockDisplay(Z)V

    .line 300
    return-void
.end method

.method public setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .prologue
    const/4 v1, 0x0

    .line 392
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainerScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setOnScaleChangedCallback(Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;)V

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 400
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 401
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 402
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 391
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setOnScaleChangedCallback(Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;)V

    goto :goto_0
.end method

.method public startClockTicking()V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateFormat()V

    .line 313
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->registerTimeEventReceiver()V

    .line 315
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->registerTimeSettingsChangeObserver()V

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    .line 309
    return-void
.end method

.method public stopClockTicking()V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    .line 324
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->unregisterTimeEventReceiver()V

    .line 325
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->unregisterTimeSettingsChangeObserver()V

    .line 321
    :cond_0
    return-void
.end method
