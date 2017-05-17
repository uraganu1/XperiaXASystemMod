.class public Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
.super Lgov2/nist/javax2/sip/stack/SIPTransaction;
.source "SIPClientTransaction.java"

# interfaces
.implements Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
.implements Ljavax2/sip/ClientTransaction;
.implements Lgov2/nist/javax2/sip/ClientTransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;
    }
.end annotation


# instance fields
.field private callingStateTimeoutCount:I

.field private defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

.field private lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

.field private nextHop:Ljavax2/sip/address/Hop;

.field private notifyOnRetransmit:Z

.field private transient respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

.field private sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutIfStillInCallingState:Z

.field private viaHost:Ljava/lang/String;

.field private viaPort:I


# direct methods
.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 3
    .param p1, "newSIPStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1, p2}, Lgov2/nist/javax2/sip/stack/SIPTransaction;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    .line 290
    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    .line 291
    iget-object v0, p2, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 292
    invoke-virtual {p0, p2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov2/nist/javax2/sip/stack/MessageChannel;)V

    .line 293
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    .line 294
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    .line 301
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 307
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating clientTransaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0
.end method

.method private final createErrorAck()Ljavax2/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1202
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v0

    .line 1203
    .local v0, "originalRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-eqz v1, :cond_2

    .line 1208
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    .line 1214
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/To;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createErrorAck(Lgov2/nist/javax2/sip/header/To;)Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    return-object v1

    .line 1203
    :cond_0
    new-instance v1, Ljavax2/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1205
    :cond_1
    new-instance v1, Ljavax2/sip/SipException;

    const-string/jumbo v2, "Can only ACK an INVITE!"

    invoke-direct {v1, v2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1207
    :cond_2
    new-instance v1, Ljavax2/sip/SipException;

    const-string/jumbo v2, "bad Transaction state"

    invoke-direct {v1, v2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1209
    :cond_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1212
    :goto_0
    new-instance v1, Ljavax2/sip/SipException;

    const-string/jumbo v2, "Cannot ACK a provisional response!"

    invoke-direct {v1, v2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    :cond_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lastResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private inviteClientTransaction(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 8
    .param p1, "transactionResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x2bb

    const/16 v5, 0x12c

    .line 718
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    .line 720
    .local v2, "statusCode":I
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 748
    sget-object v3, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 818
    sget-object v3, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_11

    .line 864
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_19

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const/4 v0, 0x0

    .line 722
    .local v0, "ackAlreadySent":Z
    if-nez p3, :cond_4

    .line 732
    :cond_2
    :goto_1
    if-nez p3, :cond_5

    .line 746
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    .line 747
    return-void

    .line 722
    :cond_4
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 723
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    const/4 v0, 0x1

    goto :goto_1

    .line 732
    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 737
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 740
    :goto_3
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->resendAck()V

    goto :goto_2

    .line 743
    :catch_0
    move-exception v3

    goto :goto_2

    .line 738
    :cond_6
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "resending ACK"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax2/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 749
    .end local v0    # "ackAlreadySent":Z
    :cond_7
    div-int/lit8 v3, v2, 0x64

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 765
    div-int/lit8 v3, v2, 0x64

    if-eq v3, v7, :cond_c

    .line 776
    if-gt v5, v2, :cond_0

    if-gt v2, v6, :cond_0

    .line 780
    :try_start_1
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax2/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 799
    :cond_8
    :goto_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v3, :cond_e

    .line 802
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    .line 805
    :goto_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    if-nez v3, :cond_f

    .line 810
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 815
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_0

    .line 754
    :cond_a
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    .line 755
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    .line 756
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 759
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v3, :cond_b

    .line 762
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 760
    :cond_b
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    .line 766
    :cond_c
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    .line 767
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    .line 768
    sget-object v3, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 770
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v3, :cond_d

    .line 773
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 771
    :cond_d
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    .line 788
    :catch_1
    move-exception v1

    .line 783
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 784
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Unexpected Exception sending ACK -- sending error AcK "

    invoke-interface {v3, v4, v1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 800
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_e
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_5

    .line 805
    :cond_f
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 807
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseAckSem()V

    goto :goto_6

    .line 811
    :cond_10
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 812
    iget v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->TIMER_D:I

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_0

    .line 819
    :cond_11
    div-int/lit8 v3, v2, 0x64

    if-eq v3, v7, :cond_12

    .line 825
    div-int/lit8 v3, v2, 0x64

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    .line 833
    if-gt v5, v2, :cond_0

    if-gt v2, v6, :cond_0

    .line 836
    :try_start_2
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax2/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 841
    :goto_7
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    if-nez v3, :cond_16

    .line 845
    :goto_8
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 849
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 853
    :goto_9
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v3, :cond_18

    .line 856
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 820
    :cond_12
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v3, :cond_13

    .line 823
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 821
    :cond_13
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    .line 826
    :cond_14
    sget-object v3, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 827
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v3, :cond_15

    .line 830
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 828
    :cond_15
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    .line 839
    :catch_2
    move-exception v1

    .line 838
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_7

    .line 842
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_16
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->releaseAckSem()V

    goto :goto_8

    .line 846
    :cond_17
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 847
    iget v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->TIMER_D:I

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_9

    .line 854
    :cond_18
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    .line 865
    :cond_19
    if-gt v5, v2, :cond_0

    if-gt v2, v6, :cond_0

    .line 868
    :try_start_3
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax2/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 872
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 873
    :catch_3
    move-exception v1

    .line 870
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 872
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0

    .line 873
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 872
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    throw v3
.end method

.method private nonInviteClientTransaction(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 6
    .param p1, "transactionResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;
    .param p3, "sipDialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2bb

    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 602
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    .line 603
    .local v0, "statusCode":I
    sget-object v1, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 629
    sget-object v1, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 652
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 655
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    .line 657
    :cond_0
    :goto_1
    return-void

    .line 604
    :cond_1
    div-int/lit8 v1, v0, 0x64

    if-eq v1, v3, :cond_2

    .line 615
    if-gt v4, v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 617
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v1, :cond_4

    .line 620
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    .line 622
    :goto_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 626
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_1

    .line 605
    :cond_2
    sget-object v1, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    const/16 v1, 0x8

    .line 606
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableRetransmissionTimer(I)V

    const/16 v1, 0x40

    .line 607
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    .line 610
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v1, :cond_3

    .line 613
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_1

    .line 611
    :cond_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_1

    .line 618
    :cond_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_2

    .line 623
    :cond_5
    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 624
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->TIMER_K:I

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_1

    .line 630
    :cond_6
    div-int/lit8 v1, v0, 0x64

    if-eq v1, v3, :cond_7

    .line 636
    if-gt v4, v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 637
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v1, :cond_9

    .line 640
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    .line 642
    :goto_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    .line 643
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    .line 644
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 648
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_1

    .line 631
    :cond_7
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    if-nez v1, :cond_8

    .line 634
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_1

    .line 632
    :cond_8
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_1

    .line 638
    :cond_9
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_3

    .line 645
    :cond_a
    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 646
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->TIMER_K:I

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_1

    .line 653
    :cond_b
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Not sending response to TU! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkFromTag(Lgov2/nist/javax2/sip/message/SIPResponse;)Z
    .locals 5
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1321
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "originalFromTag":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    if-nez v1, :cond_1

    .line 1335
    :cond_0
    return v3

    .line 1323
    :cond_1
    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    xor-int/2addr v1, v4

    if-nez v1, :cond_4

    .line 1328
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1330
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1332
    :goto_2
    return v2

    :cond_2
    move v1, v3

    .line 1323
    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    .line 1324
    :cond_4
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1326
    :goto_3
    return v2

    .line 1325
    :cond_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v3, "From tag mismatch -- dropping response"

    invoke-interface {v1, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 1331
    :cond_6
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    const-string/jumbo v3, "From tag mismatch -- dropping response"

    invoke-interface {v1, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public clearState()V
    .locals 0

    .prologue
    .line 1266
    return-void
.end method

.method public createCancel()Ljavax2/sip/message/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1099
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v1

    .line 1100
    .local v1, "originalRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    if-eqz v1, :cond_0

    .line 1101
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1107
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createCancelRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v0

    .line 1108
    .local v0, "cancelRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v0, p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setInviteTransaction(Ljava/lang/Object;)V

    .line 1109
    return-object v0

    .line 1100
    .end local v0    # "cancelRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_0
    new-instance v2, Ljavax2/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_1
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Only INIVTE may be cancelled"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1105
    :cond_2
    new-instance v2, Ljavax2/sip/SipException;

    const-string/jumbo v3, "Cannot Cancel ACK!"

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected fireRetransmissionTimer()V
    .locals 11

    .prologue
    .line 979
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMapped:Z

    if-eqz v9, :cond_0

    .line 981
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v2

    .line 982
    .local v2, "inv":Z
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    .line 989
    .local v3, "s":Ljavax2/sip/TransactionState;
    if-nez v2, :cond_4

    :cond_2
    if-eqz v2, :cond_7

    .line 1032
    .end local v2    # "inv":Z
    .end local v3    # "s":Ljavax2/sip/TransactionState;
    :cond_3
    :goto_0
    return-void

    .line 989
    .restart local v2    # "inv":Z
    .restart local v3    # "s":Ljavax2/sip/TransactionState;
    :cond_4
    sget-object v9, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    if-ne v9, v3, :cond_2

    .line 995
    :cond_5
    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-eqz v9, :cond_3

    .line 996
    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v9, v9, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-nez v9, :cond_8

    .line 1007
    :cond_6
    :goto_1
    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-super {p0, v9}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 1008
    iget-boolean v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    if-nez v9, :cond_9

    .line 1013
    :goto_2
    iget-boolean v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v9

    sget-object v10, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    if-ne v9, v10, :cond_3

    .line 1015
    iget v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    .line 1016
    iget v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    if-nez v9, :cond_3

    .line 1017
    new-instance v7, Ljavax2/sip/TimeoutEvent;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v9

    sget-object v10, Ljavax2/sip/Timeout;->RETRANSMIT:Ljavax2/sip/Timeout;

    invoke-direct {v7, v9, p0, v10}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Timeout;)V

    .line 1019
    .local v7, "timeoutEvent":Ljavax2/sip/TimeoutEvent;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v9

    invoke-virtual {v9, v7, p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1020
    const/4 v9, 0x0

    iput-boolean v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1030
    .end local v2    # "inv":Z
    .end local v3    # "s":Ljavax2/sip/TransactionState;
    .end local v7    # "timeoutEvent":Ljavax2/sip/TimeoutEvent;
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->raiseIOExceptionEvent()V

    const/4 v9, 0x2

    .line 1029
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    goto :goto_0

    .line 989
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "inv":Z
    .restart local v3    # "s":Ljavax2/sip/TransactionState;
    :cond_7
    :try_start_1
    sget-object v9, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    if-eq v9, v3, :cond_5

    sget-object v9, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    if-eq v9, v3, :cond_5

    goto :goto_0

    .line 996
    :cond_8
    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    const-string/jumbo v10, "Timestamp"

    invoke-virtual {v9, v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 999
    .local v4, "milisec":J
    new-instance v6, Lgov2/nist/javax2/sip/header/TimeStamp;

    invoke-direct {v6}, Lgov2/nist/javax2/sip/header/TimeStamp;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1001
    .local v6, "timeStamp":Lgov2/nist/javax2/sip/header/TimeStamp;
    long-to-float v9, v4

    :try_start_2
    invoke-virtual {v6, v9}, Lgov2/nist/javax2/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_2
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1005
    :goto_3
    :try_start_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v9, v6}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1

    .line 1004
    :catch_1
    move-exception v1

    .line 1003
    .local v1, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1009
    .end local v1    # "ex":Ljavax2/sip/InvalidArgumentException;
    .end local v4    # "milisec":J
    .end local v6    # "timeStamp":Lgov2/nist/javax2/sip/header/TimeStamp;
    :cond_9
    new-instance v8, Ljavax2/sip/TimeoutEvent;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v9

    sget-object v10, Ljavax2/sip/Timeout;->RETRANSMIT:Ljavax2/sip/Timeout;

    invoke-direct {v8, v9, p0, v10}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Timeout;)V

    .line 1011
    .local v8, "txTimeout":Ljavax2/sip/TimeoutEvent;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v9

    invoke-virtual {v9, v8, p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    .prologue
    .line 1039
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1042
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1043
    .local v0, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    sget-object v2, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1048
    :cond_0
    if-nez v0, :cond_5

    .line 1058
    :goto_1
    if-nez v0, :cond_8

    .line 1068
    :cond_1
    :goto_2
    sget-object v2, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    if-ne v2, v3, :cond_9

    .line 1089
    sget-object v2, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1092
    :cond_2
    :goto_3
    return-void

    .line 1040
    .end local v0    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fireTimeoutTimer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    .restart local v0    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_4
    sget-object v2, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-object v2, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 1048
    :cond_5
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1050
    :cond_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1056
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    goto :goto_2

    .line 1048
    :cond_7
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    if-eq v2, v3, :cond_6

    goto :goto_1

    .line 1061
    :cond_8
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BYE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    goto :goto_2

    :cond_9
    const/4 v2, 0x1

    .line 1069
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    .line 1071
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1072
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1074
    .local v1, "inviteTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    if-ne v2, v3, :cond_b

    :cond_a
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1083
    sget-object v2, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_3

    .line 1074
    :cond_b
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    if-eq v2, v3, :cond_a

    goto/16 :goto_3
.end method

.method public getDefaultDialog()Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    return-object v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 1481
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1482
    .local v0, "retval":Lgov2/nist/javax2/sip/stack/SIPDialog;
    return-object v0
.end method

.method public getDialog()Ljavax2/sip/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1455
    .local v1, "retval":Ljavax2/sip/Dialog;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    if-nez v2, :cond_1

    .line 1461
    .end local v1    # "retval":Ljavax2/sip/Dialog;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1465
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1470
    :goto_2
    return-object v1

    .line 1455
    .restart local v1    # "retval":Ljavax2/sip/Dialog;
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    .line 1457
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "dialogId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v1

    .local v1, "retval":Ljavax2/sip/Dialog;
    goto :goto_0

    .line 1462
    .end local v0    # "dialogId":Ljava/lang/String;
    .end local v1    # "retval":Ljavax2/sip/Dialog;
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .restart local v1    # "retval":Ljavax2/sip/Dialog;
    goto :goto_1

    .line 1466
    .end local v1    # "retval":Ljavax2/sip/Dialog;
    :cond_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " sipDialogs =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " default dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " retval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getNextHop()Ljavax2/sip/address/Hop;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->nextHop:Ljavax2/sip/address/Hop;

    return-object v0
.end method

.method public getOutgoingViaHeader()Lgov2/nist/javax2/sip/header/Via;
    .locals 1

    .prologue
    .line 1249
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getViaHeader()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public isMessagePartOfTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;)Z
    .locals 8
    .param p1, "messageToTest"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 346
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v3

    .line 349
    .local v3, "viaHeaders":Lgov2/nist/javax2/sip/header/ViaList;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "messageBranch":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v1, v6

    .line 357
    .local v1, "rfc3261Compliant":Z
    :goto_0
    const/4 v2, 0x0

    .line 358
    .local v2, "transactionMatches":Z
    sget-object v4, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v7

    if-eq v4, v7, :cond_3

    .line 366
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isTerminated()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    .end local v2    # "transactionMatches":Z
    :cond_1
    :goto_1
    return v2

    .line 350
    .end local v1    # "rfc3261Compliant":Z
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "z9hg4bk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "z9hg4bk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    goto :goto_0

    .line 359
    .restart local v1    # "rfc3261Compliant":Z
    .restart local v2    # "transactionMatches":Z
    :cond_3
    if-nez v1, :cond_4

    .line 364
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "transactionMatches":Z
    goto :goto_1

    .line 360
    .local v2, "transactionMatches":Z
    :cond_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move v2, v6

    .local v2, "transactionMatches":Z
    :goto_2
    goto :goto_1

    .local v2, "transactionMatches":Z
    :cond_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v5

    goto :goto_2

    .line 367
    :cond_7
    if-nez v1, :cond_8

    .line 379
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 383
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .local v2, "transactionMatches":Z
    goto :goto_1

    .line 368
    .local v2, "transactionMatches":Z
    :cond_8
    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "transactionMatches":Z
    goto/16 :goto_1

    .line 380
    .local v2, "transactionMatches":Z
    :cond_9
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .local v2, "transactionMatches":Z
    goto/16 :goto_1
.end method

.method public processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 10
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1351
    .local v2, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 1352
    .local v6, "method":Ljava/lang/String;
    invoke-virtual {p1, v8}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .local v3, "dialogId":Ljava/lang/String;
    const-string/jumbo v7, "CANCEL"

    .line 1353
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1361
    :cond_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    .line 1365
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 1443
    invoke-virtual {v2, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 1445
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 1446
    return-void

    .line 1353
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_2
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    if-eqz v7, :cond_0

    .line 1356
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1357
    .local v5, "ict":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-eqz v5, :cond_1

    .line 1358
    iget-object v2, v5, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .local v2, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto :goto_0

    .line 1366
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v5    # "ict":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_3
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    .local v0, "code":I
    const/16 v7, 0x64

    .line 1367
    if-gt v0, v7, :cond_5

    .line 1440
    :cond_4
    :goto_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto :goto_1

    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_5
    const/16 v7, 0x12c

    .line 1367
    if-ge v0, v7, :cond_4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    :cond_6
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-static {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1380
    monitor-enter p0

    .line 1385
    :try_start_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    if-nez v7, :cond_9

    .line 1433
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    if-nez v7, :cond_11

    .line 1438
    :cond_7
    :goto_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1367
    :cond_8
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isRfc2543Supported()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 1386
    :cond_9
    :try_start_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    .line 1428
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Response without from-tag"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1387
    :cond_a
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v4

    .line 1388
    .local v4, "dialogResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "defaultDialogId":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 1395
    :cond_b
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v7, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 1396
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1419
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_c
    :goto_4
    if-nez v2, :cond_10

    .line 1422
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1423
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "dialog is unexpectedly null"

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v7, v8, v9}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_d
    const-string/jumbo v7, "SUBSCRIBE"

    .line 1389
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1406
    :cond_e
    :goto_5
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    .line 1407
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v2, :cond_c

    .line 1408
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAssigned()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1413
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createDialog(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    goto :goto_4

    .line 1389
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_f
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "NOTIFY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_5

    .line 1420
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_10
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1434
    .end local v1    # "defaultDialogId":Ljava/lang/String;
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v4    # "dialogResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_11
    iget-object v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->createDialog(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    .line 1435
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public declared-synchronized processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 4
    .param p1, "transactionResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    monitor-enter p0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 505
    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 510
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 517
    :goto_1
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastResponse:Lgov2/nist/javax2/sip/message/SIPResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :try_start_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_5

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->nonInviteClientTransaction(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    .line 538
    return-void

    :cond_1
    monitor-exit p0

    .line 502
    return-void

    .line 505
    :cond_2
    :try_start_2
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    .line 507
    return-void

    .line 511
    :cond_4
    :try_start_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 530
    :cond_5
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->inviteClientTransaction(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 537
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 535
    :goto_3
    sget-object v1, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    const/4 v1, 0x2

    .line 536
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    goto :goto_2

    .line 534
    :cond_6
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 8
    .param p1, "messageToSend"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 405
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object v3, v0

    .line 408
    .local v3, "transactionRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/Via;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .local v2, "topVia":Lgov2/nist/javax2/sip/header/Via;
    :try_start_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov2/nist/javax2/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :goto_0
    :try_start_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 420
    :goto_1
    sget-object v4, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 423
    :cond_0
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 445
    :goto_2
    :try_start_3
    iput-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->lastRequest:Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 446
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 473
    :goto_3
    invoke-super {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    iput-boolean v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 483
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    .line 487
    return-void

    .line 416
    :cond_1
    :try_start_4
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sending Message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TransactionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 485
    .end local v2    # "topVia":Lgov2/nist/javax2/sip/header/Via;
    .end local v3    # "transactionRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :catchall_0
    move-exception v4

    .line 482
    iput-boolean v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 483
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    throw v4

    .line 420
    .restart local v2    # "topVia":Lgov2/nist/javax2/sip/header/Via;
    .restart local v3    # "transactionRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_2
    :try_start_5
    sget-object v4, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    goto :goto_2

    .line 427
    :cond_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 430
    sget-object v4, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 436
    :goto_4
    invoke-super {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 482
    iput-boolean v7, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 483
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    return-void

    .line 428
    :cond_4
    :try_start_6
    sget-object v4, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 449
    :cond_5
    :try_start_7
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 453
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 455
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 459
    sget-object v4, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 461
    :goto_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 464
    :goto_6
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x40

    .line 467
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 480
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v4, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 478
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 454
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_9
    sget-object v4, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_5

    .line 457
    :cond_7
    sget-object v4, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_5

    .line 462
    :cond_8
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableRetransmissionTimer()V

    goto :goto_6

    :cond_9
    const/16 v4, 0x40

    .line 465
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 413
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public sendRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v4

    .line 887
    .local v4, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v5

    if-nez v5, :cond_5

    .line 889
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 894
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SUBSCRIBE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 917
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 937
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "BYE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 939
    :cond_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v1

    .line 942
    .local v1, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v5

    if-nez v5, :cond_d

    .line 949
    .end local v1    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "INVITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 960
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 961
    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    return-void

    .line 887
    :cond_5
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "Request already sent"

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 890
    :cond_6
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendRequest() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 899
    :catch_0
    move-exception v3

    .line 896
    .local v3, "ex":Ljava/text/ParseException;
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 898
    :goto_3
    new-instance v5, Ljavax2/sip/SipException;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 897
    :cond_7
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "missing required header"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_3

    .end local v3    # "ex":Ljava/text/ParseException;
    :cond_8
    const-string/jumbo v5, "Expires"

    .line 901
    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    if-nez v5, :cond_0

    .line 907
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 908
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Expires header missing in outgoing subscribe -- Notifier will assume implied value on event package"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 917
    :cond_9
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isCancelClientTransactionChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->findCancelTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 921
    .local v0, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-eqz v0, :cond_a

    .line 929
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 932
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "INVITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 933
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "Cannot cancel non-invite requests RFC 3261 9.1"

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 967
    .end local v0    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :catch_1
    move-exception v2

    .line 964
    .local v2, "ex":Ljava/io/IOException;
    sget-object v5, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 965
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "IO Error sending request"

    invoke-direct {v5, v6, v2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 928
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_a
    :try_start_3
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "Could not find original tx to cancel. RFC 3261 9.1"

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 930
    :cond_b
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "State is null no provisional response yet -- cannot cancel RFC 3261 9.1"

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 937
    .end local v0    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_c
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NOTIFY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 942
    .restart local v1    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_d
    if-eqz v1, :cond_3

    .line 943
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "Dialog is present and AutomaticDialogSupport is enabled for  the provider -- Send the Request using the Dialog.sendRequest(transaction)"

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 950
    .end local v1    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v1

    .line 952
    .restart local v1    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 954
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v5

    if-nez v5, :cond_4

    .line 955
    new-instance v5, Ljavax2/sip/SipException;

    const-string/jumbo v6, "Failed to take ACK semaphore"

    invoke-direct {v5, v6}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "sipDialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 1493
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1497
    :goto_0
    if-eqz p1, :cond_3

    .line 1501
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    if-eqz v0, :cond_5

    .line 1507
    :cond_0
    :goto_1
    if-nez p2, :cond_6

    .line 1512
    :cond_1
    :goto_2
    return-void

    .line 1494
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sipDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1499
    :goto_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "bad dialog null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_4
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "NULL DIALOG!!"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_3

    .line 1502
    :cond_5
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->defaultDialog:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 1503
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addForkedClientTransaction(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V

    goto :goto_1

    .line 1507
    :cond_6
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public setNextHop(Ljavax2/sip/address/Hop;)V
    .locals 0
    .param p1, "hop"    # Ljavax2/sip/address/Hop;

    .prologue
    .line 1524
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->nextHop:Ljavax2/sip/address/Hop;

    .line 1526
    return-void
.end method

.method public setResponseInterface(Lgov2/nist/javax2/sip/stack/ServerResponseInterface;)V
    .locals 3
    .param p1, "newRespondTo"    # Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    .prologue
    .line 315
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->respondTo:Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    .line 326
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting response interface for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 318
    if-nez p1, :cond_0

    .line 319
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    .line 320
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "WARNING -- setting to null!"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setState(Ljavax2/sip/TransactionState;)V
    .locals 2
    .param p1, "newState"    # Ljavax2/sip/TransactionState;

    .prologue
    .line 1276
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq p1, v0, :cond_1

    .line 1283
    :cond_0
    :goto_0
    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v0

    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    if-ne v0, v1, :cond_2

    .line 1287
    :goto_1
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 1288
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v0, :cond_0

    const/16 v0, 0x40

    .line 1280
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->collectionTime:I

    goto :goto_0

    .line 1283
    :cond_2
    sget-object v0, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    if-ne p1, v0, :cond_4

    .line 1285
    :cond_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->decrementActiveClientTransactionCount()V

    goto :goto_1

    .line 1283
    :cond_4
    sget-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq p1, v0, :cond_3

    goto :goto_1
.end method

.method protected setViaHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1228
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    .line 1229
    return-void
.end method

.method protected setViaPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1221
    iput p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->viaPort:I

    .line 1222
    return-void
.end method

.method protected startTransactionTimer()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1294
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;

    invoke-direct {v1, p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V

    .line 1296
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
