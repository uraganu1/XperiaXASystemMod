.class public Lcom/android/incallui/SomcAnsweringMachinePresenter;
.super Lcom/android/incallui/Presenter;
.source "SomcAnsweringMachinePresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/SomcAmProvider$SomcAmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/SomcAmProvider$SomcAmListener;"
    }
.end annotation


# instance fields
.field private mAmMode:I

.field private mAmModeSubParameter:Ljava/lang/String;

.field private mCall:Lcom/android/incallui/Call;

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mGreetingDuration:J

.field private mRecordingStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmMode:I

    .line 34
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/SomcAnsweringMachinePresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter$1;-><init>(Lcom/android/incallui/SomcAnsweringMachinePresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 32
    return-void
.end method

.method private checkFirstAmMode()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v2

    .line 48
    .local v2, "amProvider":Lcom/android/incallui/SomcAmProvider;
    invoke-virtual {v2}, Lcom/android/incallui/SomcAmProvider;->getAmMode()I

    move-result v0

    .line 49
    .local v0, "amMode":I
    invoke-virtual {v2}, Lcom/android/incallui/SomcAmProvider;->getAmModeSubParameter()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "amParameter":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onSomcAmModeChanged(ILjava/lang/String;)V

    .line 46
    :cond_1
    return-void
.end method

.method private exitAnsweringMachine()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->stopTimerAndAnimation()V

    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setVisible(Z)V

    .line 93
    :cond_0
    iput v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmMode:I

    .line 94
    iput-object v2, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmModeSubParameter:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 42
    return-void
.end method

.method private refreshState(ILjava/lang/String;)V
    .locals 12
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v6, 0x0

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v8, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-nez v4, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v8, p1, :cond_2

    .line 200
    invoke-direct {p0, v10, v11}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->startTimer(J)V

    .line 202
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mGreetingDuration:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    iget-wide v6, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mGreetingDuration:J

    long-to-int v5, v6

    invoke-interface {v4, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingTotalTime(I)V

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "resumeTime":F
    iget-object v4, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 209
    iget-object v4, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-float v3, v4

    .line 211
    rem-float v4, v3, v9

    sub-float/2addr v3, v4

    .line 213
    .end local v0    # "callStart":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v4, v3}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->startAmPlayingAnimation(F)V

    .line 214
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .line 215
    div-float v5, v3, v9

    .line 214
    float-to-long v6, v5

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingElapsedTime(ZLjava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v4}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->showAmPlayingAnimation()V

    .line 217
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v4, v8}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setVisible(Z)V

    .line 218
    return-void

    .line 203
    .end local v3    # "resumeTime":F
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/NumberFormatException;
    iput-wide v6, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mGreetingDuration:J

    goto :goto_0

    .line 219
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmRecording()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_3

    .line 220
    invoke-direct {p0, v10, v11}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->startTimer(J)V

    .line 222
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mRecordingStartTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mRecordingStartTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    .line 227
    .restart local v3    # "resumeTime":F
    rem-float v4, v3, v9

    sub-float/2addr v3, v4

    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v4, v3}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->startAmRecordingAnimation(F)V

    .line 229
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .line 230
    div-float v5, v3, v9

    .line 229
    float-to-long v6, v5

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmRecordingElapsedTime(ZLjava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v4}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->showAmRecordingAnimation()V

    .line 232
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v4, v8}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setVisible(Z)V

    .line 233
    return-void

    .line 223
    .end local v3    # "resumeTime":F
    :catch_1
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    iput-wide v6, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mRecordingStartTime:J

    goto :goto_1

    .line 236
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->exitAnsweringMachine()V

    .line 194
    return-void
.end method

.method private startTimer(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 73
    :cond_0
    return-void
.end method

.method private stopTimerAndAnimation()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v0}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->hideAmAnimation()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnswer(I)V
    .locals 2
    .param p1, "callType"    # I

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->setAmPickupByUser()V

    .line 244
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->dismissKeyguard(Z)V

    .line 240
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const-string/jumbo v0, "onDecline "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->setAmHangupByUser()V

    .line 250
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onSomcAmModeChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    iget v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmMode:I

    if-ne v1, p1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmModeSubParameter:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 134
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmModeSubParameter:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmModeSubParameter:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    return-void

    .line 140
    :cond_2
    iput p1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmMode:I

    .line 141
    iput-object p2, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmModeSubParameter:Ljava/lang/String;

    .line 143
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->showErrorDialog(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->stopTimerAndAnimation()V

    .line 123
    :goto_1
    return-void

    .line 153
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->refreshState(ILjava/lang/String;)V

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    .line 101
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v0}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->showAmPlayingAnimation()V

    .line 105
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setVisible(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->checkFirstAmMode()V

    .line 107
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v0}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->showAmRecordingAnimation()V

    .line 110
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setVisible(Z)V

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->checkFirstAmMode()V

    .line 112
    return-void

    .line 117
    :cond_1
    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->exitAnsweringMachine()V

    .line 98
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 59
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->addListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 61
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 62
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->init()V

    .line 56
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 56
    check-cast p1, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onUiReady(Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 69
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 70
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->removeListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 66
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 66
    check-cast p1, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onUiUnready(Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;)V

    return-void
.end method

.method public updateCallTime()V
    .locals 10

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    .line 160
    .local v4, "ui":Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v5, :cond_3

    .line 161
    :cond_0
    if-eqz v4, :cond_1

    .line 162
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingElapsedTime(ZLjava/lang/String;)V

    .line 163
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmRecordingElapsedTime(ZLjava/lang/String;)V

    .line 165
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 157
    :cond_2
    :goto_0
    return-void

    .line 160
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 169
    iget v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 170
    iget-object v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 171
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 172
    .local v2, "duration":J
    iget-wide v6, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mGreetingDuration:J

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 173
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingElapsedTime(ZLjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_4
    iget-wide v6, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mGreetingDuration:J

    .line 175
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingElapsedTime(ZLjava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v0    # "callStart":J
    .end local v2    # "duration":J
    :cond_5
    iget v5, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mAmMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter;->mRecordingStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 180
    .restart local v2    # "duration":J
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingElapsedTime(ZLjava/lang/String;)V

    .line 181
    const-wide/16 v6, 0x3c

    cmp-long v5, v2, v6

    if-gez v5, :cond_6

    .line 182
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmRecordingElapsedTime(ZLjava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_6
    const-wide/16 v6, 0x3c

    .line 184
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmRecordingElapsedTime(ZLjava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v2    # "duration":J
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmPlayingElapsedTime(ZLjava/lang/String;)V

    .line 189
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;->setAmRecordingElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method
