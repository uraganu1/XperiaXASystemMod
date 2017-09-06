.class public Lcom/android/incallui/SomcSmartCoverManager;
.super Ljava/lang/Object;
.source "SomcSmartCoverManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsCloseSmartCover:Z

.field private mIsCoverFeatureEnabled:Z

.field private mSmartCoverBackLightTimer:Ljava/util/Timer;

.field private mSomcSmartCoverDialogManager:Lcom/android/incallui/SomcSmartCoverDialogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SomcSmartCoverManager;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCloseSmartCover:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCoverFeatureEnabled:Z

    .line 50
    iput-object p1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/incallui/SomcSmartCoverManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 65
    iput-boolean v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCloseSmartCover:Z

    .line 49
    return-void
.end method

.method public static isStyleCoverFeatureEnabled()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method private updateInCallDialogVisibility()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCloseSmartCover:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 108
    .local v0, "isShowFullScreenDialog":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->updateDialogsVisibility(Z)V

    .line 109
    invoke-direct {p0}, Lcom/android/incallui/SomcSmartCoverManager;->updateSmartCoverMessageDialog()V

    .line 106
    return-void

    .line 107
    .end local v0    # "isShowFullScreenDialog":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isShowFullScreenDialog":Z
    goto :goto_0
.end method

.method private updateSmartCoverMessageDialog()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCloseSmartCover:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 117
    .local v0, "isShowSmartCoverDialog":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mSomcSmartCoverDialogManager:Lcom/android/incallui/SomcSmartCoverDialogManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/SomcSmartCoverDialogManager;->updateSmartCoverMessageDialog(Z)V

    .line 115
    return-void

    .line 116
    .end local v0    # "isShowSmartCoverDialog":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isShowSmartCoverDialog":Z
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 83
    return-void
.end method

.method public isActivityStarted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCoverClosed()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCloseSmartCover:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCoverFeatureEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFeatureEnabled()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCoverFeatureEnabled:Z

    return v0
.end method

.method public isSmartCoverBackLightTimerNecessary()Z
    .locals 4

    .prologue
    .line 229
    iget-boolean v2, p0, Lcom/android/incallui/SomcSmartCoverManager;->mIsCloseSmartCover:Z

    if-eqz v2, :cond_1

    .line 230
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 231
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 232
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 233
    const/16 v3, 0x8

    .line 232
    if-ne v2, v3, :cond_1

    .line 234
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 237
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callList":Lcom/android/incallui/CallList;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmartCoverManager;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/incallui/SomcSmartCoverManager;->updateInCallDialogVisibility()V

    .line 290
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmartCoverManager;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/incallui/SomcSmartCoverManager;->updateInCallDialogVisibility()V

    .line 275
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmartCoverManager;->stopSmartCoverBackLightTimer()V

    .line 272
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmartCoverManager;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/incallui/SomcSmartCoverManager;->updateInCallDialogVisibility()V

    .line 283
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmartCoverManager;->isSmartCoverBackLightTimerNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmartCoverManager;->startSmartCoverBackLightTimer()V

    .line 280
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public startSmartCoverBackLightTimer()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public stopSmartCoverBackLightTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mSmartCoverBackLightTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/incallui/SomcSmartCoverManager;->mSmartCoverBackLightTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 257
    iput-object v1, p0, Lcom/android/incallui/SomcSmartCoverManager;->mSmartCoverBackLightTimer:Ljava/util/Timer;

    .line 254
    :cond_0
    return-void
.end method
