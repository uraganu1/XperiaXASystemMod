.class public Lcom/android/incallui/InCallMessageController;
.super Ljava/lang/Object;
.source "InCallMessageController.java"

# interfaces
.implements Lcom/android/incallui/InCallSubstateListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallSessionModificationCauseListener;


# static fields
.field private static sInCallMessageController:Lcom/android/incallui/InCallMessageController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallMessageController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallMessageController;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallMessageController;->sInCallMessageController:Lcom/android/incallui/InCallMessageController;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/incallui/InCallMessageController;

    invoke-direct {v0}, Lcom/android/incallui/InCallMessageController;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallMessageController;->sInCallMessageController:Lcom/android/incallui/InCallMessageController;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallMessageController;->sInCallMessageController:Lcom/android/incallui/InCallMessageController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showUpgradeFailInfo(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 299
    return-void
.end method


# virtual methods
.method public onCallDataUsageChange(J)V
    .locals 5
    .param p1, "dataUsage"    # J

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallDataUsageChange: dataUsage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    const v3, 0x7f0b0253

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "dataUsageChangedText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 227
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallSessionEvent: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 186
    const-string/jumbo v0, "onCallSessionEvent - Context is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->getCallSessionResourceId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 182
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 246
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v1, "onDisconnect: null Extras"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    return-void

    .line 244
    :cond_0
    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 295
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 218
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 236
    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgradeToVideoFail: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallMessageController;->showUpgradeFailInfo(I)V

    .line 289
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 279
    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 284
    return-void
.end method

.method public onVideoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoQualityChanged: - Call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Video quality changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v2, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const v3, 0x7f0b0249

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->getVideoQualityResourceId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "videoQualityChangedText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    return-void

    .line 166
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "videoQualityChangedText":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "onVideoQualityChanged - Context is null/not primary call."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {v0}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 73
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallSubstateNotifier;->addListener(Lcom/android/incallui/InCallSubstateListener;)V

    .line 74
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 75
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 77
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SessionModificationCauseNotifier;->addListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V

    .line 78
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 70
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iput-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallSubstateNotifier;->removeListener(Lcom/android/incallui/InCallSubstateListener;)V

    .line 89
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 90
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 91
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 92
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SessionModificationCauseNotifier;->removeListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V

    .line 93
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 94
    iput-object v2, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 86
    return-void
.end method
