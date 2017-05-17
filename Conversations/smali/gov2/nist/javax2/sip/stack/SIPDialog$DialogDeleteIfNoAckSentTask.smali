.class Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogDeleteIfNoAckSentTask"
.end annotation


# instance fields
.field private seqno:J

.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPDialog;J)V
    .locals 0
    .param p2, "seqno"    # J

    .prologue
    .line 508
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 509
    iput-wide p2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    .line 510
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x0

    .line 513
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$900(Lgov2/nist/javax2/sip/stack/SIPDialog;)J

    move-result-wide v6

    iget-wide v8, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_2

    .line 519
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # setter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    invoke-static {v4, v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$1002(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    .line 520
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->isBackToBackUserAgent:Z
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$1100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 529
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 531
    :goto_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v4

    instance-of v4, v4, Lgov2/nist/javax2/sip/SipListenerExt;

    if-nez v4, :cond_6

    .line 540
    :try_start_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    const-string/jumbo v5, "BYE"

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v1

    .line 541
    .local v1, "byeRequest":Ljavax2/sip/message/Request;
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v4

    if-nez v4, :cond_7

    .line 545
    :goto_1
    new-instance v3, Lgov2/nist/javax2/sip/header/Reason;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/Reason;-><init>()V

    .local v3, "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    const-string/jumbo v4, "SIP"

    .line 546
    invoke-interface {v3, v4}, Ljavax2/sip/header/ReasonHeader;->setProtocol(Ljava/lang/String;)V

    const/16 v4, 0x401

    .line 547
    invoke-interface {v3, v4}, Ljavax2/sip/header/ReasonHeader;->setCause(I)V

    const-string/jumbo v4, "Timed out waiting to send ACK"

    .line 548
    invoke-interface {v3, v4}, Ljavax2/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    .line 549
    invoke-interface {v1, v3}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 550
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v0

    .line 552
    .local v0, "byeCtx":Ljavax2/sip/ClientTransaction;
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v4, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendRequest(Ljavax2/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    return-void

    .line 521
    .end local v0    # "byeCtx":Ljavax2/sip/ClientTransaction;
    .end local v1    # "byeRequest":Ljavax2/sip/message/Request;
    .end local v3    # "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    :cond_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 523
    :goto_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v4

    instance-of v4, v4, Lgov2/nist/javax2/sip/SipListenerExt;

    if-nez v4, :cond_4

    .line 526
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    .line 560
    :cond_2
    :goto_3
    return-void

    .line 522
    :cond_3
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "ACK Was not sent. killing dialog"

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_2

    .line 524
    :cond_4
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # invokes: Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v4, v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$200(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V

    goto :goto_3

    .line 530
    :cond_5
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "ACK Was not sent. Sending BYE"

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_6
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # invokes: Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v4, v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$200(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V

    goto :goto_3

    .line 542
    .restart local v1    # "byeRequest":Ljavax2/sip/message/Request;
    :cond_7
    :try_start_1
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v4

    invoke-interface {v1, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 553
    .end local v1    # "byeRequest":Ljavax2/sip/message/Request;
    :catch_0
    move-exception v2

    .line 555
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    goto :goto_3
.end method
