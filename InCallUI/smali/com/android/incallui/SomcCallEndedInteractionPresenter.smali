.class public Lcom/android/incallui/SomcCallEndedInteractionPresenter;
.super Lcom/android/incallui/Presenter;
.source "SomcCallEndedInteractionPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    return-void
.end method

.method private getCallerInfoForCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 98
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$1;-><init>(Lcom/android/incallui/SomcCallEndedInteractionPresenter;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 95
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 7
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-nez v3, :cond_0

    .line 57
    return-void

    .line 58
    :cond_0
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v3, :cond_1

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    invoke-interface {v3, v4}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->setVisible(Z)V

    .line 60
    return-void

    .line 61
    :cond_2
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    invoke-interface {v3, v4}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->setVisible(Z)V

    .line 65
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 66
    .local v0, "backgroundCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 67
    invoke-direct {p0, v0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getCallerInfoForCall(Lcom/android/incallui/Call;)V

    .line 68
    return-void

    .line 71
    :cond_4
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 72
    .local v1, "endCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 73
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasConference()Z

    move-result v3

    if-nez v3, :cond_5

    .line 74
    invoke-static {v1}, Lcom/android/incallui/SomcInCallUiUtils;->checkCurrentStatusForCallEndedInteraction(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 73
    if-eqz v3, :cond_5

    .line 75
    invoke-direct {p0, v1}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getCallerInfoForCall(Lcom/android/incallui/Call;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    invoke-interface {v3, v5}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->setVisible(Z)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    invoke-interface {v3, v4}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->setVisible(Z)V

    goto :goto_0

    .line 84
    :cond_6
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 85
    .local v2, "firstCall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_7

    .line 86
    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getCallerInfoForCall(Lcom/android/incallui/Call;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isSipPhone()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;->enableSmsButton(Z)V

    .line 55
    :cond_7
    return-void

    :cond_8
    move v4, v5

    .line 87
    goto :goto_1
.end method

.method public onUiReady(Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 44
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 40
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 40
    check-cast p1, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->onUiReady(Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 51
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 48
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 48
    check-cast p1, Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->onUiUnready(Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;)V

    return-void
.end method
