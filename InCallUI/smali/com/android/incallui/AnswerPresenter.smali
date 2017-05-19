.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/CallList$ActiveSubChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$AnswerUi;,
        Lcom/android/incallui/AnswerPresenter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/CallList$Listener;",
        "Lcom/android/incallui/CallList$ActiveSubChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCall:[Lcom/android/incallui/Call;

.field private mCallId:[Ljava/lang/String;

.field private final mCalls:Lcom/android/incallui/CallList;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDeflectPhoneId:I

.field private mDeflectToNumber:Ljava/lang/String;

.field private mHasTextMessages:Z

.field private mImsServiceBound:Z

.field private mPendingDeflectRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 67
    sget v0, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    .line 68
    sget v0, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    new-array v0, v0, [Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    .line 69
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    .line 70
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mImsServiceBound:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mPendingDeflectRequest:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mDeflectToNumber:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mDeflectPhoneId:I

    .line 87
    new-instance v0, Lcom/android/incallui/AnswerPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerPresenter$1;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mConnection:Landroid/content/ServiceConnection;

    .line 60
    return-void
.end method

.method private checkSubId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v0

    .line 216
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 564
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-nez v2, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    if-eqz p2, :cond_1

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 569
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 572
    :goto_1
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->getAmAvailability()Lcom/android/incallui/SomcAmUtils$AmAvailability;

    move-result-object v2

    .line 573
    sget-object v6, Lcom/android/incallui/SomcAmUtils$AmAvailability;->NOT_AVAILABLE:Lcom/android/incallui/SomcAmUtils$AmAvailability;

    .line 572
    if-eq v2, v6, :cond_3

    const/4 v0, 0x1

    .line 577
    .local v0, "withAnsweringMachine":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 578
    if-eqz v0, :cond_5

    .line 581
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 582
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 581
    invoke-static {v3, v1}, Lcom/android/incallui/QtiCallUtils;->getIncomingCallAnswerOptions(Landroid/content/Context;Z)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 583
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    if-eqz v1, :cond_4

    .end local p2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v2, p2, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;I)V

    .line 563
    :goto_4
    return-void

    .end local v0    # "withAnsweringMachine":Z
    .restart local p2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move v2, v3

    .line 567
    goto :goto_0

    .line 569
    :cond_2
    const/4 v1, 0x0

    .local v1, "withSms":Z
    goto :goto_1

    .line 572
    .end local v1    # "withSms":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "withAnsweringMachine":Z
    goto :goto_2

    :cond_4
    move-object p2, v5

    .line 583
    goto :goto_3

    .line 585
    :cond_5
    if-eqz v1, :cond_6

    .line 586
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 587
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 586
    invoke-static {v3, v1}, Lcom/android/incallui/QtiCallUtils;->getIncomingCallAnswerOptions(Landroid/content/Context;Z)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 588
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    goto :goto_4

    .line 590
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 591
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 590
    invoke-static {v3, v1}, Lcom/android/incallui/QtiCallUtils;->getIncomingCallAnswerOptions(Landroid/content/Context;Z)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_4

    .line 593
    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/AnswerPresenter;->isCallDeflectSupported(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 598
    if-eqz v1, :cond_8

    .line 599
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/16 v3, 0x3f0

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 600
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    goto :goto_4

    .line 602
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/16 v3, 0x3ef

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_4

    .line 605
    :cond_9
    if-eqz v0, :cond_b

    .line 608
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 609
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    if-eqz v1, :cond_a

    .end local p2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v2, p2, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;I)V

    .line 611
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setResponseOptBtnVisibility(I)V

    goto/16 :goto_4

    .restart local p2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move-object p2, v5

    .line 609
    goto :goto_5

    .line 612
    :cond_b
    if-eqz v1, :cond_c

    .line 613
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 614
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    .line 615
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setResponseOptBtnVisibility(I)V

    goto/16 :goto_4

    .line 617
    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setResponseOptBtnVisibility(I)V

    goto/16 :goto_4
.end method

.method private getActivePhoneId()I
    .locals 5

    .prologue
    .line 455
    const/4 v1, -0x1

    .line 456
    .local v1, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 457
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v2

    .line 458
    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v1

    .line 466
    .end local v2    # "subId":I
    :cond_0
    return v1

    .line 460
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 462
    move v1, v0

    .line 460
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isVideoUpgradePending(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    .line 325
    const/4 v1, 0x3

    .line 324
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    .line 347
    .local v2, "subId":I
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v4, v2}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v1

    .line 348
    .local v1, "phoneId":I
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 349
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aput-object p1, v4, v1

    .line 352
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 354
    sget-object v4, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Showing incoming for call id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 357
    .local v3, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 360
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showWaitingVideoCallView()V

    .line 345
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    .end local v3    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 363
    .restart local v0    # "activeCall":Lcom/android/incallui/Call;
    .restart local v3    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showIncomingVideoCallView()V

    goto :goto_0

    .line 366
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isCallAnswering()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showIncomingCallView(Z)V

    goto :goto_0
.end method

.method private processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " processVideoUpgradeRequestCall call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    .line 387
    .local v3, "subId":I
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v5, v3}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v2

    .line 388
    .local v2, "phoneId":I
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 389
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aput-object p1, v5, v2

    .line 392
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 394
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 395
    .local v0, "currentVideoState":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getModifyToVideoState()I

    move-result v1

    .line 397
    .local v1, "modifyToVideoState":I
    if-ne v0, v1, :cond_0

    .line 398
    const-string/jumbo v5, "processVideoUpgradeRequestCall: Video states are same. Return."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    return-void

    .line 402
    :cond_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 403
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 405
    .local v4, "ui":Lcom/android/incallui/AnswerPresenter$AnswerUi;
    if-nez v4, :cond_1

    .line 406
    const-string/jumbo v5, "Ui is null. Can\'t process upgrade request"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v5}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/incallui/QtiCallUtils;->getSessionModificationOptions(Landroid/content/Context;II)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 411
    invoke-interface {v4, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showUpgradeRequestDialog(I)V

    .line 384
    return-void
.end method

.method private showAnswerUi(Z)Z
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 372
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 373
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showAnswerFragment(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->onShowAnswerUi(Z)V

    .line 378
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 380
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private startContactInfoSearchForWaitingCall(Lcom/android/incallui/Call;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isActive"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 744
    invoke-static {p3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 748
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/AnswerPresenter$2;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/AnswerPresenter$2;-><init>(Lcom/android/incallui/AnswerPresenter;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 743
    return-void
.end method

.method private updateWaitingCallDialog(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 684
    .local v0, "ui":Lcom/android/incallui/AnswerPresenter$AnswerUi;
    if-nez v0, :cond_0

    .line 685
    return-void

    .line 687
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    return-void

    .line 691
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->isWaitingCallPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 693
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->checkAndShowWaitingCallDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    :goto_0
    return-void

    .line 694
    :cond_2
    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->dismissWaitingCallPopup()V

    .line 695
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->answerVoiceCall()V

    goto :goto_0

    .line 698
    :cond_3
    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->dismissWaitingCallPopup()V

    goto :goto_0
.end method


# virtual methods
.method public answerAndEndActive()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 728
    const-string/jumbo v0, "answerAndEndActive"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    .line 730
    const/4 v1, 0x0

    .line 729
    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/TelecomAdapter;->somcExecuteCommandAsync(I[Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setCallAnswering(Z)V

    .line 727
    return-void
.end method

.method public answerVoiceCall()V
    .locals 4

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 707
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "answerVoiceCall mCallId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 709
    :cond_0
    return-void

    .line 711
    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 712
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->setCallAnswering(Z)V

    .line 705
    return-void
.end method

.method public bindImsService()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public checkAndShowWaitingCallDialog()Z
    .locals 9

    .prologue
    const v8, 0x7f0b02fd

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 642
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v3

    .line 643
    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 644
    :cond_0
    return v6

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 647
    .local v4, "ui":Lcom/android/incallui/AnswerPresenter$AnswerUi;
    if-nez v4, :cond_2

    .line 648
    return v6

    .line 650
    :cond_2
    invoke-interface {v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 651
    .local v2, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 652
    :cond_3
    return v6

    .line 654
    :cond_4
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isCdmaPhone()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 655
    return v6

    .line 658
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 659
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_9

    .line 660
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 661
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setContactNameOrNumber(Ljava/lang/String;Z)V

    .line 665
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 666
    .local v1, "bgCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_8

    .line 667
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 668
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setContactNameOrNumber(Ljava/lang/String;Z)V

    .line 673
    :goto_1
    invoke-interface {v4, v6}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showWaitingCallDialog(Z)V

    .line 677
    :goto_2
    return v7

    .line 663
    .end local v1    # "bgCall":Lcom/android/incallui/Call;
    :cond_6
    invoke-direct {p0, v0, v7, v2}, Lcom/android/incallui/AnswerPresenter;->startContactInfoSearchForWaitingCall(Lcom/android/incallui/Call;ZLandroid/content/Context;)V

    goto :goto_0

    .line 671
    .restart local v1    # "bgCall":Lcom/android/incallui/Call;
    :cond_7
    invoke-direct {p0, v1, v6, v2}, Lcom/android/incallui/AnswerPresenter;->startContactInfoSearchForWaitingCall(Lcom/android/incallui/Call;ZLandroid/content/Context;)V

    goto :goto_1

    .line 675
    :cond_8
    invoke-interface {v4, v7}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showWaitingCallDialog(Z)V

    goto :goto_2

    .line 679
    .end local v1    # "bgCall":Lcom/android/incallui/Call;
    :cond_9
    return v6
.end method

.method public hangupHoldingCall()V
    .locals 3

    .prologue
    .line 719
    const-string/jumbo v0, "hangupHoldingCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    .line 721
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 720
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->somcExecuteCommandAsync(I[Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public isCallDeflectSupported(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public onActiveSubChanged(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 825
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 826
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v1

    .line 827
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 828
    :cond_0
    return-void

    .line 827
    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 830
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-ne v3, v4, :cond_3

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show incoming for call id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    .line 834
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    .line 833
    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 835
    .local v2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 824
    .end local v2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-void

    .line 837
    :cond_3
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hide incoming for call id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_0

    .line 841
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No incoming call present for sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 4
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 470
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 471
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer  mCallId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 473
    :cond_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->checkAndShowWaitingCallDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    return-void

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    .line 481
    const/4 v2, 0x3

    .line 480
    if-ne v1, v2, :cond_4

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer (upgradeCall) mCallId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " videoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showIncomingCallView(Z)V

    .line 469
    :cond_3
    return-void

    .line 485
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer (answerCall) mCallId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " videoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 487
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->setCallAnswering(Z)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x0

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCallStateChange() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    .line 422
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 423
    .local v1, "isUpgradePending":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    .line 424
    .local v3, "subId":I
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v5, v3}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v2

    .line 425
    .local v2, "phoneId":I
    if-nez v1, :cond_0

    .line 427
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 430
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 431
    .local v0, "incall":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    .line 432
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 433
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 438
    :goto_0
    iput-boolean v7, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 441
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->unbindImsService()V

    .line 450
    .end local v0    # "incall":Lcom/android/incallui/Call;
    .end local v1    # "isUpgradePending":Z
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->updateWaitingCallDialog(Lcom/android/incallui/Call;)V

    .line 419
    return-void

    .line 435
    .restart local v0    # "incall":Lcom/android/incallui/Call;
    .restart local v1    # "isUpgradePending":Z
    .restart local v2    # "phoneId":I
    .restart local v3    # "subId":I
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_0

    .line 443
    .end local v0    # "incall":Lcom/android/incallui/Call;
    .end local v1    # "isUpgradePending":Z
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :cond_4
    iget-boolean v5, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v5, :cond_2

    .line 444
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 445
    .local v4, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 446
    invoke-direct {p0, p1, v4}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_1
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 300
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 501
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDecline mCallId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    .line 503
    const/4 v2, 0x3

    .line 502
    if-ne v1, v2, :cond_0

    .line 504
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 509
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showIncomingCallView(Z)V

    .line 499
    return-void

    .line 506
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDeflect(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    const-string/jumbo v0, ""

    .line 530
    .local v0, "deflectCallNumber":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 531
    const-string/jumbo v1, "getCallDeflectNumber is null or Empty."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    const v1, 0x7f0b025d

    invoke-static {p1, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mPendingDeflectRequest:Z

    .line 536
    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mDeflectToNumber:Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->bindImsService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const-string/jumbo v1, "Ims Service is not available for call deflection interface"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mPendingDeflectRequest:Z

    .line 546
    const v1, 0x7f0b025e

    .line 545
    invoke-static {p1, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 304
    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    .prologue
    .line 560
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 559
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 296
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 279
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    .line 280
    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v1

    .line 281
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncomingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 283
    .local v0, "modifyCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 284
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 285
    const-string/jumbo v3, "declining upgrade request id: "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 287
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 289
    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 291
    invoke-direct {p0, p3}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 278
    :cond_1
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 4
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 310
    const/4 v2, 0x3

    .line 309
    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 312
    .local v1, "isUpgradePending":Z
    :goto_0
    if-nez v1, :cond_3

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "i":I
    .end local v1    # "isUpgradePending":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isUpgradePending":Z
    goto :goto_0

    .line 319
    .restart local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 308
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method onSuppServiceSwitchFailed()V
    .locals 6

    .prologue
    .line 770
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallPresenter;->setCallAnswering(Z)V

    .line 772
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 773
    .local v1, "callList":Lcom/android/incallui/CallList;
    if-nez v1, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 777
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 778
    return-void

    .line 780
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    .line 781
    .local v3, "subId":I
    invoke-virtual {v1, v3}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v2

    .line 782
    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 783
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 784
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 769
    :cond_2
    return-void
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/TelecomUtil;->silenceRinger(Landroid/content/Context;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showMessageDialog()V

    .line 512
    :cond_0
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 9
    .param p1, "showing"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 221
    if-eqz p1, :cond_6

    .line 222
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 223
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v1, v3, :cond_3

    .line 228
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v1}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v2

    .line 229
    .local v2, "subId":[I
    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->checkSubId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    aget v4, v2, v6

    invoke-virtual {v3, v7, v6, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 231
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    aget v4, v2, v6

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 234
    :cond_0
    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 227
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No valid subId in slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    .end local v2    # "subId":[I
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 242
    .restart local v0    # "call":Lcom/android/incallui/Call;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVideoUpgradeRequestCall call ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    if-eqz v0, :cond_4

    .line 244
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 245
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    .line 248
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_5

    .line 249
    invoke-direct {p0, v6}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 220
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    return-void

    .line 252
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 255
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v1, v3, :cond_5

    .line 256
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v1}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v2

    .line 257
    .restart local v2    # "subId":[I
    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->checkSubId(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 258
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    aget v4, v2, v6

    invoke-virtual {v3, v7, v6, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 259
    .restart local v0    # "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_7

    .line 260
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    aget v4, v2, v6

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 262
    :cond_7
    if-nez v0, :cond_8

    .line 263
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    aget v4, v2, v6

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 265
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v1, :cond_9

    .line 266
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    .line 267
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 268
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 255
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 271
    :cond_a
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No valid subId in slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgradeToVideo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 332
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 333
    .local v1, "isUpgradePending":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 334
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    if-eqz v1, :cond_1

    .line 335
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_1

    .line 336
    const-string/jumbo v2, "declining upgrade request"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-eqz v1, :cond_0

    .line 340
    const-string/jumbo v2, "process upgrade request as no MT call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 553
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextToDefaultActivity()...phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 551
    return-void
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 814
    const-string/jumbo v2, "silenceRinger"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 816
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 818
    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 819
    .local v0, "TelecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 813
    .end local v0    # "TelecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    return-void
.end method

.method public unbindImsService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mImsServiceBound:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UnBinding IQtiImsInterface: callId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mImsServiceBound:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mPendingDeflectRequest:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    :cond_0
    return-void
.end method
