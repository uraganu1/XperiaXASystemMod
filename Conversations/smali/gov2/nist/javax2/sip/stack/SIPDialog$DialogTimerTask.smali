.class Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;
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
    name = "DialogTimerTask"
.end annotation


# instance fields
.field nRetransmissions:I

.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

.field transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPDialog;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 413
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 414
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    const/4 v0, 0x0

    .line 415
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    .line 416
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 421
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 422
    .local v0, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 424
    :goto_0
    iget v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    .line 425
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 435
    .local v4, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    iget v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->nRetransmissions:I

    const/16 v6, 0x40

    if-gt v5, v6, :cond_3

    .line 446
    iget-boolean v5, v0, Lgov2/nist/javax2/sip/stack/SIPDialog;->ackSeen:Z

    if-eqz v5, :cond_6

    .line 479
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 480
    :cond_1
    iput-object v9, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 481
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 485
    :goto_2
    return-void

    .line 423
    .end local v4    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v6, "Running dialog timer"

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .restart local v4    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v5

    if-nez v5, :cond_5

    .line 440
    :cond_4
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    .line 442
    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq v5, v6, :cond_0

    .line 444
    invoke-virtual {v4, v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_1

    .line 436
    :cond_5
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v5

    instance-of v5, v5, Lgov2/nist/javax2/sip/SipListenerExt;

    if-eqz v5, :cond_4

    .line 438
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # invokes: Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v5, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$200(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V

    goto :goto_3

    .line 446
    :cond_6
    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v2

    .line 449
    .local v2, "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 453
    :try_start_0
    iget v5, v4, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->T2:I

    # invokes: Lgov2/nist/javax2/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z
    invoke-static {v0, v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$600(Lgov2/nist/javax2/sip/stack/SIPDialog;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_7

    .line 468
    :goto_4
    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v3

    .line 469
    .local v3, "stack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 472
    :goto_5
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireTimer()V

    goto :goto_1

    .line 454
    .end local v3    # "stack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    :cond_7
    :try_start_1
    invoke-virtual {v4, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 473
    :catch_0
    move-exception v1

    .line 458
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getPeerAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getPeerPort()I

    move-result v7

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getPeerProtocol()Ljava/lang/String;

    move-result-object v8

    # invokes: Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v6, v7, v8}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$700(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v3

    .line 469
    .restart local v3    # "stack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 472
    :goto_6
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireTimer()V

    goto/16 :goto_1

    .line 470
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_8
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resend 200 response from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1    # "ex":Ljava/io/IOException;
    :cond_9
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resend 200 response from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_6

    .line 473
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "stack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    :catchall_0
    move-exception v5

    .line 468
    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v3

    .line 469
    .restart local v3    # "stack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 472
    :goto_7
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireTimer()V

    .line 473
    throw v5

    .line 470
    :cond_a
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resend 200 response from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_7

    .line 479
    .end local v2    # "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v3    # "stack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    :cond_b
    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->dialogState:I
    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$800(Lgov2/nist/javax2/sip/stack/SIPDialog;)I

    move-result v5

    sget v6, Lgov2/nist/javax2/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-eq v5, v6, :cond_1

    goto/16 :goto_2
.end method
