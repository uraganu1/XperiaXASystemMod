.class public Lgov2/nist/javax2/sip/stack/SIPDialog;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljavax2/sip/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;,
        Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;,
        Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;,
        Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;,
        Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;
    }
.end annotation


# static fields
.field public static final CONFIRMED_STATE:I

.field public static final EARLY_STATE:I

.field public static final TERMINATED_STATE:I

.field private static final serialVersionUID:J = -0x13d7a673d1d40265L


# instance fields
.field private transient ackLine:I

.field protected transient ackProcessed:Z

.field protected transient ackSeen:Z

.field private transient ackSem:Ljava/util/concurrent/Semaphore;

.field public transient auditTag:J

.field private transient byeSent:Z

.field protected callIdHeader:Ljavax2/sip/header/CallIdHeader;

.field protected contactHeader:Lgov2/nist/javax2/sip/header/Contact;

.field private transient dialogDeleteIfNoAckSentTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

.field private transient dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

.field private dialogId:Ljava/lang/String;

.field private dialogState:I

.field private transient dialogTerminatedEventDelivered:Z

.field private transient earlyDialogId:Ljava/lang/String;

.field private eventHeader:Ljavax2/sip/header/EventHeader;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient firstTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

.field protected firstTransactionId:Ljava/lang/String;

.field protected firstTransactionIsServerTransaction:Z

.field protected firstTransactionMethod:Ljava/lang/String;

.field protected firstTransactionPort:I

.field protected firstTransactionSecure:Z

.field protected firstTransactionSeen:Z

.field private transient highestSequenceNumberAcknowledged:J

.field protected hisTag:Ljava/lang/String;

.field private transient isAcknowledged:Z

.field private transient isAssigned:Z

.field private isBackToBackUserAgent:Z

.field private lastAckReceived:Lgov2/nist/javax2/sip/message/SIPRequest;

.field private transient lastAckSent:Lgov2/nist/javax2/sip/message/SIPRequest;

.field private transient lastInviteOkReceived:J

.field private lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

.field private transient lastTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

.field protected localParty:Ljavax2/sip/address/Address;

.field private localSequenceNumber:J

.field private method:Ljava/lang/String;

.field protected myTag:Ljava/lang/String;

.field protected transient nextSeqno:Ljava/lang/Long;

.field private originalLocalSequenceNumber:J

.field private transient originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

.field private transient prevRetransmissionTicks:I

.field private reInviteFlag:Z

.field private transient reInviteWaitTime:I

.field protected remoteParty:Ljavax2/sip/address/Address;

.field private remoteSequenceNumber:J

.field private remoteTarget:Ljavax2/sip/address/Address;

.field private transient retransmissionTicksLeft:I

.field private routeList:Lgov2/nist/javax2/sip/header/RouteList;

.field private sequenceNumberValidation:Z

.field private serverTransactionFlag:Z

.field private transient sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

.field private transient sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

.field private transient stackTrace:Ljava/lang/String;

.field private terminateOnBye:Z

.field protected transient timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

.field private timerTaskLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    sget v0, Ljavax2/sip/DialogState;->_EARLY:I

    sput v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    .line 219
    sget v0, Ljavax2/sip/DialogState;->_CONFIRMED:I

    sput v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    .line 221
    sget v0, Ljavax2/sip/DialogState;->_TERMINATED:I

    sput v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    return-void
.end method

.method private constructor <init>(Lgov2/nist/javax2/sip/SipProviderImpl;)V
    .locals 6
    .param p1, "provider"    # Lgov2/nist/javax2/sip/SipProviderImpl;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-wide v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->auditTag:J

    .line 246
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x64

    .line 248
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->reInviteWaitTime:I

    .line 256
    iput-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 260
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    .line 267
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x13c4

    .line 284
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 571
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 572
    new-instance v0, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    const/4 v0, -0x1

    .line 573
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    .line 574
    iput-wide v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 575
    iput-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 576
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 577
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    .line 578
    return-void
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/SipProviderImpl;Lgov2/nist/javax2/sip/message/SIPResponse;)V
    .locals 3
    .param p1, "sipProvider"    # Lgov2/nist/javax2/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    const/4 v2, 0x0

    .line 634
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/SipProviderImpl;)V

    .line 635
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipStack()Ljavax2/sip/SipStack;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, v0, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 637
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 638
    iget-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    .line 639
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 640
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 641
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localParty:Ljavax2/sip/address/Address;

    .line 642
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/ToHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    .line 643
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    .line 644
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->callIdHeader:Ljavax2/sip/header/CallIdHeader;

    .line 645
    iput-boolean v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 646
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 651
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addEventListener(Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;)V

    .line 652
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating a dialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V
    .locals 2
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 625
    if-eqz p2, :cond_0

    .line 626
    invoke-virtual {p0, p1, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 627
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 628
    return-void

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null SipResponse"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    const/4 v2, 0x0

    .line 593
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/SipProviderImpl;)V

    .line 595
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 596
    .local v0, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->callIdHeader:Ljavax2/sip/header/CallIdHeader;

    .line 597
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    .line 598
    if-eqz p1, :cond_0

    .line 599
    iget-object v1, p1, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 604
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 605
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    if-eqz v1, :cond_1

    .line 606
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 607
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 614
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addEventListener(Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;)V

    .line 615
    return-void

    .line 598
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Null tx"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Null Provider!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating a dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint()Ljavax2/sip/ListeningPoint;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/ListeningPoint;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method static synthetic access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    return-object v0
.end method

.method static synthetic access$1002(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    .locals 0
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p1, "x1"    # Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    .prologue
    .line 130
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    return-object p1
.end method

.method static synthetic access$1100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Z
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method static synthetic access$200(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V
    .locals 0
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseErrorEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lgov2/nist/javax2/sip/stack/SIPDialog;)I
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->reInviteWaitTime:I

    return v0
.end method

.method static synthetic access$400(Lgov2/nist/javax2/sip/stack/SIPDialog;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p1, "x1"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 130
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$600(Lgov2/nist/javax2/sip/stack/SIPDialog;I)Z
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgov2/nist/javax2/sip/stack/SIPDialog;)I
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    return v0
.end method

.method static synthetic access$900(Lgov2/nist/javax2/sip/stack/SIPDialog;)J
    .locals 2
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 130
    iget-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    return-wide v0
.end method

.method private addRoute(Lgov2/nist/javax2/sip/header/RecordRouteList;)V
    .locals 10
    .param p1, "recordRouteList"    # Lgov2/nist/javax2/sip/header/RecordRouteList;

    .prologue
    .line 769
    :try_start_0
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isClientDialog()Z

    move-result v6

    if-nez v6, :cond_2

    .line 796
    new-instance v6, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v6}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    iput-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    .line 797
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/RecordRouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 799
    .local v2, "li":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_4

    .line 812
    :cond_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    invoke-interface {v6}, Lgov2/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 827
    :cond_1
    return-void

    .line 773
    .end local v2    # "li":Ljava/util/ListIterator;
    :cond_2
    :try_start_1
    new-instance v6, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v6}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    iput-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    .line 776
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/RecordRouteList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Lgov2/nist/javax2/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 778
    .restart local v2    # "li":Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 779
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/RecordRoute;

    .line 782
    .local v4, "rr":Lgov2/nist/javax2/sip/header/RecordRoute;
    new-instance v3, Lgov2/nist/javax2/sip/header/Route;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/Route;-><init>()V

    .line 783
    .local v3, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RecordRoute;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 785
    .local v0, "address":Lgov2/nist/javax2/sip/address/AddressImpl;
    invoke-virtual {v3, v0}, Lgov2/nist/javax2/sip/header/Route;->setAddress(Ljavax2/sip/address/Address;)V

    .line 786
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RecordRoute;->getParameters()Lgov2/nist/core/NameValueList;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/core/NameValueList;

    invoke-virtual {v3, v6}, Lgov2/nist/javax2/sip/header/Route;->setParameters(Lgov2/nist/core/NameValueList;)V

    .line 788
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v6, v3}, Lgov2/nist/javax2/sip/header/RouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 825
    .end local v0    # "address":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v2    # "li":Ljava/util/ListIterator;
    .end local v3    # "route":Lgov2/nist/javax2/sip/header/Route;
    .end local v4    # "rr":Lgov2/nist/javax2/sip/header/RecordRoute;
    :catchall_0
    move-exception v6

    move-object v7, v6

    .line 812
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    invoke-interface {v6}, Lgov2/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 825
    :cond_3
    throw v7

    .line 800
    .restart local v2    # "li":Ljava/util/ListIterator;
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/RecordRoute;

    .line 803
    .restart local v4    # "rr":Lgov2/nist/javax2/sip/header/RecordRoute;
    new-instance v3, Lgov2/nist/javax2/sip/header/Route;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/Route;-><init>()V

    .line 804
    .restart local v3    # "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RecordRoute;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 805
    .restart local v0    # "address":Lgov2/nist/javax2/sip/address/AddressImpl;
    invoke-virtual {v3, v0}, Lgov2/nist/javax2/sip/header/Route;->setAddress(Ljavax2/sip/address/Address;)V

    .line 806
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RecordRoute;->getParameters()Lgov2/nist/core/NameValueList;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/core/NameValueList;

    invoke-virtual {v3, v6}, Lgov2/nist/javax2/sip/header/Route;->setParameters(Lgov2/nist/core/NameValueList;)V

    .line 807
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v6, v3}, Lgov2/nist/javax2/sip/header/RouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 813
    .end local v0    # "address":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v3    # "route":Lgov2/nist/javax2/sip/header/Route;
    .end local v4    # "rr":Lgov2/nist/javax2/sip/header/RecordRoute;
    :cond_5
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 815
    .local v1, "it":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 816
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/header/Route;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v6

    check-cast v6, Ljavax2/sip/address/SipURI;

    move-object v5, v6

    check-cast v5, Ljavax2/sip/address/SipURI;

    .line 817
    .local v5, "sipUri":Ljavax2/sip/address/SipURI;
    invoke-interface {v5}, Ljavax2/sip/address/SipURI;->hasLrParam()Z

    move-result v6

    if-nez v6, :cond_6

    .line 818
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 819
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NON LR route in Route set detected for dialog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 821
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    invoke-interface {v6}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_2

    .line 813
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "li":Ljava/util/ListIterator;
    .end local v5    # "sipUri":Ljavax2/sip/address/SipURI;
    :cond_7
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 815
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 816
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/header/Route;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v6

    check-cast v6, Ljavax2/sip/address/SipURI;

    move-object v5, v6

    check-cast v5, Ljavax2/sip/address/SipURI;

    .line 817
    .restart local v5    # "sipUri":Ljavax2/sip/address/SipURI;
    invoke-interface {v5}, Ljavax2/sip/address/SipURI;->hasLrParam()Z

    move-result v6

    if-nez v6, :cond_8

    .line 818
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 819
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NON LR route in Route set detected for dialog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 821
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    invoke-interface {v6}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_3
.end method

.method private declared-synchronized addRoute(Lgov2/nist/javax2/sip/message/SIPResponse;)V
    .locals 5
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    monitor-enter p0

    .line 853
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 857
    :goto_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    .line 860
    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-eq v2, v3, :cond_4

    .line 863
    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-eq v2, v3, :cond_6

    .line 878
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_a

    .line 902
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    :goto_2
    monitor-exit p0

    .line 906
    return-void

    .line 854
    :cond_1
    :try_start_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContact: dialogState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v2

    .line 902
    :try_start_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 903
    :goto_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 902
    :cond_2
    :try_start_4
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    :goto_4
    monitor-exit p0

    .line 903
    return-void

    :cond_3
    :try_start_5
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_4

    .line 902
    :cond_4
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    :goto_5
    monitor-exit p0

    .line 903
    return-void

    :cond_5
    :try_start_6
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 867
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 902
    :cond_7
    :goto_6
    :try_start_8
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-nez v2, :cond_9

    :goto_7
    monitor-exit p0

    .line 903
    return-void

    .line 867
    :cond_8
    :try_start_9
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    if-nez v2, :cond_7

    .line 868
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;

    move-result-object v0

    .line 869
    .local v0, "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 871
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContactList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTarget(Ljavax2/sip/header/ContactHeader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 903
    .end local v0    # "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    :cond_9
    :try_start_a
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .line 882
    :cond_a
    :try_start_b
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    if-ne v2, v3, :cond_c

    .line 895
    :cond_b
    :goto_8
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;

    move-result-object v0

    .line 896
    .restart local v0    # "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContactList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTarget(Ljavax2/sip/header/ContactHeader;)V

    goto/16 :goto_1

    .line 882
    .end local v0    # "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    :cond_c
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v2, v3, :cond_b

    .line 884
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov2/nist/javax2/sip/header/RecordRouteList;

    move-result-object v1

    .line 887
    .local v1, "rrlist":Lgov2/nist/javax2/sip/header/RecordRouteList;
    if-nez v1, :cond_d

    .line 891
    new-instance v2, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    goto :goto_8

    .line 888
    :cond_d
    invoke-direct {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/header/RecordRouteList;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    .line 903
    .end local v1    # "rrlist":Lgov2/nist/javax2/sip/header/RecordRouteList;
    :cond_e
    :try_start_c
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov2/nist/core/StackLogger;->logStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3
.end method

.method public static createFromNOTIFY(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 4
    .param p0, "subscribeTx"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .param p1, "notifyST"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    const/4 v2, 0x0

    .line 1390
    new-instance v0, Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {v0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1394
    .local v0, "d":Lgov2/nist/javax2/sip/stack/SIPDialog;
    iput-boolean v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 1396
    iput-object p0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 1397
    invoke-static {v0, p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1398
    iput-boolean v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 1399
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getCSeq()J

    move-result-wide v2

    iput-wide v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1400
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 1401
    .local v1, "not":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    iput-wide v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 1402
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 1410
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/ToHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localParty:Ljavax2/sip/address/Address;

    .line 1411
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/FromHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    .line 1415
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1416
    sget v2, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    .line 1417
    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPResponse;)Ljavax2/sip/message/Request;
    .locals 18
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1876
    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v14, "null argument"

    invoke-direct {v2, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v2, "CANCEL"

    .line 1878
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1881
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1886
    :cond_2
    :goto_0
    new-instance v2, Ljavax2/sip/SipException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Dialog  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " not yet established or terminated "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1879
    :cond_3
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v14, "Dialog.createRequest(): Invalid request"

    invoke-direct {v2, v14}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1881
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    invoke-virtual {v2}, Ljavax2/sip/DialogState;->getValue()I

    move-result v2

    sget v14, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-eq v2, v14, :cond_8

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_6
    :goto_1
    const/4 v3, 0x0

    .line 1890
    .local v3, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTarget()Ljavax2/sip/address/Address;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteParty()Ljavax2/sip/address/Address;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    check-cast v3, Lgov2/nist/javax2/sip/address/SipUri;

    .line 1894
    .local v3, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/address/SipUri;->clearUriParms()V

    .line 1897
    :goto_2
    new-instance v5, Lgov2/nist/javax2/sip/header/CSeq;

    invoke-direct {v5}, Lgov2/nist/javax2/sip/header/CSeq;-><init>()V

    .line 1899
    .local v5, "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lgov2/nist/javax2/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 1900
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Lgov2/nist/javax2/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-virtual/range {p2 .. p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v12

    check-cast v12, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 1913
    .local v12, "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    if-eqz v12, :cond_c

    .line 1921
    invoke-virtual {v12}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getViaHeader()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v4

    .line 1923
    .local v4, "via":Lgov2/nist/javax2/sip/header/Via;
    new-instance v6, Lgov2/nist/javax2/sip/header/From;

    invoke-direct {v6}, Lgov2/nist/javax2/sip/header/From;-><init>()V

    .line 1924
    .local v6, "from":Lgov2/nist/javax2/sip/header/From;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localParty:Ljavax2/sip/address/Address;

    invoke-virtual {v6, v2}, Lgov2/nist/javax2/sip/header/From;->setAddress(Ljavax2/sip/address/Address;)V

    .line 1925
    new-instance v7, Lgov2/nist/javax2/sip/header/To;

    invoke-direct {v7}, Lgov2/nist/javax2/sip/header/To;-><init>()V

    .line 1926
    .local v7, "to":Lgov2/nist/javax2/sip/header/To;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    invoke-virtual {v7, v2}, Lgov2/nist/javax2/sip/header/To;->setAddress(Ljavax2/sip/address/Address;)V

    move-object/from16 v2, p2

    .line 1927
    invoke-virtual/range {v2 .. v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->createRequest(Lgov2/nist/javax2/sip/address/SipUri;Lgov2/nist/javax2/sip/header/Via;Lgov2/nist/javax2/sip/header/CSeq;Lgov2/nist/javax2/sip/header/From;Lgov2/nist/javax2/sip/header/To;)Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v13

    .line 1935
    .local v13, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-static/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1948
    :goto_4
    :try_start_1
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lgov2/nist/javax2/sip/header/CSeq;

    move-object v5, v0

    .line 1949
    move-object/from16 v0, p0

    iget-wide v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-virtual {v5, v14, v15}, Lgov2/nist/javax2/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    const-string/jumbo v2, "SUBSCRIBE"

    .line 1955
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1973
    :cond_7
    :goto_6
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 1976
    invoke-virtual {v6}, Lgov2/nist/javax2/sip/header/From;->removeTag()V

    .line 1978
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1981
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/To;->removeTag()V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1988
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgov2/nist/javax2/sip/stack/SIPDialog;->updateRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1990
    return-object v13

    .end local v3    # "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    .end local v4    # "via":Lgov2/nist/javax2/sip/header/Via;
    .end local v5    # "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    .end local v6    # "from":Lgov2/nist/javax2/sip/header/From;
    .end local v7    # "to":Lgov2/nist/javax2/sip/header/To;
    .end local v12    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v13    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_8
    const-string/jumbo v2, "BYE"

    .line 1881
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    invoke-virtual {v2}, Ljavax2/sip/DialogState;->getValue()I

    move-result v2

    sget v14, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v2, v14, :cond_6

    const-string/jumbo v2, "BYE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 1891
    .local v3, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTarget()Ljavax2/sip/address/Address;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    check-cast v3, Lgov2/nist/javax2/sip/address/SipUri;

    .local v3, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    goto/16 :goto_2

    .line 1905
    .restart local v5    # "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    :catch_0
    move-exception v9

    .line 1902
    .local v9, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1904
    :goto_9
    invoke-static {v9}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 1903
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v14, "Unexpected error"

    invoke-interface {v2, v14}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_9

    .line 1914
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v12    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1918
    :goto_a
    new-instance v2, Ljavax2/sip/SipException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cannot find listening point for transport "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1915
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cannot find listening point for transport "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_a

    .line 1936
    .restart local v4    # "via":Lgov2/nist/javax2/sip/header/Via;
    .restart local v6    # "from":Lgov2/nist/javax2/sip/header/From;
    .restart local v7    # "to":Lgov2/nist/javax2/sip/header/To;
    .restart local v13    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-virtual {v12}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/ListeningPointImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/ListeningPointImpl;->createContactHeader()Ljavax2/sip/header/ContactHeader;

    move-result-object v8

    .line 1939
    .local v8, "contactHeader":Ljavax2/sip/header/ContactHeader;
    invoke-interface {v8}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax2/sip/address/SipURI;

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isSecure()Z

    move-result v14

    invoke-interface {v2, v14}, Ljavax2/sip/address/SipURI;->setSecure(Z)V

    .line 1940
    invoke-virtual {v13, v8}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_4

    .line 1953
    .end local v8    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    :catch_1
    move-exception v11

    .line 1952
    .local v11, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-static {v11}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 1957
    .end local v11    # "ex":Ljavax2/sip/InvalidArgumentException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventHeader:Ljavax2/sip/header/EventHeader;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventHeader:Ljavax2/sip/header/EventHeader;

    invoke-virtual {v13, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->addHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_6

    .line 1974
    :cond_10
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lgov2/nist/javax2/sip/header/From;->setTag(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    .line 1985
    :catch_2
    move-exception v10

    .line 1984
    .local v10, "ex":Ljava/text/ParseException;
    invoke-static {v10}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_8

    .line 1979
    .end local v10    # "ex":Ljava/text/ParseException;
    :cond_11
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lgov2/nist/javax2/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_8
.end method

.method private doTargetRefresh(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 2
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    .line 2837
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;

    move-result-object v1

    .line 2844
    .local v1, "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    if-nez v1, :cond_0

    .line 2851
    :goto_0
    return-void

    .line 2846
    :cond_0
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/ContactList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/Contact;

    .line 2847
    .local v0, "contact":Lgov2/nist/javax2/sip/header/Contact;
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTarget(Ljavax2/sip/header/ContactHeader;)V

    goto :goto_0
.end method

.method private declared-synchronized getRouteList()Lgov2/nist/javax2/sip/header/RouteList;
    .locals 6

    .prologue
    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 918
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    .line 920
    .local v1, "retval":Lgov2/nist/javax2/sip/header/RouteList;
    new-instance v1, Lgov2/nist/javax2/sip/header/RouteList;

    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/RouteList;
    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    .line 921
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/header/RouteList;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    if-nez v3, :cond_2

    .line 929
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    monitor-exit p0

    .line 938
    return-object v1

    .line 915
    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/RouteList;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRouteList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 922
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/header/RouteList;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 923
    .local v0, "li":Ljava/util/ListIterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/Route;

    .line 925
    .local v2, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/Route;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/Route;

    invoke-virtual {v1, v3}, Lgov2/nist/javax2/sip/header/RouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    goto :goto_2

    .line 930
    .end local v0    # "li":Ljava/util/ListIterator;
    .end local v2    # "route":Lgov2/nist/javax2/sip/header/Route;
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "----- "

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 931
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRouteList for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 932
    if-nez v1, :cond_4

    .line 934
    :goto_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    if-nez v3, :cond_5

    .line 936
    :goto_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "----- "

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 933
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RouteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 935
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "myRouteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private isClientDialog()Z
    .locals 2

    .prologue
    .line 674
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 675
    .local v0, "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    instance-of v1, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    return v1
.end method

.method private raiseErrorEvent(I)V
    .locals 5
    .param p1, "dialogTimeoutError"    # I

    .prologue
    .line 710
    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;

    invoke-direct {v1, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;-><init>(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V

    .line 713
    .local v1, "newErrorEvent":Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    monitor-enter v4

    .line 714
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 715
    .local v0, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 720
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const/4 v3, 0x2

    .line 728
    if-ne p1, v3, :cond_2

    .line 734
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->stopTimer()V

    .line 735
    return-void

    .line 717
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;

    .line 718
    .local v2, "nextListener":Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;
    invoke-interface {v2, v1}, Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;->dialogErrorEvent(Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;)V

    goto :goto_0

    .line 720
    .end local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;>;"
    .end local v2    # "nextListener":Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;>;"
    :cond_2
    const/4 v3, 0x1

    .line 728
    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 731
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    goto :goto_1
.end method

.method private raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 690
    new-instance v0, Ljavax2/sip/IOExceptionEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax2/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 691
    .local v0, "ioError":Ljavax2/sip/IOExceptionEvent;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 693
    sget v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    .line 694
    return-void
.end method

.method private recordStackTrace()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 582
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 583
    .local v1, "writer":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 584
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    .line 585
    return-void
.end method

.method private sendAck(Ljavax2/sip/message/Request;Z)V
    .locals 18
    .param p1, "request"    # Ljavax2/sip/message/Request;
    .param p2, "throwIOExceptionAsSipException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    move-object/from16 v2, p1

    .line 957
    check-cast v2, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 958
    .local v2, "ackRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 960
    :goto_0
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ACK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 962
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v14

    if-nez v14, :cond_3

    .line 963
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_5

    .line 967
    :goto_1
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bad dialog state "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 958
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sendAck"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_2
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Bad request method -- should be ACK"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 962
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v14

    invoke-virtual {v14}, Ljavax2/sip/DialogState;->getValue()I

    move-result v14

    sget v15, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    if-eq v14, v15, :cond_0

    .line 970
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v14, p1

    check-cast v14, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 980
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_8

    .line 987
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    .line 988
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-nez v14, :cond_a

    .line 993
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getNextHop(Lgov2/nist/javax2/sip/message/SIPRequest;)Ljavax2/sip/address/Hop;

    move-result-object v9

    .line 995
    .local v9, "hop":Ljavax2/sip/address/Hop;
    if-eqz v9, :cond_b

    .line 997
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_c

    .line 998
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-interface {v9}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v11

    check-cast v11, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 1000
    .local v11, "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    if-eqz v11, :cond_d

    .line 1002
    invoke-interface {v9}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 1003
    .local v10, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v14

    invoke-interface {v9}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v15

    invoke-virtual {v14, v10, v15}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v12

    .line 1005
    .local v12, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    const/4 v13, 0x0

    .line 1006
    .local v13, "releaseAckSem":Z
    check-cast p1, Lgov2/nist/javax2/sip/message/SIPRequest;

    .end local p1    # "request":Ljavax2/sip/message/Request;
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    .line 1007
    .local v4, "cseqNo":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1011
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastAckSent(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1012
    invoke-virtual {v12, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 1014
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAcknowledged:Z

    .line 1015
    move-object/from16 v0, p0

    iget-wide v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 1018
    if-nez v13, :cond_f

    .line 1021
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax2/sip/SipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v14

    if-nez v14, :cond_10

    .line 1036
    .end local v4    # "cseqNo":J
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v12    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v13    # "releaseAckSem":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    if-nez v14, :cond_14

    .line 1040
    :goto_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSeen:Z

    .line 1042
    return-void

    .line 964
    .end local v9    # "hop":Ljavax2/sip/address/Hop;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bad Dialog State for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " dialogID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 971
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_7

    .line 977
    :goto_9
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Bad call ID in request"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 972
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CallID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RequestCallID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dialog =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_9

    .line 981
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setting from tag For outgoing ACK= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setting To tag for outgoing ACK = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ack = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 991
    :catch_0
    move-exception v7

    .line 990
    .local v7, "ex":Ljava/text/ParseException;
    new-instance v14, Ljavax2/sip/SipException;

    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 987
    .end local v7    # "ex":Ljava/text/ParseException;
    :cond_9
    :try_start_3
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljavax2/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 988
    :cond_a
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljavax2/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 995
    .restart local v9    # "hop":Ljavax2/sip/address/Hop;
    :cond_b
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "No route!"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 997
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "hop = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax2/sip/SipException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_5

    .line 1035
    .end local p1    # "request":Ljavax2/sip/message/Request;
    :catch_1
    move-exception v3

    .line 1027
    .local v3, "ex":Ljava/io/IOException;
    if-nez p2, :cond_11

    .line 1028
    invoke-interface {v9}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v15

    invoke-interface {v9}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1001
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_d
    :try_start_5
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No listening point for this provider registered at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax2/sip/SipException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1035
    .end local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local p1    # "request":Ljavax2/sip/message/Request;
    :catch_2
    move-exception v8

    .line 1030
    .local v8, "ex":Ljavax2/sip/SipException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_12

    .line 1031
    :goto_a
    throw v8

    .line 1008
    .end local v8    # "ex":Ljavax2/sip/SipException;
    .restart local v4    # "cseqNo":J
    .restart local v10    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v12    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v13    # "releaseAckSem":Z
    :cond_e
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 1018
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v14, :cond_4

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseAckSem()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax2/sip/SipException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_7

    .line 1031
    .end local v4    # "cseqNo":J
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v12    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v13    # "releaseAckSem":Z
    :catch_3
    move-exception v6

    .line 1033
    .local v6, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_13

    .line 1034
    :goto_b
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Could not create message channel"

    invoke-direct {v14, v15, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 1022
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v4    # "cseqNo":J
    .restart local v10    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v12    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v13    # "releaseAckSem":Z
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not releasing ack sem for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isAckSent "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax2/sip/SipException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_7

    .line 1027
    .end local v4    # "cseqNo":J
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v12    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v13    # "releaseAckSem":Z
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_11
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Could not send ack"

    invoke-direct {v14, v15, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 1030
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v8    # "ex":Ljavax2/sip/SipException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v8}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1033
    .end local v8    # "ex":Ljavax2/sip/SipException;
    .restart local v6    # "ex":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v6}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1037
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    const/4 v14, 0x0

    .line 1038
    move-object/from16 v0, p0

    iput-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    goto/16 :goto_8
.end method

.method private setCallId(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 1
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 1768
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->callIdHeader:Ljavax2/sip/header/CallIdHeader;

    .line 1769
    return-void
.end method

.method private setLastAckReceived(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "lastAckReceived"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 3232
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastAckReceived:Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 3233
    return-void
.end method

.method private setLastAckSent(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "lastAckSent"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 3246
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastAckSent:Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 3247
    return-void
.end method

.method private setLocalParty(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 1
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    .line 1781
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/ToHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localParty:Ljavax2/sip/address/Address;

    .line 1786
    :goto_0
    return-void

    .line 1782
    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localParty:Ljavax2/sip/address/Address;

    goto :goto_0
.end method

.method private setLocalSequenceNumber(J)V
    .locals 7
    .param p1, "lCseq"    # J

    .prologue
    const/4 v0, 0x0

    .line 1633
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1637
    :goto_0
    iget-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    .line 1638
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Sequence number should not decrease !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLocalSequenceNumber: original  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1639
    :cond_2
    iput-wide p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1640
    return-void
.end method

.method private setLocalTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "mytag"    # Ljava/lang/String;

    .prologue
    .line 1737
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 1744
    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set Local tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method private setRemoteParty(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    .line 745
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    .line 752
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    :goto_1
    return-void

    .line 747
    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/header/ToHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setRemoteTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "hisTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1565
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1570
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1598
    :cond_0
    if-nez p1, :cond_9

    .line 1601
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1606
    :cond_1
    :goto_1
    return-void

    .line 1566
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteTag(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " remoteTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1570
    :cond_3
    if-eqz p1, :cond_0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1571
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v1

    sget-object v2, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    if-ne v1, v2, :cond_4

    .line 1576
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isRemoteTagReassignmentAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1582
    :goto_2
    const/4 v0, 0x0

    .line 1583
    .local v0, "removed":Z
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v1

    if-eq v1, p0, :cond_7

    .line 1589
    :goto_3
    iput-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1590
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 1591
    if-eqz v0, :cond_1

    .line 1592
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1594
    :goto_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_1

    .line 1572
    .end local v0    # "removed":Z
    :cond_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1575
    :goto_5
    return-void

    .line 1573
    :cond_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "Dialog is already established -- ignoring remote tag re-assignment"

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 1578
    :cond_6
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UNSAFE OPERATION !  tag re-assignment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " trying to set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can cause unexpected effects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 1584
    .restart local v0    # "removed":Z
    :cond_7
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeDialog(Ljava/lang/String;)V

    .line 1585
    const/4 v0, 0x1

    goto :goto_3

    .line 1593
    :cond_8
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "ReInserting Dialog"

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 1599
    .end local v0    # "removed":Z
    :cond_9
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1602
    :cond_a
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "setRemoteTag : called with null argument "

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static storeFirstTransactionInfo(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 7
    .param p0, "dialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    const/4 v4, 0x0

    .line 1456
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 1457
    const/4 v5, 0x1

    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionSeen:Z

    .line 1458
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v5

    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    .line 1459
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/message/Request;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sips"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionSecure:Z

    .line 1461
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getPort()I

    move-result v5

    iput v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 1462
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    .line 1463
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    .line 1465
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v0, p1

    .line 1470
    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1471
    .local v0, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-nez v0, :cond_2

    .line 1476
    .end local v0    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :goto_0
    return-void

    :cond_0
    move-object v3, p1

    .line 1466
    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 1467
    .local v3, "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v1

    .line 1468
    .local v1, "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    if-nez v1, :cond_1

    :goto_1
    iput-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->contactHeader:Lgov2/nist/javax2/sip/header/Contact;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v4

    goto :goto_1

    .line 1472
    .end local v1    # "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v3    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v0    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_2
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    .line 1473
    .local v2, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v4

    iput-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->contactHeader:Lgov2/nist/javax2/sip/header/Contact;

    goto :goto_0
.end method

.method private toRetransmitFinalResponse(I)Z
    .locals 2
    .param p1, "T2"    # I

    .prologue
    const/4 v1, 0x0

    .line 2202
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    if-eqz v0, :cond_0

    .line 2210
    return v1

    .line 2203
    :cond_0
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_1

    .line 2206
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    .line 2207
    :goto_0
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    .line 2208
    const/4 v0, 0x1

    return v0

    .line 2204
    :cond_1
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    goto :goto_0
.end method

.method private updateRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 2
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 2345
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRouteList()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v0

    .line 2346
    .local v0, "rl":Lgov2/nist/javax2/sip/header/RouteList;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/RouteList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const-string/jumbo v1, "Route"

    .line 2349
    invoke-virtual {p1, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    .line 2351
    :goto_0
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2355
    :goto_1
    return-void

    .line 2347
    :cond_0
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0

    .line 2352
    :cond_1
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1
.end method


# virtual methods
.method ackReceived(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 7
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    const/4 v6, 0x0

    .line 1081
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSeen:Z

    if-nez v1, :cond_1

    .line 1082
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getInviteTransaction()Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1083
    .local v0, "tr":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v0, :cond_2

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1081
    .end local v0    # "tr":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_1
    return-void

    .line 1084
    .restart local v0    # "tr":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getCSeq()J

    move-result-wide v2

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1085
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 1087
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 1092
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 1094
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSeen:Z

    .line 1095
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    if-nez v1, :cond_4

    .line 1099
    :goto_2
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastAckReceived(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1100
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1106
    :goto_3
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-nez v1, :cond_6

    .line 1109
    :goto_4
    sget v1, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto :goto_0

    .line 1088
    :cond_3
    :try_start_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    const/4 v1, 0x0

    .line 1089
    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1093
    :catchall_0
    move-exception v1

    .line 1092
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v1

    .line 1096
    :cond_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    .line 1097
    iput-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    goto :goto_2

    .line 1101
    :cond_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ackReceived for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->getLineCount()I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackLine:I

    .line 1104
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->printDebugInfo()V

    goto :goto_3

    .line 1107
    :cond_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseAckSem()V

    goto :goto_4
.end method

.method public acquireTimerTaskSem()V
    .locals 6

    .prologue
    .line 3316
    const/4 v0, 0x0

    .line 3318
    .local v0, "acquired":Z
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3322
    .end local v0    # "acquired":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3325
    return-void

    .line 3321
    .restart local v0    # "acquired":Z
    :catch_0
    move-exception v1

    .line 3320
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    goto :goto_0

    .line 3323
    .end local v0    # "acquired":Z
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Impossible to acquire the dialog timer task lock"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addEventListener(Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;

    .prologue
    .line 1134
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1135
    return-void
.end method

.method public declared-synchronized addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    monitor-enter p0

    .line 1334
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1339
    :goto_0
    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-eq v2, v3, :cond_3

    .line 1343
    :cond_0
    :goto_1
    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_4

    :cond_1
    monitor-exit p0

    .line 1344
    return-void

    .line 1335
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContact: dialogState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1339
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1341
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->doTargetRefresh(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_1

    .line 1343
    :cond_4
    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-eq v2, v3, :cond_1

    .line 1348
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1351
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov2/nist/javax2/sip/header/RecordRouteList;

    move-result-object v1

    .line 1354
    .local v1, "rrlist":Lgov2/nist/javax2/sip/header/RecordRouteList;
    if-nez v1, :cond_6

    .line 1358
    new-instance v2, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    .line 1363
    :goto_2
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1364
    .local v0, "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    if-nez v0, :cond_7

    :goto_3
    monitor-exit p0

    .line 1367
    return-void

    .end local v0    # "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    .end local v1    # "rrlist":Lgov2/nist/javax2/sip/header/RecordRouteList;
    :cond_5
    monitor-exit p0

    .line 1348
    return-void

    .line 1355
    .restart local v1    # "rrlist":Lgov2/nist/javax2/sip/header/RecordRouteList;
    :cond_6
    :try_start_3
    invoke-direct {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/header/RecordRouteList;)V

    goto :goto_2

    .line 1365
    .restart local v0    # "contactList":Lgov2/nist/javax2/sip/header/ContactList;
    :cond_7
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContactList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTarget(Ljavax2/sip/header/ContactHeader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 1485
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v0

    .line 1488
    .local v0, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v1, :cond_2

    .line 1493
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-eqz v1, :cond_3

    .line 1523
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1538
    :cond_1
    :goto_1
    instance-of v1, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v1, :cond_9

    .line 1546
    :goto_2
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 1550
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1557
    :goto_3
    return-void

    .line 1488
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->reInviteFlag:Z

    goto :goto_0

    .line 1497
    :cond_3
    invoke-static {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1498
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SUBSCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1501
    :goto_4
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLocalParty(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 1502
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteParty(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 1503
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setCallId(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1504
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-eqz v1, :cond_5

    .line 1507
    :goto_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1511
    :goto_6
    instance-of v1, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v1, :cond_7

    .line 1515
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLocalSequenceNumber(J)V

    .line 1516
    iget-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    .line 1517
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 1518
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1519
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1520
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "The request\'s From header is missing the required Tag parameter."

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v1, "Event"

    .line 1499
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/EventHeader;

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->eventHeader:Ljavax2/sip/header/EventHeader;

    goto :goto_4

    .line 1505
    :cond_5
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    goto :goto_5

    .line 1508
    :cond_6
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    goto :goto_6

    .line 1512
    :cond_7
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1523
    :cond_8
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1529
    invoke-static {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1531
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLocalParty(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 1532
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteParty(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 1533
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setCallId(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 1534
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 1535
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    goto/16 :goto_1

    .line 1539
    :cond_9
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteSequenceNumber(J)V

    goto/16 :goto_2

    .line 1551
    :cond_a
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transaction Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1552
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1555
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto/16 :goto_3
.end method

.method public createAck(J)Ljavax2/sip/message/Request;
    .locals 17
    .param p1, "cseqno"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;,
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2378
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    const-string/jumbo v15, "INVITE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-wide/16 v14, 0x0

    .line 2381
    cmp-long v14, p1, v14

    if-lez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    if-nez v14, :cond_2

    .line 2382
    new-instance v14, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v15, "bad cseq <= 0 "

    invoke-direct {v14, v15}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2379
    :cond_0
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Dialog was not created with an INVITE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2381
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const-wide v14, 0xffffffffL

    .line 2383
    cmp-long v14, p1, v14

    if-gtz v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_4

    .line 2384
    new-instance v14, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v15, "bad cseq > 4294967295"

    invoke-direct {v14, v15}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2383
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 2386
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteTarget:Ljavax2/sip/address/Address;

    if-eqz v14, :cond_5

    .line 2390
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_6

    .line 2396
    :goto_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastInviteOkReceived:J

    cmp-long v14, v14, p1

    if-ltz v14, :cond_7

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_9

    .line 2397
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_8

    .line 2402
    :goto_4
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Dialog not yet established -- no OK response!"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2387
    :cond_5
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Cannot create ACK - no remote Target!"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2391
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "createAck "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cseqno "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 2396
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 2398
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WARNING : Attempt to crete ACK without OK "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "LAST RESPONSE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const/4 v11, 0x0

    .line 2412
    .local v11, "uri4transport":Ljavax2/sip/address/SipURI;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    if-nez v14, :cond_d

    .line 2416
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteTarget:Ljavax2/sip/address/Address;

    invoke-interface {v14}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax2/sip/address/SipURI;

    move-object v11, v0

    .line 2419
    .local v11, "uri4transport":Ljavax2/sip/address/SipURI;
    :goto_5
    invoke-interface {v11}, Ljavax2/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v10

    .line 2420
    .local v10, "transport":Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 2424
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-virtual {v14, v10}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v5

    check-cast v5, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 2425
    .local v5, "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    if-eqz v5, :cond_10

    .line 2436
    new-instance v8, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v8}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .local v8, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    const-string/jumbo v14, "ACK"

    .line 2437
    invoke-virtual {v8, v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTarget()Ljavax2/sip/address/Address;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgov2/nist/javax2/sip/address/SipUri;

    invoke-virtual {v8, v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestURI(Ljavax2/sip/address/URI;)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->callIdHeader:Ljavax2/sip/header/CallIdHeader;

    invoke-virtual {v8, v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->setCallId(Ljavax2/sip/header/CallIdHeader;)V

    .line 2440
    new-instance v14, Lgov2/nist/javax2/sip/header/CSeq;

    const-string/jumbo v15, "ACK"

    move-wide/from16 v0, p1

    invoke-direct {v14, v0, v1, v15}, Lgov2/nist/javax2/sip/header/CSeq;-><init>(JLjava/lang/String;)V

    invoke-virtual {v8, v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->setCSeq(Ljavax2/sip/header/CSeqHeader;)V

    .line 2441
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2449
    .local v13, "vias":Ljava/util/List;, "Ljava/util/List<Lgov2/nist/javax2/sip/header/Via;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v12

    .line 2450
    .local v12, "via":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v12}, Lgov2/nist/javax2/sip/header/Via;->removeParameters()V

    .line 2451
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v14, :cond_12

    .line 2458
    :cond_b
    :goto_7
    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgov2/nist/javax2/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 2459
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    invoke-virtual {v8, v13}, Lgov2/nist/javax2/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 2461
    new-instance v4, Lgov2/nist/javax2/sip/header/From;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/header/From;-><init>()V

    .line 2462
    .local v4, "from":Lgov2/nist/javax2/sip/header/From;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localParty:Ljavax2/sip/address/Address;

    invoke-virtual {v4, v14}, Lgov2/nist/javax2/sip/header/From;->setAddress(Ljavax2/sip/address/Address;)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lgov2/nist/javax2/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v8, v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->setFrom(Ljavax2/sip/header/FromHeader;)V

    .line 2465
    new-instance v9, Lgov2/nist/javax2/sip/header/To;

    invoke-direct {v9}, Lgov2/nist/javax2/sip/header/To;-><init>()V

    .line 2466
    .local v9, "to":Lgov2/nist/javax2/sip/header/To;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    invoke-virtual {v9, v14}, Lgov2/nist/javax2/sip/header/To;->setAddress(Ljavax2/sip/address/Address;)V

    .line 2467
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-nez v14, :cond_13

    .line 2468
    :goto_8
    invoke-virtual {v8, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->setTo(Ljavax2/sip/header/ToHeader;)V

    .line 2469
    new-instance v14, Lgov2/nist/javax2/sip/header/MaxForwards;

    const/16 v15, 0x46

    invoke-direct {v14, v15}, Lgov2/nist/javax2/sip/header/MaxForwards;-><init>(I)V

    invoke-virtual {v8, v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMaxForwards(Ljavax2/sip/header/MaxForwardsHeader;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v14, :cond_14

    .line 2479
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lgov2/nist/javax2/sip/stack/SIPDialog;->updateRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 2481
    return-object v8

    .line 2412
    .end local v4    # "from":Lgov2/nist/javax2/sip/header/From;
    .end local v5    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v8    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v9    # "to":Lgov2/nist/javax2/sip/header/To;
    .end local v10    # "transport":Ljava/lang/String;
    .end local v12    # "via":Lgov2/nist/javax2/sip/header/Via;
    .end local v13    # "vias":Ljava/util/List;, "Ljava/util/List<Lgov2/nist/javax2/sip/header/Via;>;"
    .local v11, "uri4transport":Ljavax2/sip/address/SipURI;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/RouteList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 2413
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/RouteList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/header/Route;

    .line 2414
    .local v7, "r":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax2/sip/address/SipURI;

    move-object v11, v0

    .local v11, "uri4transport":Ljavax2/sip/address/SipURI;
    goto/16 :goto_5

    .line 2422
    .end local v7    # "r":Lgov2/nist/javax2/sip/header/Route;
    .restart local v10    # "transport":Ljava/lang/String;
    :cond_e
    invoke-interface {v11}, Ljavax2/sip/address/SipURI;->isSecure()Z

    move-result v14

    if-nez v14, :cond_f

    const-string/jumbo v10, "UDP"

    :goto_a
    goto/16 :goto_6

    :cond_f
    const-string/jumbo v10, "TLS"

    goto :goto_a

    .line 2426
    .restart local v5    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_11

    .line 2432
    :goto_b
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Cannot create ACK - no ListeningPoint for transport towards next hop found:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2481
    .end local v5    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v10    # "transport":Ljava/lang/String;
    .end local v11    # "uri4transport":Ljavax2/sip/address/SipURI;
    :catch_0
    move-exception v3

    .line 2483
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2484
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "unexpected exception "

    invoke-direct {v14, v15, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 2427
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v10    # "transport":Ljava/lang/String;
    .restart local v11    # "uri4transport":Ljavax2/sip/address/SipURI;
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remoteTargetURI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteTarget:Ljavax2/sip/address/Address;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "uri4transport = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No LP found for transport="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2451
    .restart local v8    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .restart local v12    # "via":Lgov2/nist/javax2/sip/header/Via;
    .restart local v13    # "vias":Ljava/util/List;, "Ljava/util/List<Lgov2/nist/javax2/sip/header/Via;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 2452
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v14

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/header/Via;->getParameters()Lgov2/nist/core/NameValueList;

    move-result-object v6

    .line 2454
    .local v6, "originalRequestParameters":Lgov2/nist/core/NameValueList;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lgov2/nist/core/NameValueList;->size()I

    move-result v14

    if-lez v14, :cond_b

    .line 2455
    invoke-virtual {v6}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgov2/nist/core/NameValueList;

    invoke-virtual {v12, v14}, Lgov2/nist/javax2/sip/header/Via;->setParameters(Lgov2/nist/core/NameValueList;)V

    goto/16 :goto_7

    .line 2467
    .end local v6    # "originalRequestParameters":Lgov2/nist/core/NameValueList;
    .restart local v4    # "from":Lgov2/nist/javax2/sip/header/From;
    .restart local v9    # "to":Lgov2/nist/javax2/sip/header/To;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lgov2/nist/javax2/sip/header/To;->setTag(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2472
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/message/SIPRequest;->getAuthorization()Lgov2/nist/javax2/sip/header/Authorization;

    move-result-object v2

    .line 2473
    .local v2, "authorization":Lgov2/nist/javax2/sip/header/Authorization;
    if-eqz v2, :cond_c

    invoke-virtual {v8, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9
.end method

.method public createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ACK"

    .line 1851
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    :cond_0
    new-instance v0, Ljavax2/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid method specified for createRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "PRACK"

    .line 1851
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-nez v0, :cond_2

    .line 1857
    new-instance v0, Ljavax2/sip/SipException;

    const-string/jumbo v1, "Dialog not yet established -- no response!"

    invoke-direct {v0, v1}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-direct {p0, p1, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPResponse;)Ljavax2/sip/message/Request;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 1753
    sget v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    .line 1754
    return-void
.end method

.method public doDeferredDelete()V
    .locals 4

    .prologue
    .line 1202
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    new-instance v0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-direct {v0, p0}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;-><init>(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1207
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1211
    :goto_0
    return-void

    .line 1203
    :cond_0
    sget v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto :goto_0
.end method

.method public declared-synchronized doDeferredDeleteIfNoAckSent(J)V
    .locals 5
    .param p1, "seqno"    # J

    .prologue
    monitor-enter p0

    .line 3261
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    .line 3269
    return-void

    .line 3262
    :cond_0
    :try_start_1
    sget v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3265
    :cond_1
    :try_start_2
    new-instance v0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    invoke-direct {v0, p0, p1, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;-><init>(Lgov2/nist/javax2/sip/stack/SIPDialog;J)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    .line 3266
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getCallId()Ljavax2/sip/header/CallIdHeader;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->callIdHeader:Ljavax2/sip/header/CallIdHeader;

    return-object v0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1452
    :cond_0
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    return-object v0

    .line 1449
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    goto :goto_0
.end method

.method getEarlyDialogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3177
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTransaction()Ljavax2/sip/Transaction;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public getInviteTransaction()Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1619
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    .line 1620
    .local v0, "t":Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    if-nez v0, :cond_0

    .line 1623
    return-object v1

    .line 1621
    :cond_0
    iget-object v1, v0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    return-object v1
.end method

.method public getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastAckSent:Lgov2/nist/javax2/sip/message/SIPRequest;

    return-object v0
.end method

.method public getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;
    .locals 1

    .prologue
    .line 2821
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    return-object v0
.end method

.method public getLastTransaction()Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastTransaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public getLocalSeqNumber()J
    .locals 2

    .prologue
    .line 1701
    iget-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    return-wide v0
.end method

.method public getLocalTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2249
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMyContactHeader()Lgov2/nist/javax2/sip/header/Contact;
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->contactHeader:Lgov2/nist/javax2/sip/header/Contact;

    return-object v0
.end method

.method public getRemoteParty()Ljavax2/sip/address/Address;
    .locals 3

    .prologue
    .line 1800
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    return-object v0

    .line 1801
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gettingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteParty:Ljavax2/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteSeqNumber()J
    .locals 2

    .prologue
    .line 1709
    iget-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteSequenceNumber:J

    return-wide v0
.end method

.method public getRemoteTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteTarget()Ljavax2/sip/address/Address;
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteTarget:Ljavax2/sip/address/Address;

    return-object v0
.end method

.method public getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;
    .locals 1

    .prologue
    .line 2495
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    return-object v0
.end method

.method public getState()Ljavax2/sip/DialogState;
    .locals 2

    .prologue
    .line 1821
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1822
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    invoke-static {v0}, Ljavax2/sip/DialogState;->getObject(I)Ljavax2/sip/DialogState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1821
    return-object v0
.end method

.method public handleAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z
    .locals 9
    .param p1, "ackTransaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 3109
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v0

    .line 3111
    .local v0, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3127
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v3, v4, :cond_5

    .line 3139
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getInviteTransaction()Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v2

    .line 3141
    .local v2, "tr":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v2, :cond_7

    .line 3144
    .local v1, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :goto_0
    if-nez v2, :cond_8

    .line 3164
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3167
    :goto_1
    return v8

    .line 3111
    .end local v1    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v2    # "tr":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 3113
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3117
    :goto_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 3119
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    .line 3124
    :goto_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 3126
    return v8

    .line 3114
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "ACK already seen by dialog -- dropping Ack retransmission"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 3120
    :cond_4
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    const/4 v3, 0x0

    .line 3121
    iput-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 3125
    :catchall_0
    move-exception v3

    .line 3124
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v3

    .line 3128
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3130
    :goto_4
    return v8

    .line 3129
    :cond_6
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Dialog is terminated -- dropping ACK"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 3141
    .restart local v2    # "tr":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_7
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v1

    goto :goto_0

    .line 3144
    .restart local v1    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_8
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 3148
    invoke-virtual {v1, v8}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 3153
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackReceived(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 3154
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3156
    :goto_5
    const/4 v3, 0x1

    return v3

    .line 3155
    :cond_9
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "ACK for 2XX response --- sending to TU "

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 3165
    :cond_a
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, " INVITE transaction not found  -- Discarding ACK"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public handlePrack(Lgov2/nist/javax2/sip/message/SIPRequest;)Z
    .locals 11
    .param p1, "prackRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    const/4 v10, 0x0

    .line 2948
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2953
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getFirstTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 2955
    .local v4, "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getReliableProvisionalResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v3

    .line 2957
    .local v3, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    if-eqz v3, :cond_2

    const-string/jumbo v5, "RAck"

    .line 2963
    invoke-virtual {p1, v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/RAck;

    .line 2965
    .local v1, "rack":Lgov2/nist/javax2/sip/header/RAck;
    if-eqz v1, :cond_4

    .line 2970
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/CSeq;

    .line 2972
    .local v0, "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RAck;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2979
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RAck;->getCSeqNumberLong()J

    move-result-wide v6

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_9

    .line 2980
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2983
    :goto_0
    return v10

    .line 2949
    .end local v0    # "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    .end local v1    # "rack":Lgov2/nist/javax2/sip/header/RAck;
    .end local v3    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v4    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2951
    :goto_1
    return v10

    .line 2950
    :cond_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping Prack -- not a server Dialog"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 2958
    .restart local v3    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .restart local v4    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2960
    :goto_2
    return v10

    .line 2959
    :cond_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping Prack -- ReliableResponse not found"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 2966
    .restart local v1    # "rack":Lgov2/nist/javax2/sip/header/RAck;
    :cond_4
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2968
    :goto_3
    return v10

    .line 2967
    :cond_5
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping Prack -- rack header not found"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 2973
    .restart local v0    # "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    :cond_6
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2976
    :goto_4
    return v10

    .line 2974
    :cond_7
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping Prack -- CSeq Header does not match PRACK"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 2981
    :cond_8
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping Prack -- CSeq Header does not match PRACK"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v5, "RSeq"

    .line 2986
    invoke-virtual {v3, v5}, Lgov2/nist/javax2/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/RSeq;

    .line 2988
    .local v2, "rseq":Lgov2/nist/javax2/sip/header/RSeq;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RAck;->getRSequenceNumber()J

    move-result-wide v6

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_b

    .line 2989
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2992
    :goto_5
    return v10

    .line 2990
    :cond_a
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Dropping Prack -- RSeq Header does not match PRACK"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .line 2995
    :cond_b
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->prackRecieved()Z

    move-result v5

    return v5
.end method

.method public incrementLocalSequenceNumber()V
    .locals 4

    .prologue
    .line 1659
    iget-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1660
    return-void
.end method

.method public isAckSeen()Z
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSeen:Z

    return v0
.end method

.method public isAckSent(J)Z
    .locals 5
    .param p1, "cseqNo"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1279
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastTransaction()Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1280
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastTransaction()Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v2

    instance-of v2, v2, Ljavax2/sip/ClientTransaction;

    if-nez v2, :cond_1

    .line 1287
    return v0

    .line 1279
    :cond_0
    return v0

    .line 1281
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1284
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    :goto_1
    return v0

    .line 1282
    :cond_2
    return v1

    :cond_3
    move v2, v1

    .line 1284
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public isAssigned()Z
    .locals 1

    .prologue
    .line 3085
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAssigned:Z

    return v0
.end method

.method public isBackToBackUserAgent()Z
    .locals 1

    .prologue
    .line 3257
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method protected isReInvite()Z
    .locals 1

    .prologue
    .line 1439
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->reInviteFlag:Z

    return v0
.end method

.method public declared-synchronized isRequestConsumable(Lgov2/nist/javax2/sip/message/SIPRequest;)Z
    .locals 6
    .param p1, "dialogRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 1183
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    iget-wide v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteSequenceNumber:J

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    monitor-exit p0

    return v0

    .line 1184
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Illegal method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    .line 1188
    return v0

    :cond_2
    move v2, v1

    .line 1193
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1834
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionSecure:Z

    return v0
.end method

.method public isSequnceNumberValidation()Z
    .locals 1

    .prologue
    .line 3308
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    return v0
.end method

.method public isServer()Z
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    return v0

    .line 1427
    :cond_0
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->serverTransactionFlag:Z

    return v0
.end method

.method isTerminatedOnBye()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->terminateOnBye:Z

    return v0
.end method

.method public printDebugInfo()V
    .locals 4

    .prologue
    .line 1248
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1249
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "localTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remoteTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "localSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remoteSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ackLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method releaseAckSem()V
    .locals 3

    .prologue
    .line 3185
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-nez v0, :cond_0

    .line 3192
    :goto_0
    return-void

    .line 3186
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3189
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 3187
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseAckSem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releaseTimerTaskSem()V
    .locals 1

    .prologue
    .line 3328
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3329
    return-void
.end method

.method public declared-synchronized requestConsumed()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 1165
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    .line 1167
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 1172
    return-void

    .line 1168
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request Consumed -- next consumable Request Seqno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resendAck()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2225
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2239
    :goto_0
    return-void

    .line 2226
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    const-string/jumbo v2, "Timestamp"

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2236
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendAck(Ljavax2/sip/message/Request;Z)V

    goto :goto_0

    .line 2226
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-eqz v1, :cond_1

    .line 2228
    new-instance v0, Lgov2/nist/javax2/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/TimeStamp;-><init>()V

    .line 2230
    .local v0, "ts":Lgov2/nist/javax2/sip/header/TimeStamp;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/TimeStamp;->setTimeStamp(F)V

    .line 2231
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2234
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public sendAck(Ljavax2/sip/message/Request;)V
    .locals 1
    .param p1, "request"    # Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1842
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendAck(Ljavax2/sip/message/Request;Z)V

    .line 1843
    return-void
.end method

.method public sendRequest(Ljavax2/sip/ClientTransaction;)V
    .locals 2
    .param p1, "clientTransactionId"    # Ljavax2/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionDoesNotExistException;,
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2001
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendRequest(Ljavax2/sip/ClientTransaction;Z)V

    .line 2002
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2001
    goto :goto_0
.end method

.method public sendRequest(Ljavax2/sip/ClientTransaction;Z)V
    .locals 18
    .param p1, "clientTransactionId"    # Ljavax2/sip/ClientTransaction;
    .param p2, "allowInterleaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionDoesNotExistException;,
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 2007
    if-eqz p2, :cond_2

    :cond_0
    move-object/from16 v14, p1

    .line 2013
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    .line 2015
    .local v2, "dialogRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_3

    .line 2020
    :goto_0
    if-eqz p1, :cond_4

    .line 2022
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ACK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2024
    :cond_1
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bad Request Method. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2007
    .end local v2    # "dialogRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljavax2/sip/ClientTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "INVITE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2009
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;-><init>(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljavax2/sip/ClientTransaction;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 2010
    return-void

    .line 2016
    .restart local v2    # "dialogRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dialog.sendRequest  dialog = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\ndialogRequest = \n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 2020
    :cond_4
    new-instance v14, Ljava/lang/NullPointerException;

    const-string/jumbo v15, "null parameter"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2022
    :cond_5
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "CANCEL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2027
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->byeSent:Z

    if-nez v14, :cond_e

    .line 2033
    :cond_6
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 2037
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v14, p1

    .line 2049
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    move-object/from16 v14, p1

    .line 2051
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    move-object/from16 v14, p1

    .line 2054
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 2056
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/header/From;

    .line 2057
    .local v7, "from":Lgov2/nist/javax2/sip/header/From;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v12

    check-cast v12, Lgov2/nist/javax2/sip/header/To;

    .line 2061
    .local v12, "to":Lgov2/nist/javax2/sip/header/To;
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_13

    .line 2065
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_14

    .line 2075
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 2083
    :cond_9
    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_17

    .line 2084
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-nez v14, :cond_18

    :goto_5
    move-object/from16 v14, p1

    .line 2092
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getNextHop()Ljavax2/sip/address/Hop;

    move-result-object v8

    .line 2093
    .local v8, "hop":Ljavax2/sip/address/Hop;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_19

    .line 2099
    :goto_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v15

    invoke-interface {v8}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionPort:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v8}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v9

    .line 2103
    .local v9, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v10

    .line 2109
    .local v10, "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/MessageChannel;->uncache()V

    .line 2112
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v14, v14, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-eqz v14, :cond_1a

    .line 2120
    :cond_a
    :goto_7
    if-eqz v9, :cond_1b

    .line 2148
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object v14, v0

    invoke-virtual {v14, v9}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_1e

    .line 2157
    :cond_b
    :goto_8
    if-nez v9, :cond_1f

    .line 2160
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v14, v14, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheClientConnections:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v14, :cond_20

    .line 2169
    :cond_c
    :goto_a
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 2170
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1}, Ljavax2/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2176
    :goto_b
    :try_start_3
    check-cast p1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .end local p1    # "clientTransactionId":Ljavax2/sip/ClientTransaction;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 2182
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "BYE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v14

    if-nez v14, :cond_22

    .line 2196
    :cond_d
    :goto_c
    return-void

    .line 2027
    .end local v7    # "from":Lgov2/nist/javax2/sip/header/From;
    .end local v8    # "hop":Ljavax2/sip/address/Hop;
    .end local v9    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v10    # "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v12    # "to":Lgov2/nist/javax2/sip/header/To;
    .restart local p1    # "clientTransactionId":Ljavax2/sip/ClientTransaction;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "BYE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 2028
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_f

    .line 2030
    :goto_d
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Cannot send request; BYE already sent"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2029
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "BYE already sent for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_d

    :cond_10
    move-object/from16 v14, p1

    .line 2034
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOutgoingViaHeader()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v13

    .line 2035
    .local v13, "via":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v2, v13}, Lgov2/nist/javax2/sip/message/SIPRequest;->addHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_1

    .line 2039
    .end local v13    # "via":Lgov2/nist/javax2/sip/header/Via;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_12

    .line 2045
    :goto_e
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Bad call ID in request"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2040
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CallID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RequestCallID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dialog =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_e

    .line 2061
    .restart local v7    # "from":Lgov2/nist/javax2/sip/header/From;
    .restart local v12    # "to":Lgov2/nist/javax2/sip/header/To;
    :cond_13
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 2063
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "From tag mismatch expecting  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2065
    :cond_14
    invoke-virtual {v12}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v12}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 2067
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2068
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "To header tag mismatch expecting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2075
    :cond_15
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "NOTIFY"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "SUBSCRIBE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 2078
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2077
    :cond_16
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Trying to send NOTIFY without SUBSCRIBE Dialog!"

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2083
    :cond_17
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lgov2/nist/javax2/sip/header/From;->setTag(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 2090
    :catch_0
    move-exception v5

    .line 2088
    .local v5, "ex":Ljava/text/ParseException;
    invoke-static {v5}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 2084
    .end local v5    # "ex":Ljava/text/ParseException;
    :cond_18
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgov2/nist/javax2/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    .line 2094
    .restart local v8    # "hop":Ljavax2/sip/address/Hop;
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Using hop = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2113
    .restart local v9    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v10    # "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_1a
    :try_start_6
    iget v14, v10, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v10, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    .line 2114
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2115
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "oldChannel: useCount "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7

    .line 2165
    .end local v9    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v10    # "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :catch_1
    move-exception v4

    .line 2163
    .local v4, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_21

    .line 2164
    :goto_f
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "Could not create message channel"

    invoke-direct {v14, v15, v4}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 2136
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v9    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v10    # "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_1b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-nez v14, :cond_1c

    .line 2139
    :goto_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getRouter(Lgov2/nist/javax2/sip/message/SIPRequest;)Ljavax2/sip/address/Router;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/address/Router;->getOutboundProxy()Ljavax2/sip/address/Hop;

    move-result-object v11

    .line 2140
    .local v11, "outboundProxy":Ljavax2/sip/address/Hop;
    if-eqz v11, :cond_1d

    .line 2141
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v15

    invoke-interface {v11}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->firstTransactionPort:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v11}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v9

    .line 2144
    if-eqz v9, :cond_b

    .line 2145
    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object v14, v0

    invoke-virtual {v14, v9}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    goto/16 :goto_8

    .line 2137
    .end local v11    # "outboundProxy":Ljavax2/sip/address/Hop;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    const-string/jumbo v15, "Null message channel using outbound proxy !"

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_10

    .line 2140
    .restart local v11    # "outboundProxy":Ljavax2/sip/address/Hop;
    :cond_1d
    new-instance v14, Ljavax2/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No route found! hop="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2151
    .end local v11    # "outboundProxy":Ljavax2/sip/address/Hop;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "using message channel "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2157
    :cond_1f
    iget v14, v9, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v9, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    goto/16 :goto_9

    .line 2160
    :cond_20
    if-eqz v10, :cond_c

    iget v14, v10, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    if-gtz v14, :cond_c

    .line 2161
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/MessageChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_a

    .line 2163
    .end local v9    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v10    # "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v4    # "ex":Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v4}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 2173
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v9    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v10    # "oldChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :catch_2
    move-exception v6

    .line 2172
    .local v6, "ex":Ljavax2/sip/InvalidArgumentException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v14

    invoke-virtual {v6}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov2/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2183
    .end local v6    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local p1    # "clientTransactionId":Ljavax2/sip/ClientTransaction;
    :cond_22
    const/4 v14, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->byeSent:Z

    .line 2188
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2189
    sget v14, Ljavax2/sip/DialogState;->_TERMINATED:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_c

    .line 2194
    :catch_3
    move-exception v3

    .line 2193
    .local v3, "ex":Ljava/io/IOException;
    new-instance v14, Ljavax2/sip/SipException;

    const-string/jumbo v15, "error sending message"

    invoke-direct {v14, v15, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public setAssigned()V
    .locals 1

    .prologue
    .line 3077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAssigned:Z

    .line 3078
    return-void
.end method

.method public setDialogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 1373
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1374
    return-void
.end method

.method public setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V
    .locals 12
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .param p2, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    .line 2540
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v7

    iput-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->callIdHeader:Ljavax2/sip/header/CallIdHeader;

    .line 2541
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    .local v6, "statusCode":I
    const/16 v7, 0x64

    .line 2542
    if-eq v6, v7, :cond_3

    .line 2549
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 2550
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setAssigned()V

    .line 2552
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2557
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v7, v8, :cond_6

    .line 2571
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 2572
    .local v0, "cseqMethod":Ljava/lang/String;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2584
    :goto_1
    if-nez p1, :cond_b

    .line 2585
    :cond_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string/jumbo v7, "NOTIFY"

    .line 2686
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    :cond_1
    :goto_2
    const-string/jumbo v7, "BYE"

    .line 2695
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 2801
    :cond_2
    :goto_3
    return-void

    .line 2543
    .end local v0    # "cseqMethod":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2546
    :goto_4
    return-void

    .line 2544
    :cond_4
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Invalid status code - 100 in setLastResponse - ignoring"

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_4

    .line 2553
    :cond_5
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sipDialog: setLastResponse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " lastResponse = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 2558
    :cond_6
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2564
    :goto_5
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2569
    :cond_7
    :goto_6
    return-void

    .line 2559
    :cond_8
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "sipDialog: setLastResponse -- dialog is terminated - ignoring "

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const/16 v7, 0xc8

    .line 2564
    if-ne v6, v7, :cond_7

    .line 2566
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v8

    iget-wide v10, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto :goto_6

    .line 2573
    .restart local v0    # "cseqMethod":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    .line 2574
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cseqMethod = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2575
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dialogState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2576
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2577
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "statusCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2578
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2584
    :cond_b
    instance-of v7, p1, Ljavax2/sip/ClientTransaction;

    if-nez v7, :cond_0

    const-string/jumbo v7, "BYE"

    .line 2703
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 2711
    :cond_c
    const/4 v1, 0x0

    .line 2713
    .local v1, "doPutDialog":Z
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_25

    .line 2720
    :cond_d
    :goto_7
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_26

    .line 2764
    iget v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    sget v8, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    if-le v7, v8, :cond_2b

    .line 2771
    :goto_8
    if-nez v1, :cond_2e

    .line 2779
    :goto_9
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq v7, v8, :cond_2

    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    const-string/jumbo v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v7, :cond_2

    .line 2786
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2787
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 2791
    :goto_a
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    .line 2792
    return-void

    .line 2587
    .end local v1    # "doPutDialog":Z
    :cond_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 2602
    :cond_f
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_15

    .line 2616
    :cond_10
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-eq v7, v8, :cond_18

    const/16 v7, 0x12c

    .line 2640
    if-ge v6, v7, :cond_1d

    .line 2668
    :cond_11
    :goto_b
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    if-eq v7, v8, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v7, v8, :cond_2

    .line 2670
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-eqz v7, :cond_2

    .line 2671
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->originalRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov2/nist/javax2/sip/header/RecordRouteList;

    move-result-object v5

    .line 2672
    .local v5, "rrList":Lgov2/nist/javax2/sip/header/RecordRouteList;
    if-eqz v5, :cond_2

    .line 2673
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/RecordRouteList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Lgov2/nist/javax2/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2674
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/RecordRoute;>;"
    :goto_c
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2675
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/RecordRoute;

    .line 2676
    .local v4, "rr":Lgov2/nist/javax2/sip/header/RecordRoute;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/RouteList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/Route;

    .line 2677
    .local v3, "route":Lgov2/nist/javax2/sip/header/Route;
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RecordRoute;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v7

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax2/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2678
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->routeList:Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/RouteList;->removeFirst()V

    goto :goto_c

    .line 2587
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/RecordRoute;>;"
    .end local v3    # "route":Lgov2/nist/javax2/sip/header/Route;
    .end local v4    # "rr":Lgov2/nist/javax2/sip/header/RecordRoute;
    .end local v5    # "rrList":Lgov2/nist/javax2/sip/header/RecordRouteList;
    :cond_12
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 2594
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    .line 2595
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    :cond_13
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_11

    .line 2597
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2598
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2599
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 2600
    invoke-direct {p0, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPResponse;)V

    goto :goto_b

    .line 2595
    :cond_14
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-nez v7, :cond_13

    goto/16 :goto_b

    .line 2602
    :cond_15
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    invoke-virtual {v7, v8}, Ljavax2/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 2609
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 2611
    :cond_16
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2612
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2613
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 2614
    invoke-direct {p0, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPResponse;)V

    goto/16 :goto_b

    .line 2609
    :cond_17
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-nez v7, :cond_16

    goto/16 :goto_b

    .line 2623
    :cond_18
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    :cond_19
    :goto_d
    const-string/jumbo v7, "INVITE"

    .line 2635
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2636
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v8

    iget-wide v10, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto/16 :goto_b

    .line 2623
    :cond_1a
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    :cond_1b
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    if-eq v7, v8, :cond_19

    .line 2626
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2627
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2628
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 2629
    invoke-direct {p0, p2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 2631
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto :goto_d

    .line 2623
    :cond_1c
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-nez v7, :cond_1b

    goto :goto_d

    :cond_1d
    const/16 v7, 0x2bb

    .line 2640
    if-gt v6, v7, :cond_11

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_1f

    .line 2651
    :cond_1e
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_b

    .line 2640
    :cond_1f
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    invoke-virtual {v7}, Ljavax2/sip/DialogState;->getValue()I

    move-result v7

    sget v8, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    if-eq v7, v8, :cond_1e

    goto/16 :goto_b

    .line 2686
    :cond_20
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SUBSCRIBE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    :cond_21
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2691
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2692
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 2693
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_3

    .line 2686
    :cond_22
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "REFER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto/16 :goto_2

    .line 2695
    :cond_23
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2698
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_3

    .line 2703
    :cond_24
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2709
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_3

    .line 2713
    .restart local v1    # "doPutDialog":Z
    :cond_25
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2715
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 2717
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 2721
    :cond_26
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-eq v7, v8, :cond_27

    const/16 v7, 0x1e9

    .line 2740
    if-eq v6, v7, :cond_28

    .line 2752
    :goto_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isReInvite()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    if-eq v7, v8, :cond_2

    .line 2753
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_3

    .line 2722
    :cond_27
    if-eqz v1, :cond_2

    .line 2724
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    .line 2725
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2726
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_3

    :cond_28
    const-string/jumbo v7, "NOTIFY"

    .line 2740
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 2743
    :cond_29
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2744
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "RFC 3265 : Not setting dialog to TERMINATED for 489"

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2a
    const-string/jumbo v7, "SUBSCRIBE"

    .line 2740
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    goto :goto_e

    :cond_2b
    const-string/jumbo v7, "INVITE"

    .line 2764
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 2768
    :cond_2c
    sget v7, Lgov2/nist/javax2/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_8

    :cond_2d
    const-string/jumbo v7, "SUBSCRIBE"

    .line 2764
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string/jumbo v7, "REFER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    goto/16 :goto_8

    .line 2772
    :cond_2e
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2773
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_9

    .line 2788
    :cond_2f
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Delete dialog -- cannot acquire ackSem"

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public setRemoteSequenceNumber(J)V
    .locals 3
    .param p1, "rCseq"    # J

    .prologue
    .line 1648
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    :goto_0
    iput-wide p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 1651
    return-void

    .line 1649
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteSeqno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setRemoteTarget(Ljavax2/sip/header/ContactHeader;)V
    .locals 3
    .param p1, "contact"    # Ljavax2/sip/header/ContactHeader;

    .prologue
    .line 836
    invoke-interface {p1}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteTarget:Ljavax2/sip/address/Address;

    .line 837
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dialog.setRemoteTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->remoteTarget:Ljavax2/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method public setResponseTags(Lgov2/nist/javax2/sip/message/SIPResponse;)V
    .locals 3
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    .line 2513
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2514
    :cond_0
    return-void

    .line 2513
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2516
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, "responseFromTag":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 2524
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2529
    :cond_2
    :goto_0
    return-void

    .line 2518
    :cond_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2520
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2521
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_0

    .line 2519
    :cond_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_0

    .line 2525
    :cond_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "No from tag in response! Not RFC 3261 compatible."

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setRetransmissionTicks()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2215
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    .line 2216
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    .line 2217
    return-void
.end method

.method setStack(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V
    .locals 0
    .param p1, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 1054
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 1056
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1233
    :cond_0
    :goto_0
    iput p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    .line 1235
    sget v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-eq p1, v0, :cond_2

    .line 1242
    :goto_1
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting dialog state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    const/4 v0, -0x1

    .line 1224
    if-eq p1, v0, :cond_0

    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I

    if-eq p1, v0, :cond_0

    .line 1225
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  old dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  New dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljavax2/sip/DialogState;->getObject(I)Ljavax2/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1239
    :goto_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->stopTimer()V

    goto/16 :goto_1

    .line 1237
    :cond_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2
.end method

.method public startRetransmitTimer(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Ljavax2/sip/message/Response;)V
    .locals 2
    .param p1, "sipServerTx"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .param p2, "response"    # Ljavax2/sip/message/Response;

    .prologue
    .line 2810
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2814
    :cond_0
    :goto_0
    return-void

    .line 2810
    :cond_1
    invoke-interface {p2}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2812
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->startTimer(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto :goto_0
.end method

.method protected startTimer(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/4 v3, 0x0

    .line 2259
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    if-nez v0, :cond_1

    .line 2264
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2266
    :goto_0
    iput-boolean v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSeen:Z

    .line 2268
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 2270
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    if-nez v0, :cond_4

    .line 2273
    new-instance v0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    invoke-direct {v0, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;-><init>(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    .line 2274
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2281
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setRetransmissionTicks()V

    .line 2282
    return-void

    .line 2259
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-ne v0, p1, :cond_0

    .line 2260
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2262
    :goto_2
    return-void

    .line 2261
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timer already running for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 2265
    :cond_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting dialog timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 2271
    :cond_4
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    iput-object p1, v0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2279
    :catchall_0
    move-exception v0

    .line 2278
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v0
.end method

.method protected stopTimer()V
    .locals 1

    .prologue
    .line 2289
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->acquireTimerTaskSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 2296
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2300
    :goto_1
    return-void

    .line 2292
    :cond_0
    :try_start_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 2293
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2297
    :catchall_0
    move-exception v0

    .line 2296
    :try_start_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2299
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method takeAckSem()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3195
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3199
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3213
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    .line 3224
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 3196
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[takeAckSem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 3200
    :cond_1
    :try_start_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3204
    :goto_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3210
    :goto_3
    return v5

    .line 3201
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "Cannot aquire ACK semaphore"

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3223
    :catch_0
    move-exception v0

    .line 3219
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3221
    :goto_4
    return v5

    .line 3205
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Semaphore previously acquired at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3207
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_3

    .line 3215
    :cond_4
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->recordStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3220
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v2, "Cannot aquire ACK semaphore"

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_4
.end method

.method declared-synchronized testAndSetIsDialogTerminatedEventDelivered()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 1119
    :try_start_0
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z

    .line 1120
    .local v0, "retval":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1121
    return v0

    .end local v0    # "retval":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
