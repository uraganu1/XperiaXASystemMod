.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$Listener;,
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$ActiveSubChangeListener;,
        Lcom/android/incallui/CallList$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final mActiveSubChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallByTelecommCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/telecom/Call;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasConference:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingDisconnectCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId:I


# direct methods
.method static synthetic -get0(Lcom/android/incallui/CallList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/CallList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 4
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    .line 67
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 82
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    .line 661
    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 635
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setState(I)V

    .line 636
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    .line 637
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 631
    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/incallui/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->hasConference()Z

    move-result v2

    if-nez v2, :cond_2

    .line 580
    invoke-static {p1}, Lcom/android/incallui/SomcInCallUiUtils;->checkCurrentStatusForCallEndedInteraction(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 579
    if-eqz v2, :cond_2

    .line 581
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isAnyWidgetVisibleAfterCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    const/16 v2, 0x1388

    return v2

    .line 576
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 584
    :cond_1
    const/16 v2, 0xbb8

    return v2

    .line 587
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    .line 589
    .local v0, "cause":I
    packed-switch v0, :pswitch_data_0

    .line 604
    const/16 v1, 0x1388

    .line 608
    .local v1, "delay":I
    :goto_1
    return v1

    .line 591
    .end local v1    # "delay":I
    :pswitch_0
    const/16 v1, 0x7d0

    .line 592
    .restart local v1    # "delay":I
    goto :goto_1

    .line 595
    .end local v1    # "delay":I
    :pswitch_1
    const/16 v1, 0x7d0

    .line 596
    .restart local v1    # "delay":I
    goto :goto_1

    .line 601
    .end local v1    # "delay":I
    :pswitch_2
    const/4 v1, 0x0

    .line 602
    .restart local v1    # "delay":I
    goto :goto_1

    .line 589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private isCallDead(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 625
    .local v0, "state":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private notifyGenericListeners()V
    .locals 3

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 528
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 526
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 533
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 534
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 532
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private onUpdateCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-boolean v0, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 512
    const-string/jumbo v0, "@@@ isConference = false"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    .line 518
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 506
    return-void

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    goto :goto_0
.end method

.method private updateCallInMap(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 543
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const/4 v1, 0x0

    .line 547
    .local v1, "updated":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/incallui/Call;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 556
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const/4 v1, 0x1

    .line 572
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const/4 v1, 0x1

    goto :goto_0

    .line 566
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 2
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
    .line 612
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    if-eqz p2, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .prologue
    .line 876
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    return-void
.end method

.method public addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 237
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 239
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 258
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 257
    return-void
.end method

.method public clearOnDisconnect()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 474
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 475
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 476
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 477
    if-eqz v2, :cond_0

    .line 478
    if-eq v2, v5, :cond_0

    .line 480
    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->setState(I)V

    .line 481
    new-instance v3, Landroid/telecom/DisconnectCause;

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 482
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    goto :goto_0

    .line 485
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "state":I
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 473
    return-void
.end method

.method public getActiveCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 334
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 337
    :cond_0
    return-object v0
.end method

.method getActiveSubId()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    return v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 317
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallWithState(II)Lcom/android/incallui/Call;
    .locals 6
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 445
    const/16 v4, 0xc

    if-eq p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    .line 446
    const/4 v5, -0x1

    .line 445
    if-eq v4, v5, :cond_0

    .line 447
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v4

    .line 445
    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v4

    return-object v4

    .line 451
    :cond_0
    const/4 v3, 0x0

    .line 452
    .local v3, "retval":Lcom/android/incallui/Call;
    const/4 v2, 0x0

    .line 453
    .local v2, "position":I
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 454
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 455
    if-lt v2, p2, :cond_3

    .line 456
    move-object v3, v0

    .line 464
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v3    # "retval":Lcom/android/incallui/Call;
    :cond_2
    return-object v3

    .line 459
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v3    # "retval":Lcom/android/incallui/Call;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getCallWithState(III)Lcom/android/incallui/Call;
    .locals 8
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I
    .param p3, "subId"    # I

    .prologue
    .line 852
    const/4 v5, 0x0

    .line 853
    .local v5, "retval":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 854
    .local v4, "position":I
    iget-object v6, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 855
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 857
    .local v3, "ph":Landroid/telecom/PhoneAccountHandle;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, p1, :cond_0

    if-eqz v3, :cond_1

    .line 858
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 859
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 860
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSubId()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, p3, :cond_0

    .line 861
    :cond_1
    if-lt v4, p2, :cond_3

    .line 862
    move-object v5, v0

    .line 872
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "retval":Lcom/android/incallui/Call;
    :cond_2
    return-object v5

    .line 865
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "retval":Lcom/android/incallui/Call;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 868
    :catch_0
    move-exception v2

    .line 869
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sub Id is not a number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisconnectedCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 351
    .local v0, "result":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 354
    :cond_0
    if-nez v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 357
    :cond_1
    if-nez v0, :cond_2

    .line 358
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 360
    :cond_2
    if-nez v0, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 363
    :cond_3
    if-nez v0, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 366
    :cond_4
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 341
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 342
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 346
    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 305
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 306
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 309
    :cond_0
    return-object v0
.end method

.method public getOutgoingOrActive()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 287
    .local v0, "retval":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 290
    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 301
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 123
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 124
    .local v0, "phoneId":I
    sget v1, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 127
    :cond_1
    return v0
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 376
    .local v0, "result":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 379
    :cond_0
    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 382
    :cond_1
    if-nez v0, :cond_2

    .line 383
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 385
    :cond_2
    if-nez v0, :cond_3

    .line 386
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 388
    :cond_3
    if-nez v0, :cond_4

    .line 389
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 391
    :cond_4
    if-nez v0, :cond_5

    .line 392
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 394
    :cond_5
    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 329
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method getSubId(I)[I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 131
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getTextResponses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVideoUpgradeRequestCall()Lcom/android/incallui/Call;
    .locals 4

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 412
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    .line 413
    const/4 v3, 0x3

    .line 412
    if-ne v2, v3, :cond_0

    .line 414
    return-object v0

    .line 417
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getWaitingForAccountCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method hasAnyLiveCall(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 771
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 772
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 774
    .local v3, "ph":Landroid/telecom/PhoneAccountHandle;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasAnyLiveCall sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    const/4 v4, 0x1

    return v4

    .line 778
    :catch_0
    move-exception v2

    .line 779
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sub Id is not a number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const-string/jumbo v4, "no active call "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    const/4 v4, 0x0

    return v4
.end method

.method public hasConference()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    return v0
.end method

.method public hasLiveCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 399
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 400
    return v1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isAnyOtherSubActive(I)Z
    .locals 6
    .param p1, "currentSub"    # I

    .prologue
    const/4 v5, 0x0

    .line 829
    const/4 v1, 0x0

    .line 830
    .local v1, "result":Z
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 831
    return v5

    .line 834
    :cond_0
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 836
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v2

    .line 838
    .local v2, "subId":[I
    aget v3, v2, v5

    if-eq v3, p1, :cond_2

    aget v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Live call found on another sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    const/4 v1, 0x1

    .line 844
    .end local v2    # "subId":[I
    :cond_1
    return v1

    .line 835
    .restart local v2    # "subId":[I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyCallUpdateListeners(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 222
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 224
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 220
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public notifyCallsOfDeviceRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 646
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 652
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    goto :goto_0

    .line 645
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 100
    const-string/jumbo v1, "onCallAdded"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/android/incallui/Call;

    invoke-direct {v0, p1}, Lcom/android/incallui/Call;-><init>(Landroid/telecom/Call;)V

    .line 102
    .local v0, "call":Lcom/android/incallui/Call;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallAdded: callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 109
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 99
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 115
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing call not previously disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 112
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onErrorDialogDismissed()V
    .locals 3

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 494
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/incallui/Call;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 496
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 497
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 492
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 5
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
    .line 151
    .local p2, "textMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-boolean v3, p1, Lcom/android/incallui/Call;->mIsActiveSub:Z

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    .line 157
    .local v2, "sub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncoming - sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget v3, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq v2, v3, :cond_0

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->setActiveSubId(I)V

    .line 163
    .end local v2    # "sub":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-boolean v3, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_1

    .line 166
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/CallList;->mHasConference:Z

    .line 169
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 171
    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 172
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 150
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_2
    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/Call;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "sessionModificationState"    # I

    .prologue
    .line 212
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 213
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 214
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 215
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0, p2}, Lcom/android/incallui/CallList$CallUpdateListener;->onSessionModificationStateChange(I)V

    goto :goto_0

    .line 211
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 186
    const-string/jumbo v3, "onUpdate"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 188
    .local v1, "ph":Landroid/telecom/PhoneAccountHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ph:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    :try_start_0
    iget-boolean v3, p1, Lcom/android/incallui/Call;->mIsActiveSub:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    .line 192
    .local v2, "sub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdate - sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget v3, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq v2, v3, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->setActiveSubId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2    # "sub":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->onUpdateCall(Lcom/android/incallui/Call;)V

    .line 201
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 202
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 185
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sub Id is not a number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgradeToVideo call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 179
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 176
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .prologue
    .line 881
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 880
    return-void
.end method

.method public removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 252
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    return-void
.end method

.method setActiveSubId(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 758
    iget v1, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq p1, v1, :cond_0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveSubId, oldActiveSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 760
    const-string/jumbo v2, " newActiveSubId = "

    .line 759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    iput p1, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 762
    iget-object v1, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 763
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method switchToOtherActiveSub()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 807
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v0

    .line 808
    .local v0, "activeSub":I
    const/4 v3, 0x0

    .line 810
    .local v3, "subSwitched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v1, v4, :cond_0

    .line 811
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v2

    .line 812
    .local v2, "subId":[I
    aget v4, v2, v6

    if-eq v4, v0, :cond_1

    aget v4, v2, v6

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchToOtherActiveSub, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    const/4 v3, 0x1

    .line 815
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    .line 816
    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->switchToOtherActiveSub(Ljava/lang/String;)V

    .line 817
    aget v4, v2, v6

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallList;->setActiveSubId(I)V

    .line 821
    .end local v2    # "subId":[I
    :cond_0
    return v3

    .line 810
    .restart local v2    # "subId":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
