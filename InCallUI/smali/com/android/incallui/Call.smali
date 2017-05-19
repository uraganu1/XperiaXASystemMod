.class public Lcom/android/incallui/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation build Lcom/android/contacts/common/testing/NeededForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Call$State;,
        Lcom/android/incallui/Call$VideoSettings;,
        Lcom/android/incallui/Call$PeerVideoState;,
        Lcom/android/incallui/Call$1;
    }
.end annotation


# static fields
.field private static final ID_PREFIX:Ljava/lang/String;

.field private static sIdCounter:I


# instance fields
.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mId:Ljava/lang/String;

.field public mIsActiveSub:Z

.field private mIsVideoCall:Ljava/lang/Boolean;

.field private mModifyToVideoState:I

.field private mOldDetails:Landroid/telecom/Call$Details;

.field private final mPeerVideoState:Lcom/android/incallui/Call$PeerVideoState;

.field private mSessionModificationState:I

.field private mState:I

.field private mTelecomCallCallback:Landroid/telecom/Call$Callback;

.field private mTelecommCall:Landroid/telecom/Call;

.field private mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

.field private final mVideoSettings:Lcom/android/incallui/Call$VideoSettings;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/Call;)Landroid/telecom/Call$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/Call;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call;->mIsVideoCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 0
    .param p1, "newDetails"    # Landroid/telecom/Call$Details;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/Call;->handleDetailsChanged(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/Call;->sIdCounter:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    .line 252
    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    .line 332
    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    .line 335
    iput v1, p0, Lcom/android/incallui/Call;->mState:I

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 339
    new-instance v0, Lcom/android/incallui/Call$VideoSettings;

    invoke-direct {v0}, Lcom/android/incallui/Call$VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    .line 340
    new-instance v0, Lcom/android/incallui/Call$PeerVideoState;

    invoke-direct {v0}, Lcom/android/incallui/Call$PeerVideoState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mPeerVideoState:Lcom/android/incallui/Call$PeerVideoState;

    .line 347
    iput v1, p0, Lcom/android/incallui/Call;->mModifyToVideoState:I

    .line 362
    iput-object p1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecommCall()V

    .line 365
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 369
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mOldDetails:Landroid/telecom/Call$Details;

    .line 361
    return-void
.end method

.method public static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    .line 680
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 681
    const/4 v0, 0x1

    return v0

    .line 682
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 683
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 687
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static areSameNumber(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    .line 691
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 692
    const/4 v0, 0x1

    return v0

    .line 693
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 694
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 698
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private handleDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "newDetails"    # Landroid/telecom/Call$Details;

    .prologue
    .line 751
    invoke-static {}, Lcom/mediatek/incallui/CallDetailChangeHandler;->getInstance()Lcom/mediatek/incallui/CallDetailChangeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mOldDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v0, p0, v1, p1}, Lcom/mediatek/incallui/CallDetailChangeHandler;->onCallDetailChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)V

    .line 752
    iput-object p1, p0, Lcom/android/incallui/Call;->mOldDetails:Landroid/telecom/Call$Details;

    .line 750
    return-void
.end method

.method private setModifyToVideoState(I)V
    .locals 0
    .param p1, "newVideoState"    # I

    .prologue
    .line 672
    iput p1, p0, Lcom/android/incallui/Call;->mModifyToVideoState:I

    .line 671
    return-void
.end method

.method private static translateState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 428
    packed-switch p0, :pswitch_data_0

    .line 447
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 431
    :pswitch_1
    const/16 v0, 0xd

    return v0

    .line 433
    :pswitch_2
    const/16 v0, 0xc

    return v0

    .line 435
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 437
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 439
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 441
    :pswitch_6
    const/16 v0, 0x8

    return v0

    .line 443
    :pswitch_7
    const/16 v0, 0xa

    return v0

    .line 445
    :pswitch_8
    const/16 v0, 0x9

    return v0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private update()V
    .locals 3

    .prologue
    .line 393
    const-string/jumbo v1, "Update"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 395
    .local v0, "oldState":I
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecommCall()V

    .line 396
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 397
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/incallui/Call;)V

    .line 401
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 392
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateFromTelecommCall()V
    .locals 4

    .prologue
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFromTelecommCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call;->translateState(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 407
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    .line 412
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    if-nez v1, :cond_0

    .line 414
    new-instance v1, Lcom/android/incallui/InCallVideoCallCallback;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallVideoCallCallback;-><init>(Lcom/android/incallui/Call;)V

    iput-object v1, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 421
    iget-object v2, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 422
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 423
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    .line 422
    invoke-virtual {v3, v1}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_2
    return-void
.end method


# virtual methods
.method public can(I)Z
    .locals 12
    .param p1, "capabilities"    # I

    .prologue
    const/4 v10, 0x0

    .line 522
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v9

    .line 524
    .local v9, "supportedCapabilities":I
    and-int/lit8 v11, p1, 0x4

    if-eqz v11, :cond_4

    .line 525
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 527
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v4

    .line 528
    .local v4, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const/4 v5, 0x0

    .line 529
    .local v5, "hasConferenceableCall":Z
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v8

    .line 531
    .local v8, "subId":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call;

    .line 532
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 533
    .local v7, "phHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 535
    .local v0, "account":Landroid/telecom/PhoneAccount;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v1

    .line 537
    .local v1, "accountSubId":I
    if-eqz v7, :cond_0

    if-ne v1, v8, :cond_0

    .line 538
    const/4 v5, 0x1

    .line 543
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountSubId":I
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "call$iterator":Ljava/util/Iterator;
    .end local v7    # "phHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v8    # "subId":I
    :cond_1
    if-nez v5, :cond_3

    .line 544
    and-int/lit8 v11, v9, 0x4

    if-nez v11, :cond_3

    .line 547
    return v10

    .line 551
    .end local v4    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v5    # "hasConferenceableCall":Z
    :cond_2
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 552
    and-int/lit8 v11, v9, 0x4

    if-nez v11, :cond_3

    .line 555
    return v10

    .line 557
    :cond_3
    and-int/lit8 p1, p1, -0x5

    .line 559
    :cond_4
    and-int/lit8 v11, p1, 0x1

    if-nez v11, :cond_5

    .line 560
    const/high16 v11, 0x400000

    and-int/2addr v11, p1

    if-eqz v11, :cond_8

    .line 561
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 562
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 561
    const/4 v6, 0x1

    .line 564
    .local v6, "hasMultiCalls":Z
    :goto_0
    if-eqz v6, :cond_8

    .line 565
    return v10

    .line 563
    .end local v6    # "hasMultiCalls":Z
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v11

    if-eqz v11, :cond_7

    const/4 v6, 0x1

    .restart local v6    # "hasMultiCalls":Z
    goto :goto_0

    .end local v6    # "hasMultiCalls":Z
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "hasMultiCalls":Z
    goto :goto_0

    .line 568
    .end local v6    # "hasMultiCalls":Z
    :cond_8
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v11

    and-int/2addr v11, p1

    if-ne p1, v11, :cond_9

    const/4 v10, 0x1

    :cond_9
    return v10
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCnapNamePresentation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 487
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    return-object v0

    .line 740
    :cond_0
    const-string/jumbo v0, "getDetails()... mTelecommCall is null, need check! "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    return-object v1
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0

    .line 508
    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 495
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifyToVideoState()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/android/incallui/Call;->mModifyToVideoState:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 456
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    .line 457
    return-object v0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    .line 610
    .local v0, "parentCall":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 613
    :cond_0
    return-object v2
.end method

.method public getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/incallui/Call;->mPeerVideoState:Lcom/android/incallui/Call$PeerVideoState;

    return-object v0
.end method

.method public getSessionModificationState()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    const/16 v0, 0xb

    return v0

    .line 474
    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    return v0
.end method

.method public getSubId()I
    .locals 3

    .prologue
    .line 594
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 595
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 594
    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 596
    .local v0, "account":Landroid/telecom/PhoneAccount;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v1

    return v1
.end method

.method public getTelecommCall()Landroid/telecom/Call;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoSettings()Lcom/android/incallui/Call$VideoSettings;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isConferenceCall()Z
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    .line 582
    const/4 v1, 0x1

    .line 581
    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/incallui/Call;->mIsVideoCall:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 622
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v0

    .line 622
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mIsVideoCall:Ljava/lang/Boolean;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mIsVideoCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolteMarkedEcc()Z
    .locals 2

    .prologue
    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "isVolteEmerencyCall":Z
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->isVolteMarkedEcc(Landroid/telecom/Call$Details;)Z

    move-result v0

    .line 763
    .local v0, "isVolteEmerencyCall":Z
    return v0
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 511
    return-void
.end method

.method public setSessionModificationState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 656
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 658
    const-string/jumbo v1, "setSessionModificationState not to be called for RECEIVED_UPGRADE_TO_VIDEO_REQUEST"

    .line 657
    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    return-void

    .line 662
    :cond_0
    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 663
    .local v0, "hasChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSessionModificationState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSessionModificationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    iget v2, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    if-eqz v0, :cond_1

    .line 667
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/incallui/CallList;->onSessionModificationStateChange(Lcom/android/incallui/Call;I)V

    .line 655
    :cond_1
    return-void

    .line 662
    .end local v0    # "hasChanged":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasChanged":Z
    goto :goto_0
.end method

.method public setSessionModificationTo(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSessionModificationTo - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 637
    const-string/jumbo v0, "setSessionModificationTo - Clearing session modification state"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSessionModificationTo - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    const-string/jumbo v1, " video state= "

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    .line 633
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x3

    .line 639
    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 641
    invoke-direct {p0, p1}, Lcom/android/incallui/Call;->setModifyToVideoState(I)V

    .line 642
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 479
    iput p1, p0, Lcom/android/incallui/Call;->mState:I

    .line 478
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 713
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 714
    const-string/jumbo v1, "[%s, %s, %s, children:%s, parent:%s, conferenceable:%s, videoState:%s, mSessionModificationState:%d, VideoSettings:%s, mIsActivSub:%b]"

    .line 713
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    .line 716
    iget-object v3, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 717
    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v3

    .line 716
    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 718
    iget-object v3, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 719
    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 720
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 721
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 713
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
