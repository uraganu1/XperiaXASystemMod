.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$CanAddCallListener;
.implements Lcom/android/incallui/CallList$ActiveSubChangeListener;
.implements Lcom/android/incallui/InCallCameraManager$Listener;
.implements Lcom/android/incallui/SomcAmProvider$SomcAmListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
        "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
        "Lcom/android/incallui/InCallCameraManager$Listener;",
        "Lcom/android/incallui/SomcAmProvider$SomcAmListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;"
    }
.end annotation


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mPreviousMuteState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 59
    return-void
.end method

.method private updateButtonsState(Lcom/android/incallui/Call;)V
    .locals 19
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 452
    const-string/jumbo v17, "updateButtonsState"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 455
    .local v15, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    .line 457
    .local v6, "isVideo":Z
    invoke-interface {v15}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 458
    const v18, 0x7f090018

    .line 457
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 465
    .local v3, "enableHold":Z
    const/16 v17, 0x8

    .line 464
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    .line 466
    .local v13, "showSwap":Z
    if-nez v13, :cond_7

    .line 467
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    .line 466
    if-eqz v17, :cond_7

    .line 468
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 469
    const/high16 v17, 0x400000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    .line 466
    if-eqz v17, :cond_7

    .line 470
    :cond_0
    move v9, v3

    .line 471
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v5, 0x1

    .line 472
    .local v5, "isCallOnHold":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    .line 474
    .local v4, "isCallDialing":Z
    :goto_2
    const/16 v16, 0x0

    .line 476
    .local v16, "useExt":Z
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v7

    .line 478
    .local v7, "showAddCall":Z
    const/16 v17, 0x4

    .line 477
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v10

    .line 479
    .local v10, "showMerge":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 480
    .local v2, "callState":I
    if-eqz v6, :cond_a

    :cond_1
    const/4 v14, 0x0

    .line 485
    .local v14, "showUpgradeToVideo":Z
    :goto_3
    const/16 v17, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    .line 486
    .local v11, "showMute":Z
    if-nez v6, :cond_e

    .line 487
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->isRcsVideoVisible()Z

    move-result v12

    .line 491
    :goto_4
    const/4 v8, 0x0

    .line 493
    .local v8, "showAddParticipant":Z
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 494
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-interface {v15, v0, v13}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 495
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-interface {v15, v0, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v17

    .line 497
    const/16 v18, 0x1

    .line 496
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    const/16 v17, 0x1

    :goto_5
    const/16 v18, 0x6

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    .line 498
    invoke-interface {v15, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    .line 499
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 500
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-interface {v15, v0, v7}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v17

    .line 502
    const/16 v18, 0x1

    .line 501
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v17, 0x1

    :goto_6
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    .line 503
    if-eqz v14, :cond_11

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setChangeToVideoButtonAppearance(Z)V

    .line 504
    if-nez v14, :cond_12

    move/from16 v17, v12

    :goto_8
    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 505
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-interface {v15, v0, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v17

    .line 507
    const/16 v18, 0x2

    .line 506
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    const/16 v17, 0x1

    :goto_9
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    .line 508
    if-eqz v6, :cond_2

    if-eqz v4, :cond_14

    :cond_2
    const/16 v17, 0x0

    :goto_a
    const/16 v18, 0x5

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const/16 v17, 0x1

    :goto_b
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVideoPaused(Z)V

    .line 510
    if-eqz v6, :cond_16

    const/16 v17, 0x0

    :goto_c
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 512
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isImsCall()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v17

    check-cast v17, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 512
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/SomcInCallUiUtils;->isImsMultipartyCallSupported(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 516
    :cond_3
    if-eqz v10, :cond_4

    if-eqz v6, :cond_18

    :cond_4
    const/16 v17, 0x0

    :goto_d
    const/16 v18, 0x9

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 518
    :goto_e
    if-eqz v6, :cond_5

    if-eqz v5, :cond_19

    :cond_5
    const/16 v17, 0x0

    :goto_f
    const/16 v18, 0xb

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 519
    if-eqz v14, :cond_6

    if-eqz v4, :cond_1a

    :cond_6
    const/16 v17, 0x0

    :goto_10
    const/16 v18, 0xc

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 520
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddParticipant(Z)V

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v12}, Lcom/android/incallui/CallButtonPresenter;->updateVideoButtonsState(Lcom/android/incallui/Call;ZZ)V

    .line 524
    invoke-interface {v15}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateButtonStates()V

    .line 451
    return-void

    .line 466
    .end local v2    # "callState":I
    .end local v4    # "isCallDialing":Z
    .end local v5    # "isCallOnHold":Z
    .end local v7    # "showAddCall":Z
    .end local v8    # "showAddParticipant":Z
    .end local v10    # "showMerge":Z
    .end local v11    # "showMute":Z
    .end local v14    # "showUpgradeToVideo":Z
    .end local v16    # "useExt":Z
    :cond_7
    const/4 v9, 0x0

    .local v9, "showHold":Z
    goto/16 :goto_0

    .line 471
    .end local v9    # "showHold":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "isCallOnHold":Z
    goto/16 :goto_1

    .line 472
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "isCallDialing":Z
    goto/16 :goto_2

    .line 481
    .restart local v2    # "callState":I
    .restart local v7    # "showAddCall":Z
    .restart local v10    # "showMerge":Z
    .restart local v16    # "useExt":Z
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/QtiCallUtils;->hasVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 482
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/Call;)Z

    move-result v17

    .line 480
    if-eqz v17, :cond_1

    .line 483
    :cond_b
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_c

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_d

    :cond_c
    const/4 v14, 0x1

    .restart local v14    # "showUpgradeToVideo":Z
    goto/16 :goto_3

    .end local v14    # "showUpgradeToVideo":Z
    :cond_d
    const/4 v14, 0x0

    .restart local v14    # "showUpgradeToVideo":Z
    goto/16 :goto_3

    .line 486
    .restart local v11    # "showMute":Z
    :cond_e
    const/4 v12, 0x0

    .local v12, "showRcsVideoBtn":Z
    goto/16 :goto_4

    .line 496
    .end local v12    # "showRcsVideoBtn":Z
    .restart local v8    # "showAddParticipant":Z
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 501
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_11
    move/from16 v17, v12

    .line 503
    goto/16 :goto_7

    .line 504
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_8

    .line 506
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 508
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_a

    .line 509
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 510
    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_c

    .line 514
    :cond_17
    const/16 v17, 0x9

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    goto/16 :goto_e

    .line 516
    :cond_18
    const/16 v17, 0x1

    goto/16 :goto_d

    .line 518
    :cond_19
    if-nez v4, :cond_5

    const/16 v17, 0x1

    goto/16 :goto_f

    .line 519
    :cond_1a
    const/16 v17, 0x1

    goto :goto_10
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 426
    const-string/jumbo v2, "Updating call UI for call: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 429
    .local v1, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-nez v1, :cond_0

    .line 430
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 437
    .local v0, "isEnabled":Z
    :goto_0
    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 439
    if-nez p2, :cond_4

    .line 440
    return-void

    .line 434
    .end local v0    # "isEnabled":Z
    :cond_2
    if-eqz p2, :cond_1

    .line 435
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    .restart local v0    # "isEnabled":Z
    goto :goto_0

    .end local v0    # "isEnabled":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isEnabled":Z
    goto :goto_0

    .line 443
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 425
    return-void
.end method

.method private updateVideoButtonsState(Lcom/android/incallui/Call;ZZ)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "showUpgradeToVideo"    # Z
    .param p3, "showRcsVideoBtn"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 612
    if-eqz p2, :cond_4

    .line 613
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 614
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    if-eq v1, v2, :cond_2

    move v1, v2

    .line 613
    :goto_0
    invoke-interface {v0, v4, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    .line 616
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    if-eq v1, v2, :cond_0

    move v3, v2

    .line 616
    :cond_0
    const/16 v1, 0xc

    invoke-interface {v0, v1, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    .line 611
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 614
    goto :goto_0

    :cond_3
    move v1, v3

    .line 613
    goto :goto_0

    .line 619
    :cond_4
    if-eqz p3, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 621
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isRcsVideoEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 622
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    if-eq v1, v2, :cond_5

    move v3, v2

    .line 620
    :cond_5
    invoke-interface {v0, v4, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public addCallClickedWithoutMute()V
    .locals 1

    .prologue
    .line 607
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    .line 606
    return-void
.end method

.method public addParticipantClicked()V
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendAddParticipantIntent()V

    .line 286
    return-void
.end method

.method public changeToVideoClicked()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 324
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    .line 325
    .local v3, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v3, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    .line 329
    .local v2, "currVideoState":I
    invoke-static {v2}, Lcom/android/incallui/CallUtils;->getUnPausedVideoState(I)I

    move-result v1

    .line 330
    .local v1, "currUnpausedVideoState":I
    or-int/lit8 v1, v1, 0x3

    .line 332
    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 335
    .local v4, "videoProfile":Landroid/telecom/VideoProfile;
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 336
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 338
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isRcsVideoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isRcsVideoVisible()Z

    move-result v5

    .line 338
    if-eqz v5, :cond_1

    .line 341
    new-instance v4, Landroid/telecom/VideoProfile;

    .end local v4    # "videoProfile":Landroid/telecom/VideoProfile;
    invoke-direct {v4, v7}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 344
    .restart local v4    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    invoke-virtual {v3, v4}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 345
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v7}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 315
    return-void

    .line 335
    :cond_2
    const/4 v0, 0x0

    .local v0, "canVideoCall":Z
    goto :goto_0
.end method

.method public changeToVoiceClicked()V
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 301
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v0, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    .line 306
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 305
    invoke-direct {v1, v2, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 307
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 299
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getSupportedAudio()I
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public holdClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    if-eqz p1, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Putting the call on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Removing the call from hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mergeClicked()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->getInstance()Lcom/android/incallui/InCallAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallAudioManager;->onMergeClicked()V

    .line 281
    return-void
.end method

.method public muteClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 254
    return-void
.end method

.method public onActiveCameraSelectionChanged(Z)V
    .locals 2
    .param p1, "isUsingFrontFacingCamera"    # Z

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setCameraSwitched(Z)V

    .line 596
    return-void

    .line 600
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActiveSubChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 628
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    .line 629
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 628
    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 631
    .local v0, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 627
    return-void
.end method

.method public onAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 566
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 170
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 169
    return-void
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 549
    const-string/jumbo v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 548
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 551
    const-string/jumbo v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 550
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 552
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 547
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 542
    const-string/jumbo v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 543
    const-string/jumbo v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionModificationStateChange : sessionModificationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 556
    :cond_0
    return-void
.end method

.method public onSomcAmModeChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 204
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 205
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 207
    .local v1, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 202
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v1    # "state":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 109
    .local v1, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_1

    .line 110
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 111
    if-eq p1, p2, :cond_0

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1, v4, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    .line 148
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v2}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 106
    return-void

    .line 116
    :cond_1
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_5

    .line 117
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 118
    .local v0, "previousCall":Lcom/android/incallui/Call;
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_3

    .line 123
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 130
    :cond_3
    if-eqz v1, :cond_0

    .line 131
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_4

    .line 132
    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2, v3}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-interface {v1, v5, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-interface {v1, v4, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    goto :goto_0

    .line 140
    .end local v0    # "previousCall":Lcom/android/incallui/Call;
    :cond_5
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_7

    .line 141
    if-eqz v1, :cond_6

    .line 142
    invoke-interface {v1, v4, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    .line 144
    :cond_6
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 146
    :cond_7
    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 4
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 66
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 67
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/SomcAmProvider;->addListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 73
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 74
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 75
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 76
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallCameraManager;->addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    .line 78
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 81
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 82
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 81
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 63
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 63
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 89
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 90
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 91
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->removeListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 96
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    .line 98
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    .line 99
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 86
    :cond_1
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 86
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 6
    .param p1, "pause"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 380
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    .line 381
    .local v1, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    if-eqz p1, :cond_2

    .line 386
    invoke-virtual {v1, v5}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 387
    new-instance v2, Landroid/telecom/VideoProfile;

    .line 388
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    .line 387
    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 389
    .local v2, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVideoPaused(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    :cond_1
    const/4 v5, 0x4

    invoke-interface {v3, v5, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableButton(IZ)V

    .line 379
    return-void

    .line 391
    .end local v2    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 393
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    .line 395
    new-instance v2, Landroid/telecom/VideoProfile;

    .line 396
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    .line 395
    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 397
    .restart local v2    # "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 398
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public refreshMuteState()V
    .locals 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    .line 530
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v0, v1, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 532
    return-void

    .line 534
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    .line 536
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 527
    return-void
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 221
    return-void
.end method

.method public shareVideoClicked()V
    .locals 6

    .prologue
    .line 408
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 412
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v2, :cond_1

    .line 413
    return-void

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    .line 417
    .local v1, "currVideoState":I
    invoke-static {v1}, Lcom/android/incallui/CallUtils;->getUnPausedVideoState(I)I

    move-result v0

    .line 418
    .local v0, "currUnpausedVideoState":I
    or-int/lit8 v0, v0, 0x1

    .line 420
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 421
    .local v3, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 422
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 407
    return-void
.end method

.method public showDialpadClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    .line 310
    return-void
.end method

.method public swapClicked()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Swapping the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public switchCameraClicked(Z)V
    .locals 5
    .param p1, "useFrontFacingCamera"    # Z

    .prologue
    .line 354
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    .line 355
    .local v2, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v2, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 357
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    .line 358
    .local v3, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v3, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    invoke-virtual {v2}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v2}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, "cameraDir":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    .line 368
    invoke-virtual {v3, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    .line 353
    .end local v0    # "cameraDir":I
    :cond_1
    return-void

    .line 366
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "cameraDir":I
    goto :goto_0
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 239
    const-string/jumbo v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 241
    return-void

    .line 244
    :cond_0
    const/16 v0, 0x8

    .line 247
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 248
    const/4 v0, 0x5

    .line 251
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 234
    return-void
.end method
