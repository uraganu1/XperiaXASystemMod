.class public final Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "LockscreenGoogleAnalyticsHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClockSelectionReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getFingerprintCountReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;

    .line 88
    new-instance v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-direct {v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;-><init>()V

    .line 89
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 87
    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V

    .line 90
    .local v0, "reporter":Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;
    return-object v0
.end method

.method private static getLockscreenTypeReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v1, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;

    .line 61
    new-instance v3, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    .line 63
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 62
    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    .line 61
    invoke-direct {v3, v0, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/ILockSettings;)V

    .line 64
    new-instance v4, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-direct {v4}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;-><init>()V

    .line 65
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 60
    invoke-direct {v1, p0, v3, v4, v2}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V

    .line 66
    .local v1, "reporter":Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;
    return-object v1
.end method

.method public static getReporters(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "reporters":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;>;"
    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getLockscreenTypeReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getClockSelectionReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getFingerprintCountReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getSmartLockReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getSeeThroughClockReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getSeeThroughClockReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "reporter":Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;
    return-object v0
.end method

.method private static getSmartLockReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/SmartLockGoogleAnalyticsReporter;

    .line 102
    new-instance v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-direct {v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;-><init>()V

    .line 103
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 101
    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/keyguard/googleanalytics/SmartLockGoogleAnalyticsReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V

    .line 104
    .local v0, "reporter":Lcom/sonymobile/keyguard/googleanalytics/SmartLockGoogleAnalyticsReporter;
    return-object v0
.end method
