.class public Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintAccuracyGoogleAnalyticsReporter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailedAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mFailedAttempts:I

    .line 28
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private sendGAEvent()V
    .locals 8

    .prologue
    .line 54
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UA-47011422-17"

    .line 55
    const-string/jumbo v3, "FingerprintAccuracy"

    iget v0, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mFailedAttempts:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 53
    return-void
.end method


# virtual methods
.method public onFingerprintAuthFailed()V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mFailedAttempts:I

    .line 32
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 39
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 40
    .local v1, "rnd":Ljava/util/Random;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 42
    .local v0, "i":I
    const-string/jumbo v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->sendGAEvent()V

    .line 50
    :cond_0
    :goto_0
    iput v4, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->mFailedAttempts:I

    .line 37
    return-void

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintAccuracyGoogleAnalyticsReporter;->sendGAEvent()V

    goto :goto_0
.end method
