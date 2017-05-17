.class public Lcom/android/incallui/SomcSmallEndCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "SomcSmallEndCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/SomcAmProvider$SomcAmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/SomcAmProvider$SomcAmListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/incallui/SomcSmallEndCallPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SomcSmallEndCallPresenter;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 27
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallEndCallPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 26
    return-void
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    .line 113
    .local v1, "ui":Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;
    if-nez v1, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    :cond_1
    const/4 v0, 0x0

    .line 121
    .local v0, "isEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 123
    invoke-interface {v1, v4}, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;->setVisible(Z)V

    .line 124
    return-void

    .line 118
    .end local v0    # "isEnabled":Z
    :cond_2
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isEnabled":Z
    goto :goto_0

    .end local v0    # "isEnabled":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isEnabled":Z
    goto :goto_0

    .line 128
    :cond_4
    if-eqz p2, :cond_6

    .line 129
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    .line 130
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    .line 131
    :cond_5
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;->changeSlidingTabToEnded(Z)V

    .line 136
    :cond_6
    :goto_1
    invoke-interface {v1, v0}, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;->setVisible(Z)V

    .line 138
    sget-object v2, Lcom/android/incallui/SomcSmallEndCallPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Updating call UI for call: "

    invoke-static {v2, v3, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void

    .line 133
    :cond_7
    invoke-interface {v1, v4}, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;->changeSlidingTabToEnded(Z)V

    goto :goto_1
.end method


# virtual methods
.method public endCall()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 96
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SomcSmallEndCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 95
    return-void
.end method

.method public onSomcAmModeChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 102
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 103
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 105
    .local v1, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/SomcSmallEndCallPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 100
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v1    # "state":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;->setVisible(Z)V

    .line 68
    return-void

    .line 71
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    .line 72
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 89
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/incallui/SomcSmallEndCallPresenter;->mCall:Lcom/android/incallui/Call;

    .line 91
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v1}, Lcom/android/incallui/SomcSmallEndCallPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 63
    return-void

    .line 73
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_4

    .line 74
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 78
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 86
    .local v0, "call":Lcom/android/incallui/Call;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 36
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->addListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 42
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 44
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallEndCallPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 33
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 33
    check-cast p1, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSmallEndCallPresenter;->onUiReady(Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 53
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 55
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->removeListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 59
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 50
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 50
    check-cast p1, Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSmallEndCallPresenter;->onUiUnready(Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;)V

    return-void
.end method
