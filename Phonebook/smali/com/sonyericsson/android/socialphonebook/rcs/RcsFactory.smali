.class public Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;
.super Ljava/lang/Object;
.source "RcsFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static mTestRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->mTestRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->mTestRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->mTestRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneCapabilityChecker.isRcsTapiEnabled(context)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsTapiEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneCapabilityChecker.isRcsCapPresenceEnabled(context)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsCapPresenceEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsTapiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsCapPresenceEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 44
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TapiRcsConnector created"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)V

    return-object v0

    .line 47
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UnsupportedRcsConnector created"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/UnsupportedRcsConnector;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/UnsupportedRcsConnector;-><init>()V

    return-object v0
.end method
