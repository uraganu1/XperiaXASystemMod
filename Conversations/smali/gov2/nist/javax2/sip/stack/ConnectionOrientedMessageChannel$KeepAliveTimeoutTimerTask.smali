.class Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "ConnectionOrientedMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAliveTimeoutTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;


# direct methods
.method constructor <init>(Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 12

    .prologue
    .line 555
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    instance-of v0, v0, Lgov2/nist/javax2/sip/SipStackImpl;

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v11

    .line 580
    .local v11, "sipListener":Ljavax2/sip/SipListener;
    instance-of v0, v11, Ljavax2/sip/SipListener;

    if-nez v0, :cond_4

    .line 589
    .end local v11    # "sipListener":Ljavax2/sip/SipListener;
    :cond_0
    :goto_1
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~~ Starting processing of KeepAliveTimeoutEvent( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget v3, v3, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    check-cast v0, Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v10

    .line 564
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 566
    .local v1, "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v11

    .line 567
    .restart local v11    # "sipListener":Ljavax2/sip/SipListener;
    if-eqz v11, :cond_3

    instance-of v0, v11, Ljavax2/sip/SipListener;

    if-eqz v0, :cond_3

    .line 569
    new-instance v0, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    sget-object v2, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->KeepAliveTimeout:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myAddress:Ljava/lang/String;

    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget v4, v4, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myPort:I

    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v5, v5, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget v6, v6, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    const-string/jumbo v7, "TCP"

    invoke-direct/range {v0 .. v7}, Lgov2/nist/javax2/sip/IOExceptionEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljavax2/sip/SipListener;->processIOException(Ljavax2/sip/IOExceptionEvent;)V

    goto :goto_1

    .line 581
    .end local v1    # "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_4
    new-instance v2, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    sget-object v4, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->KeepAliveTimeout:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v5, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myAddress:Ljava/lang/String;

    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget v6, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->myPort:I

    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget-object v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel$KeepAliveTimeoutTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    iget v8, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->peerPort:I

    const-string/jumbo v9, "TCP"

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lgov2/nist/javax2/sip/IOExceptionEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v2}, Ljavax2/sip/SipListener;->processIOException(Ljavax2/sip/IOExceptionEvent;)V

    goto/16 :goto_1
.end method
