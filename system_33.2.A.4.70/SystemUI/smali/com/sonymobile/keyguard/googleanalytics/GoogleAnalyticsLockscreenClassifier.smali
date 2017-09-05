.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;
.super Ljava/lang/Object;
.source "GoogleAnalyticsLockscreenClassifier.java"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockSettings:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/ILockSettings;)V
    .locals 0
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "lockSettings"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 48
    return-void
.end method

.method private getHumanReadableLockscreenNameForQuality(I)Ljava/lang/String;
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 80
    sparse-switch p1, :sswitch_data_0

    .line 100
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Unknown:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :sswitch_0
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Pattern:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :sswitch_1
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->PIN:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :sswitch_2
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Password:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :sswitch_3
    iget-object v0, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->None:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Swipe:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :sswitch_4
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->SwipeDefault:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getLockSettingsLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    return-wide p2
.end method


# virtual methods
.method public getHumanReadableLockscreenNameForUser(I)Ljava/lang/String;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 61
    const-string/jumbo v1, "lockscreen.password_type"

    .line 62
    const-wide/16 v2, -0x1

    .line 61
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getLockSettingsLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 63
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 66
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->UnexpectedBiometricWeak:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getHumanReadableLockscreenNameForQuality(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
