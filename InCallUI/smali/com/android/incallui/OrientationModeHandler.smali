.class public Lcom/android/incallui/OrientationModeHandler;
.super Ljava/lang/Object;
.source "OrientationModeHandler.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# static fields
.field private static sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;


# instance fields
.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/OrientationModeHandler;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/OrientationModeHandler;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/incallui/OrientationModeHandler;

    invoke-direct {v0}, Lcom/android/incallui/OrientationModeHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetailsChanged: - call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public setUp()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {v0}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 75
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 73
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 86
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 84
    return-void
.end method
