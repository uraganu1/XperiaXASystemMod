.class public Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReInviteSender"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe2571ebeadfbf2bL


# instance fields
.field ctx:Ljavax2/sip/ClientTransaction;

.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljavax2/sip/ClientTransaction;)V
    .locals 0
    .param p2, "ctx"    # Ljavax2/sip/ClientTransaction;

    .prologue
    .line 318
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    .line 325
    .local v8, "timeToWait":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 327
    .local v6, "startTime":J
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    :goto_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v5

    sget-object v10, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v10, :cond_7

    :goto_1
    const-wide/16 v10, 0x0

    .line 369
    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    .line 370
    :try_start_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->reInviteWaitTime:I
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$300(Lgov2/nist/javax2/sip/stack/SIPDialog;)I

    move-result v5

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :cond_0
    :try_start_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v5

    sget-object v10, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-ne v5, v10, :cond_9

    .line 380
    :goto_2
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_a

    .line 386
    .end local v6    # "startTime":J
    :cond_1
    :goto_3
    iput-object v12, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    .line 388
    return-void

    .line 331
    .restart local v6    # "startTime":J
    :cond_2
    :try_start_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 334
    :goto_4
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    check-cast v5, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->fireTimeoutTimer()V

    .line 338
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v5

    if-nez v5, :cond_5

    .line 342
    :cond_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    const-string/jumbo v10, "BYE"

    invoke-virtual {v5, v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;

    move-result-object v1

    .line 343
    .local v1, "byeRequest":Ljavax2/sip/message/Request;
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v5

    if-nez v5, :cond_6

    .line 346
    :goto_5
    new-instance v4, Lgov2/nist/javax2/sip/header/Reason;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/header/Reason;-><init>()V

    .local v4, "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    const/16 v5, 0x400

    .line 347
    invoke-interface {v4, v5}, Ljavax2/sip/header/ReasonHeader;->setCause(I)V

    const-string/jumbo v5, "Timed out waiting to re-INVITE"

    .line 348
    invoke-interface {v4, v5}, Ljavax2/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    .line 349
    invoke-interface {v1, v4}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    .line 350
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v0

    .line 352
    .local v0, "byeCtx":Ljavax2/sip/ClientTransaction;
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v5, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendRequest(Ljavax2/sip/ClientTransaction;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    iput-object v12, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    return-void

    .line 332
    .end local v0    # "byeCtx":Ljavax2/sip/ClientTransaction;
    .end local v1    # "byeRequest":Ljavax2/sip/message/Request;
    .end local v4    # "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    :cond_4
    :try_start_4
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v10, "Could not send re-INVITE time out ClientTransaction"

    invoke-interface {v5, v10}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 387
    .end local v6    # "startTime":J
    :catch_0
    move-exception v2

    .line 383
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v10, "Error sending re-INVITE"

    invoke-interface {v5, v10, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 387
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 386
    iput-object v12, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    throw v5

    .line 338
    .restart local v6    # "startTime":J
    :cond_5
    :try_start_6
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$100(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v5

    instance-of v5, v5, Lgov2/nist/javax2/sip/SipListenerExt;

    if-eqz v5, :cond_3

    .line 340
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    const/4 v10, 0x3

    # invokes: Lgov2/nist/javax2/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v5, v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$200(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V

    goto/16 :goto_0

    .line 344
    .restart local v1    # "byeRequest":Ljavax2/sip/message/Request;
    :cond_6
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v5

    invoke-interface {v1, v5}, Ljavax2/sip/message/Request;->addHeader(Ljavax2/sip/header/Header;)V

    goto :goto_5

    .line 358
    .end local v1    # "byeRequest":Ljavax2/sip/message/Request;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v6

    goto/16 :goto_1

    .line 376
    :catch_1
    move-exception v3

    .line 373
    .local v3, "ex":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-nez v5, :cond_8

    .line 386
    :goto_6
    iput-object v12, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    return-void

    .line 374
    :cond_8
    :try_start_7
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v10, "Interrupted sleep"

    invoke-interface {v5, v10}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_6

    .line 378
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_9
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    iget-object v10, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax2/sip/ClientTransaction;

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendRequest(Ljavax2/sip/ClientTransaction;Z)V

    goto/16 :goto_2

    .line 381
    :cond_a
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    const-string/jumbo v10, "re-INVITE successfully sent"

    invoke-interface {v5, v10}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method
