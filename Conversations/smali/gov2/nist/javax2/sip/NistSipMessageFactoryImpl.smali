.class Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;
.super Ljava/lang/Object;
.source "NistSipMessageFactoryImpl.java"

# interfaces
.implements Lgov2/nist/javax2/sip/stack/StackMessageFactory;


# instance fields
.field private sipStack:Lgov2/nist/javax2/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/SipStackImpl;)V
    .locals 0
    .param p1, "sipStackImpl"    # Lgov2/nist/javax2/sip/SipStackImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 132
    return-void
.end method


# virtual methods
.method public newSIPServerRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    .locals 5
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "messageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v3, 0x0

    .line 64
    if-nez p2, :cond_1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Null Arg!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_1
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/SipStackImpl;

    .line 69
    .local v1, "theStack":Lgov2/nist/javax2/sip/SipStackImpl;
    new-instance v0, Lgov2/nist/javax2/sip/DialogFilter;

    invoke-direct {v0, v1}, Lgov2/nist/javax2/sip/DialogFilter;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    .line 70
    .local v0, "retval":Lgov2/nist/javax2/sip/DialogFilter;
    instance-of v2, p2, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v2, :cond_2

    .line 75
    :goto_0
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getListeningPoint()Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-result-object v2

    iput-object v2, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 76
    iget-object v2, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    :goto_1
    return-object v0

    :cond_2
    move-object v2, p2

    .line 73
    check-cast v2, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    iput-object v2, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    goto :goto_0

    .line 76
    :cond_3
    return-object v3

    .line 78
    :cond_4
    iget-object v2, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Returning request interface for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " messageChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public newSIPServerResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    .locals 7
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "messageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v1

    .line 96
    .local v1, "theStack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-virtual {v1, p1, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v2

    .line 98
    .local v2, "tr":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    :goto_0
    if-nez v2, :cond_2

    .line 121
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/DialogFilter;

    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-direct {v0, v3}, Lgov2/nist/javax2/sip/DialogFilter;-><init>(Lgov2/nist/javax2/sip/SipStackImpl;)V

    .line 123
    .local v0, "retval":Lgov2/nist/javax2/sip/DialogFilter;
    iput-object v2, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 125
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getListeningPoint()Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-result-object v3

    iput-object v3, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 126
    return-object v0

    .line 99
    .end local v0    # "retval":Lgov2/nist/javax2/sip/DialogFilter;
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found Transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 112
    sget-object v3, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 114
    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 117
    :goto_1
    return-object v6

    .line 107
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 110
    :goto_2
    return-object v6

    .line 108
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Dropping response - null transaction state"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/NistSipMessageFactoryImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dropping response - late arriving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method
