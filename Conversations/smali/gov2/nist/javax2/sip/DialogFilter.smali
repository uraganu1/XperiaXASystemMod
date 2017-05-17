.class Lgov2/nist/javax2/sip/DialogFilter;
.super Ljava/lang/Object;
.source "DialogFilter.java"

# interfaces
.implements Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
.implements Lgov2/nist/javax2/sip/stack/ServerResponseInterface;


# instance fields
.field protected listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

.field private sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

.field protected transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/SipStackImpl;)V
    .locals 0
    .param p1, "sipStack"    # Lgov2/nist/javax2/sip/SipStackImpl;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 102
    return-void
.end method

.method private sendBadRequestResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x190

    .line 143
    invoke-virtual {p1, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v2

    .line 144
    .local v2, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    if-nez p3, :cond_0

    .line 145
    :goto_0
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v1

    .line 146
    .local v1, "serverHeader":Ljavax2/sip/header/ServerHeader;
    if-nez v1, :cond_1

    .line 150
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    :goto_2
    invoke-virtual {p2, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 154
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_3
    return-void

    .line 144
    .end local v1    # "serverHeader":Ljavax2/sip/header/ServerHeader;
    :cond_0
    invoke-virtual {v2, p3}, Lgov2/nist/javax2/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .restart local v1    # "serverHeader":Ljavax2/sip/header/ServerHeader;
    :cond_1
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1

    .line 151
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 160
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 157
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 158
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_3
.end method

.method private sendCallOrTransactionDoesNotExistResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/16 v3, 0x1e1

    .line 173
    invoke-virtual {p1, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v2

    .line 176
    .local v2, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v1

    .line 177
    .local v1, "serverHeader":Ljavax2/sip/header/ServerHeader;
    if-nez v1, :cond_0

    .line 181
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    :goto_1
    invoke-virtual {p2, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 185
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_2
    return-void

    .line 178
    :cond_0
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0

    .line 182
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :goto_3
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 190
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_2

    .line 188
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method private sendLoopDetectedResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/16 v3, 0x1e2

    .line 203
    invoke-virtual {p1, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v2

    .line 205
    .local v2, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v1

    .line 206
    .local v1, "serverHeader":Ljavax2/sip/header/ServerHeader;
    if-nez v1, :cond_0

    .line 210
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 211
    invoke-virtual {p2, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 212
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    return-void

    .line 207
    :cond_0
    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    :goto_2
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 217
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_1

    .line 215
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private sendRequestPendingResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    const/16 v4, 0x1eb

    .line 111
    invoke-virtual {p1, v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v3

    .line 112
    .local v3, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v2

    .line 113
    .local v2, "serverHeader":Ljavax2/sip/header/ServerHeader;
    if-nez v2, :cond_0

    .line 117
    :goto_0
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RetryAfter;-><init>()V

    .local v1, "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    const/4 v4, 0x1

    .line 118
    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 119
    invoke-virtual {v3, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    .line 120
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    :goto_1
    invoke-virtual {p2, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 124
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    :goto_2
    return-void

    .line 114
    :cond_0
    invoke-virtual {v3, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_0

    .line 121
    .restart local v1    # "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 130
    .end local v1    # "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 128
    :goto_3
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 129
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_2

    .line 127
    :cond_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "Problem sending error response"

    invoke-interface {v4, v5, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method private sendServerInternalErrorResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .prologue
    .line 232
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    const/16 v4, 0x1f4

    .line 234
    invoke-virtual {p1, v4}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v3

    .local v3, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    const-string/jumbo v4, "Request out of order"

    .line 235
    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v4

    if-nez v4, :cond_1

    .line 242
    :goto_1
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RetryAfter;-><init>()V

    .local v1, "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    const/16 v4, 0xa

    .line 243
    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 244
    invoke-virtual {v3, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    .line 245
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 246
    invoke-virtual {p2, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 247
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v1    # "retryAfter":Lgov2/nist/javax2/sip/header/RetryAfter;
    :goto_2
    return-void

    .line 233
    .end local v3    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "Sending 500 response for out of sequence message"

    invoke-interface {v4, v5}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .restart local v3    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_1
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v2

    .line 238
    .local v2, "serverHeader":Ljavax2/sip/header/ServerHeader;
    invoke-virtual {v3, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1

    .line 253
    .end local v2    # "serverHeader":Ljavax2/sip/header/ServerHeader;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 251
    :goto_3
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 252
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_2

    .line 250
    :cond_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "Problem sending response"

    invoke-interface {v4, v5, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method


# virtual methods
.method public processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 46
    .param p1, "sipRequest"    # Lgov2/nist/javax2/sip/message/SIPRequest;
    .param p2, "incomingMessageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_9

    .line 271
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    if-eqz v41, :cond_a

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v36

    check-cast v36, Lgov2/nist/javax2/sip/SipStackImpl;

    .line 280
    .local v36, "sipStack":Lgov2/nist/javax2/sip/SipStackImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v34

    .line 281
    .local v34, "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    if-eqz v34, :cond_c

    .line 287
    if-eqz v36, :cond_e

    .line 291
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v39, v0

    check-cast v39, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 292
    .local v39, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v39, :cond_f

    .line 296
    :cond_0
    :goto_2
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, "dialogId":Ljava/lang/String;
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v11

    .line 304
    .local v11, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v11, :cond_10

    .line 347
    .end local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_1
    :goto_3
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-nez v41, :cond_18

    .line 357
    :cond_2
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_19

    :goto_4
    const-string/jumbo v41, "Route"

    .line 372
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v41

    if-nez v41, :cond_1a

    .line 395
    :cond_3
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "REFER"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_20

    .line 432
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "UPDATE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_23

    .line 441
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "ACK"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_24

    .line 560
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "PRACK"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_38

    .line 626
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "BYE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_44

    .line 700
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "CANCEL"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_53

    .line 787
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "INVITE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_61

    .line 860
    :cond_5
    :goto_6
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_6c

    .line 865
    :goto_7
    if-nez v11, :cond_6d

    .line 919
    :cond_6
    :goto_8
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_75

    .line 940
    :goto_9
    if-eqz v11, :cond_76

    .line 1105
    :cond_7
    if-nez v39, :cond_8c

    .line 1109
    :cond_8
    new-instance v32, Ljavax2/sip/RequestEvent;

    const/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v41

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v11, v3}, Ljavax2/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Request;)V

    .line 1112
    .local v32, "sipEvent":Ljavax2/sip/RequestEvent;
    :goto_a
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1114
    return-void

    .line 267
    .end local v14    # "dialogId":Ljava/lang/String;
    .end local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    .end local v34    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    .end local v36    # "sipStack":Lgov2/nist/javax2/sip/SipStackImpl;
    .end local v39    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PROCESSING INCOMING REQUEST "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " transactionChannel = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " listening point = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_b

    .line 275
    :goto_b
    return-void

    .line 273
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Dropping message: No listening point registered!"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_b

    .line 282
    .restart local v34    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    .restart local v36    # "sipStack":Lgov2/nist/javax2/sip/SipStackImpl;
    :cond_c
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_d

    .line 284
    :goto_c
    return-void

    .line 283
    :cond_d
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "No provider - dropping !!"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    const-string/jumbo v41, "Egads! no sip stack!"

    .line 287
    invoke-static/range {v41 .. v41}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    .restart local v39    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_f
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_0

    .line 294
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "transaction state = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 304
    .restart local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .restart local v14    # "dialogId":Ljava/lang/String;
    :cond_10
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_1

    .line 305
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMyContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v7

    .line 306
    .local v7, "contact":Lgov2/nist/javax2/sip/header/Contact;
    if-eqz v7, :cond_1

    .line 307
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/Contact;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v41

    check-cast v41, Lgov2/nist/javax2/sip/address/SipUri;

    move-object/from16 v10, v41

    check-cast v10, Lgov2/nist/javax2/sip/address/SipUri;

    .line 308
    .local v10, "contactUri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v22

    .line 309
    .local v22, "ipAddress":Ljava/lang/String;
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/address/SipUri;->getPort()I

    move-result v8

    .line 310
    .local v8, "contactPort":I
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/address/SipUri;->getTransportParam()Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "contactTransport":Ljava/lang/String;
    if-eqz v9, :cond_12

    :goto_d
    const/16 v41, -0x1

    .line 312
    move/from16 v0, v41

    if-eq v8, v0, :cond_13

    .line 321
    :goto_e
    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_16

    .line 324
    :cond_11
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_17

    :goto_f
    const/4 v11, 0x0

    .line 330
    .local v11, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto/16 :goto_3

    .local v11, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_12
    const-string/jumbo v9, "udp"

    .line 311
    goto :goto_d

    :cond_13
    const-string/jumbo v41, "udp"

    .line 313
    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_15

    :cond_14
    const/16 v8, 0x13c4

    .line 314
    goto :goto_e

    :cond_15
    const-string/jumbo v41, "tcp"

    .line 313
    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_14

    const/16 v8, 0x13c5

    .line 316
    goto :goto_e

    .line 321
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v41

    move/from16 v0, v41

    if-ne v8, v0, :cond_11

    goto/16 :goto_3

    .line 325
    :cond_17
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "nulling dialog -- listening point mismatch!  "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "  lp port = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_f

    .line 347
    .end local v7    # "contact":Lgov2/nist/javax2/sip/header/Contact;
    .end local v8    # "contactPort":I
    .end local v9    # "contactTransport":Ljava/lang/String;
    .end local v10    # "contactUri":Lgov2/nist/javax2/sip/address/SipUri;
    .end local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v22    # "ipAddress":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v41

    if-nez v41, :cond_2

    .line 350
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->findMergedTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v35

    .line 351
    .local v35, "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-eqz v35, :cond_2

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendLoopDetectedResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 353
    return-void

    .line 358
    .end local v35    # "sipServerTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_19
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "dialogId = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "dialog = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 372
    :cond_1a
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v41

    if-eqz v41, :cond_3

    .line 373
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v31

    .line 374
    .local v31, "routes":Lgov2/nist/javax2/sip/header/RouteList;
    invoke-virtual/range {v31 .. v31}, Lgov2/nist/javax2/sip/header/RouteList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v30

    check-cast v30, Lgov2/nist/javax2/sip/header/Route;

    .line 375
    .local v30, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual/range {v30 .. v30}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v40

    check-cast v40, Lgov2/nist/javax2/sip/address/SipUri;

    .line 377
    .local v40, "uri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual/range {v40 .. v40}, Lgov2/nist/javax2/sip/address/SipUri;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/core/HostPort;->hasPort()Z

    move-result v41

    if-nez v41, :cond_1c

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "TLS"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1d

    const/16 v28, 0x13c4

    .line 385
    .local v28, "port":I
    :goto_10
    invoke-virtual/range {v40 .. v40}, Lgov2/nist/javax2/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v21

    .line 386
    .local v21, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v41

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    .line 388
    invoke-virtual/range {v31 .. v31}, Lgov2/nist/javax2/sip/header/RouteList;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_1f

    .line 391
    invoke-virtual/range {v31 .. v31}, Lgov2/nist/javax2/sip/header/RouteList;->removeFirst()V

    goto/16 :goto_5

    .line 378
    .end local v21    # "host":Ljava/lang/String;
    .end local v28    # "port":I
    :cond_1c
    invoke-virtual/range {v40 .. v40}, Lgov2/nist/javax2/sip/address/SipUri;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v28

    .restart local v28    # "port":I
    goto :goto_10

    .end local v28    # "port":I
    :cond_1d
    const/16 v28, 0x13c5

    .line 381
    .restart local v28    # "port":I
    goto :goto_10

    .line 386
    .restart local v21    # "host":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getSentBy()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1b

    goto/16 :goto_5

    :cond_1f
    const-string/jumbo v41, "Route"

    .line 389
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 395
    .end local v21    # "host":Ljava/lang/String;
    .end local v28    # "port":I
    .end local v30    # "route":Lgov2/nist/javax2/sip/header/Route;
    .end local v31    # "routes":Lgov2/nist/javax2/sip/header/RouteList;
    .end local v40    # "uri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_20
    if-eqz v11, :cond_4

    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_4

    const-string/jumbo v41, "Refer-To"

    .line 402
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v33

    check-cast v33, Ljavax2/sip/header/ReferToHeader;

    .line 403
    .local v33, "sipHeader":Ljavax2/sip/header/ReferToHeader;
    if-eqz v33, :cond_21

    .line 413
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastTransaction()Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v24

    .line 414
    .local v24, "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    if-eqz v24, :cond_5

    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_5

    .line 415
    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v23

    check-cast v23, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 416
    .local v23, "lastRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    move-object/from16 v0, v24

    instance-of v0, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move/from16 v41, v0

    if-nez v41, :cond_22

    .line 422
    move-object/from16 v0, v24

    instance-of v0, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move/from16 v41, v0

    if-eqz v41, :cond_5

    .line 423
    invoke-virtual/range {v23 .. v23}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeqHeader()Ljavax2/sip/header/CSeqHeader;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v12

    .line 424
    .local v12, "cseqno":J
    invoke-virtual/range {v23 .. v23}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v25

    .local v25, "method":Ljava/lang/String;
    const-string/jumbo v41, "INVITE"

    .line 425
    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    invoke-virtual {v11, v12, v13}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v41

    if-nez v41, :cond_5

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendRequestPendingResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 427
    return-void

    .end local v12    # "cseqno":J
    .end local v23    # "lastRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .end local v25    # "method":Ljava/lang/String;
    :cond_21
    const-string/jumbo v41, "Refer-To header is missing"

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lgov2/nist/javax2/sip/DialogFilter;->sendBadRequestResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    .line 405
    return-void

    .line 417
    .restart local v23    # "lastRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .restart local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_22
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v41

    if-nez v41, :cond_5

    invoke-virtual/range {v23 .. v23}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "INVITE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendRequestPendingResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 420
    return-void

    .line 437
    .end local v23    # "lastRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .end local v33    # "sipHeader":Ljavax2/sip/header/ReferToHeader;
    :cond_23
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-eqz v41, :cond_5

    if-nez v11, :cond_5

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendCallOrTransactionDoesNotExistResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 439
    return-void

    .line 443
    :cond_24
    if-nez v39, :cond_27

    .line 450
    :cond_25
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_28

    .line 453
    :goto_11
    if-eqz v11, :cond_29

    .line 492
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->handleAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 532
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    .line 533
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 535
    move-object/from16 v0, v39

    invoke-virtual {v0, v11, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "INVITE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_36

    .line 546
    :cond_26
    :goto_12
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lgov2/nist/javax2/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    move/from16 v41, v0

    if-nez v41, :cond_37

    .line 554
    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setMapped(Z)V

    goto/16 :goto_6

    .line 443
    :cond_27
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v41

    if-eqz v41, :cond_25

    .line 446
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_5

    .line 447
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Processing ACK for INVITE Tx "

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 451
    :cond_28
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Processing ACK for dialog "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_11

    .line 454
    :cond_29
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_2c

    .line 460
    :goto_13
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v37

    .line 461
    .local v37, "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v37, :cond_2d

    .line 469
    :cond_2a
    :goto_14
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransactionPendingAck(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v6

    .line 475
    .local v6, "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-eqz v6, :cond_5

    .line 476
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_2e

    .line 479
    :goto_15
    :try_start_0
    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 480
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 481
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_2b
    :goto_16
    return-void

    .line 455
    .end local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2c
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Dialog does not exist "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " isServerTransaction = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_13

    .line 461
    .restart local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2d
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v41

    if-eqz v41, :cond_2a

    .line 462
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    goto :goto_14

    .line 477
    .restart local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2e
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Found Tx pending ACK"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_15

    .line 487
    :catch_0
    move-exception v19

    .line 483
    .local v19, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_2b

    .line 484
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Problem terminating transaction"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16

    .line 493
    .end local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local v19    # "ex":Ljava/lang/Exception;
    .end local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_2f
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v41

    if-eqz v41, :cond_31

    .line 509
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_33

    .line 513
    :goto_17
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransactionPendingAck(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v6

    .line 515
    .restart local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v6, :cond_34

    .line 529
    :cond_30
    :goto_18
    return-void

    .line 494
    .end local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_31
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_32

    .line 502
    :goto_19
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v37

    .line 504
    .restart local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-eqz v37, :cond_5

    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v41

    if-eqz v41, :cond_5

    .line 505
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    goto/16 :goto_6

    .line 495
    .end local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_32
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Dialog exists with loose dialog validation "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " isServerTransaction = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " dialog = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_19

    .line 510
    :cond_33
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Dropping ACK - cannot find a transaction or dialog"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_17

    .line 516
    .restart local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_34
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_35

    .line 519
    :goto_1a
    :try_start_1
    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 520
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 521
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransactionPendingAck(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_18

    .line 527
    :catch_1
    move-exception v19

    .line 523
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_30

    .line 524
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Problem terminating transaction"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_18

    .line 517
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_35
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Found Tx pending ACK"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1a

    .line 536
    .end local v6    # "ackTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_36
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_26

    .line 538
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->putInMergeTable(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Lgov2/nist/javax2/sip/message/SIPRequest;)V

    goto/16 :goto_12

    .line 548
    :cond_37
    :try_start_2
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 549
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->scheduleAckRemoval()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 552
    :catch_2
    move-exception v18

    .line 550
    .local v18, "ex":Ljava/io/IOException;
    goto/16 :goto_6

    .line 571
    .end local v18    # "ex":Ljava/io/IOException;
    :cond_38
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_3a

    .line 574
    :goto_1b
    if-eqz v11, :cond_3b

    .line 601
    :cond_39
    if-nez v11, :cond_40

    .line 621
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_5

    .line 622
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Processing PRACK without a DIALOG -- this must be a proxy element"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 572
    :cond_3a
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Processing PRACK for dialog "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1b

    .line 574
    :cond_3b
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-eqz v41, :cond_39

    .line 575
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_3d

    .line 581
    :goto_1c
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_3e

    :goto_1d
    const/16 v41, 0x1e1

    .line 586
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v26

    .line 590
    .local v26, "notExist":Lgov2/nist/javax2/sip/message/SIPResponse;
    :try_start_3
    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->sendResponse(Ljavax2/sip/message/Response;)V
    :try_end_3
    .catch Ljavax2/sip/SipException; {:try_start_3 .. :try_end_3} :catch_3

    .line 595
    :cond_3c
    :goto_1e
    if-nez v39, :cond_3f

    .line 599
    :goto_1f
    return-void

    .line 576
    .end local v26    # "notExist":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_3d
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Dialog does not exist "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " isServerTransaction = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1c

    .line 582
    :cond_3e
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Sending 481 for PRACK - automatic dialog support is enabled -- cant find dialog!"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1d

    .line 594
    .restart local v26    # "notExist":Lgov2/nist/javax2/sip/message/SIPResponse;
    :catch_3
    move-exception v15

    .line 592
    .local v15, "e":Ljavax2/sip/SipException;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_3c

    .line 593
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "error sending response"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v0, v1, v15}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1e

    .line 596
    .end local v15    # "e":Ljavax2/sip/SipException;
    :cond_3f
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 597
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_1f

    .line 602
    .end local v26    # "notExist":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_40
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->handlePrack(Lgov2/nist/javax2/sip/message/SIPRequest;)Z

    move-result v41

    if-eqz v41, :cond_41

    .line 612
    :try_start_4
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 613
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 614
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 615
    move-object/from16 v0, v39

    invoke-virtual {v0, v11, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    .line 618
    :catch_4
    move-exception v19

    .line 617
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 603
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_41
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_42

    .line 605
    :goto_20
    if-nez v39, :cond_43

    .line 609
    :goto_21
    return-void

    .line 604
    :cond_42
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Dropping out of sequence PRACK "

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_20

    .line 606
    :cond_43
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 607
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_21

    .line 628
    :cond_44
    if-nez v11, :cond_48

    .line 644
    :cond_45
    if-eqz v11, :cond_4e

    .line 682
    :cond_46
    if-nez v39, :cond_52

    .line 694
    :cond_47
    :goto_22
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_5

    .line 695
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "BYE Tx = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " isMapped ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 628
    :cond_48
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isRequestConsumable(Lgov2/nist/javax2/sip/message/SIPRequest;)Z

    move-result v41

    if-nez v41, :cond_45

    .line 629
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_4a

    .line 634
    :goto_23
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v44

    cmp-long v41, v42, v44

    if-gez v41, :cond_4b

    const/16 v41, 0x1

    :goto_24
    if-nez v41, :cond_49

    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_4c

    .line 641
    :cond_49
    :goto_25
    if-nez v39, :cond_4d

    .line 642
    :goto_26
    return-void

    .line 630
    :cond_4a
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Dropping out of sequence BYE "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_23

    .line 634
    :cond_4b
    const/16 v41, 0x0

    goto :goto_24

    .line 637
    :cond_4c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto :goto_25

    .line 641
    :cond_4d
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_26

    .line 644
    :cond_4e
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-eqz v41, :cond_46

    const/16 v41, 0x1e1

    .line 654
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v29

    .local v29, "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    const-string/jumbo v41, "Dialog Not Found"

    .line 656
    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_50

    .line 663
    :goto_27
    :try_start_5
    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V
    :try_end_5
    .catch Ljavax2/sip/SipException; {:try_start_5 .. :try_end_5} :catch_5

    .line 669
    :cond_4f
    :goto_28
    if-nez v39, :cond_51

    .line 674
    .end local v39    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :goto_29
    return-void

    .line 659
    .restart local v39    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_50
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "dropping request -- automatic dialog support enabled and dialog does not exist!"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_27

    .line 667
    :catch_5
    move-exception v20

    .line 665
    .local v20, "ex":Ljavax2/sip/SipException;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_4f

    .line 666
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Error in sending response"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_28

    .line 670
    .end local v20    # "ex":Ljavax2/sip/SipException;
    :cond_51
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 671
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    const/16 v39, 0x0

    .line 672
    .local v39, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    goto :goto_29

    .line 682
    .end local v29    # "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    .local v39, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_52
    if-eqz v11, :cond_47

    .line 684
    :try_start_6
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_47

    .line 685
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 686
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 687
    move-object/from16 v0, v39

    invoke-virtual {v0, v11, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_22

    .line 692
    :catch_6
    move-exception v18

    .line 691
    .restart local v18    # "ex":Ljava/io/IOException;
    invoke-static/range {v18 .. v18}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_22

    .line 702
    .end local v18    # "ex":Ljava/io/IOException;
    :cond_53
    const/16 v41, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->findCancelTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v37

    check-cast v37, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 704
    .restart local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_57

    .line 712
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "CANCEL"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_58

    .line 737
    :cond_54
    :goto_2b
    if-nez v39, :cond_5d

    .line 742
    :cond_55
    if-eqz v37, :cond_5e

    .line 771
    :cond_56
    :goto_2c
    if-eqz v37, :cond_5

    .line 773
    if-eqz v39, :cond_5

    .line 774
    :try_start_7
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 775
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 776
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setInviteTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 779
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->acquireSem()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_6

    .line 785
    :catch_7
    move-exception v19

    .line 784
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 705
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_57
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Got a CANCEL, InviteServerTx = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " cancel Server Tx ID = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " isMapped = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2a

    .line 716
    :cond_58
    if-nez v37, :cond_5a

    .line 733
    :cond_59
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-eqz v41, :cond_54

    .line 734
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Cancel transaction = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 716
    :cond_5a
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_59

    .line 720
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_5c

    :goto_2d
    const/16 v41, 0xc8

    .line 725
    :try_start_8
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 731
    :cond_5b
    :goto_2e
    return-void

    .line 721
    :cond_5c
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Too late to cancel Transaction"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2d

    .line 730
    :catch_8
    move-exception v19

    .line 727
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v41

    if-eqz v41, :cond_5b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v41, v0

    if-eqz v41, :cond_5b

    .line 728
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto :goto_2e

    .line 737
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_5d
    if-eqz v37, :cond_55

    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v41

    if-eqz v41, :cond_55

    .line 740
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v41

    check-cast v41, Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {v37 .. v37}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v11

    check-cast v11, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .restart local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto/16 :goto_2c

    .line 742
    .end local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_5e
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-eqz v41, :cond_56

    if-eqz v39, :cond_56

    const/16 v41, 0x1e1

    .line 749
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v29

    .line 751
    .restart local v29    # "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_5f

    .line 757
    :goto_2f
    :try_start_9
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->sendResponse(Ljavax2/sip/message/Response;)V
    :try_end_9
    .catch Ljavax2/sip/SipException; {:try_start_9 .. :try_end_9} :catch_9

    .line 761
    :goto_30
    if-nez v39, :cond_60

    .line 765
    :goto_31
    return-void

    .line 752
    :cond_5f
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "dropping request -- automatic dialog support enabled and INVITE ST does not exist!"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2f

    .line 760
    :catch_9
    move-exception v20

    .line 759
    .restart local v20    # "ex":Ljavax2/sip/SipException;
    invoke-static/range {v20 .. v20}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_30

    .line 762
    .end local v20    # "ex":Ljavax2/sip/SipException;
    :cond_60
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 763
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_31

    .line 788
    .end local v29    # "response":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v37    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_61
    if-eqz v11, :cond_64

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getInviteTransaction()Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v24

    .line 799
    .restart local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :goto_32
    if-nez v11, :cond_65

    .line 823
    :cond_62
    if-eqz v11, :cond_68

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastTransaction()Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v24

    .line 825
    :goto_33
    if-nez v11, :cond_69

    .line 842
    :cond_63
    if-eqz v11, :cond_5

    if-eqz v24, :cond_5

    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_5

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v41

    if-eqz v41, :cond_5

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax2/sip/ServerTransaction;

    move/from16 v41, v0

    if-eqz v41, :cond_5

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v41

    if-nez v41, :cond_5

    .line 846
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_6b

    .line 850
    :goto_34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendRequestPendingResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 851
    return-void

    .end local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_64
    const/16 v24, 0x0

    .line 788
    goto :goto_32

    .line 799
    .restart local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_65
    if-eqz v39, :cond_62

    if-eqz v24, :cond_62

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v42

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v44

    cmp-long v41, v42, v44

    if-gtz v41, :cond_66

    const/16 v41, 0x1

    :goto_35
    if-nez v41, :cond_62

    move-object/from16 v0, v24

    instance-of v0, v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move/from16 v41, v0

    if-eqz v41, :cond_62

    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_62

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v41

    if-eqz v41, :cond_62

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v41

    if-eqz v41, :cond_62

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_62

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_62

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_62

    .line 808
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_67

    .line 812
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 813
    return-void

    .line 799
    :cond_66
    const/16 v41, 0x0

    goto :goto_35

    .line 809
    :cond_67
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Sending 500 response for out of sequence message"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_36

    :cond_68
    const/16 v24, 0x0

    .line 823
    goto/16 :goto_33

    .line 825
    :cond_69
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-eqz v41, :cond_63

    if-eqz v24, :cond_63

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v41

    if-eqz v41, :cond_63

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax2/sip/ClientTransaction;

    move/from16 v41, v0

    if-eqz v41, :cond_63

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v41

    if-eqz v41, :cond_63

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v41

    const/16 v42, 0xc8

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_63

    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v42

    move-wide/from16 v0, v42

    invoke-virtual {v11, v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v41

    if-nez v41, :cond_63

    .line 834
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_6a

    .line 838
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendRequestPendingResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 839
    return-void

    .line 835
    :cond_6a
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Sending 491 response for client Dialog ACK not sent."

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_37

    .line 847
    :cond_6b
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Sending 491 response for server Dialog ACK not seen."

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 861
    .end local v24    # "lastTransaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_6c
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "CHECK FOR OUT OF SEQ MESSAGE "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " transaction "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 865
    :cond_6d
    if-eqz v39, :cond_6

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "BYE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_6

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "CANCEL"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_6

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "ACK"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_6

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "PRACK"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_6

    .line 870
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isRequestConsumable(Lgov2/nist/javax2/sip/message/SIPRequest;)Z

    move-result v41

    if-eqz v41, :cond_6e

    .line 901
    :try_start_a
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getSipProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 902
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 904
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 905
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 906
    move-object/from16 v0, v39

    invoke-virtual {v0, v11, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_8

    .line 913
    :catch_a
    move-exception v18

    .line 910
    .restart local v18    # "ex":Ljava/io/IOException;
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    .line 911
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 912
    return-void

    .line 881
    .end local v18    # "ex":Ljava/io/IOException;
    :cond_6e
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_70

    .line 890
    :goto_38
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v44

    cmp-long v41, v42, v44

    if-gez v41, :cond_71

    const/16 v41, 0x1

    :goto_39
    if-nez v41, :cond_6f

    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v41

    if-nez v41, :cond_72

    .line 897
    :cond_6f
    :goto_3a
    return-void

    .line 882
    :cond_70
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Dropping out of sequence message "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_38

    .line 890
    :cond_71
    const/16 v41, 0x0

    goto :goto_39

    :cond_72
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_74

    .line 894
    :cond_73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto :goto_3a

    .line 890
    :cond_74
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v41

    sget-object v42, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_73

    goto :goto_3a

    .line 920
    :cond_75
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " transaction.isMapped = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 940
    :cond_76
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "NOTIFY"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->findSubscribeTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/ListeningPointImpl;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v27

    .line 945
    .local v27, "pendingSubscribeClientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_78

    .line 957
    :goto_3b
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-nez v41, :cond_79

    .line 987
    :cond_77
    if-nez v27, :cond_7c

    .line 1092
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_8b

    .line 1098
    :goto_3c
    new-instance v32, Ljavax2/sip/RequestEvent;

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax2/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Request;)V

    .restart local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    goto/16 :goto_a

    .line 946
    .end local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    :cond_78
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PROCESSING NOTIFY  DIALOG == null "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3b

    .line 957
    :cond_79
    if-nez v27, :cond_77

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lgov2/nist/javax2/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    move/from16 v41, v0

    if-nez v41, :cond_77

    .line 965
    :try_start_b
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_7a

    :goto_3d
    const/16 v41, 0x1e1

    .line 969
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v16

    .local v16, "errorResponse":Ljavax2/sip/message/Response;
    const-string/jumbo v41, "Subscription does not exist"

    .line 971
    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljavax2/sip/message/Response;->setReasonPhrase(Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 973
    return-void

    .line 966
    .end local v16    # "errorResponse":Ljavax2/sip/message/Response;
    :cond_7a
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Could not find Subscription for Notify Tx."

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_3d

    .line 973
    :catch_b
    move-exception v19

    .line 976
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_7b

    .line 979
    :goto_3e
    return-void

    .line 977
    :cond_7b
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "Exception while sending error response statelessly"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3e

    .line 993
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_7c
    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setPendingSubscribe(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V

    .line 997
    invoke-virtual/range {v27 .. v27}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v38

    .line 1001
    .local v38, "subscriptionDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v38, :cond_82

    .line 1007
    :cond_7d
    if-nez v38, :cond_83

    .line 1011
    :cond_7e
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v38

    .line 1013
    :goto_3f
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v41

    if-nez v41, :cond_84

    .line 1020
    :goto_40
    if-eqz v38, :cond_85

    .line 1032
    :cond_7f
    :goto_41
    if-nez v38, :cond_88

    .line 1075
    :cond_80
    :goto_42
    if-nez v39, :cond_8a

    .line 1087
    :cond_81
    new-instance v32, Ljavax2/sip/RequestEvent;

    const/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v41

    move-object/from16 v3, v38

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax2/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Request;)V

    .restart local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    goto/16 :goto_a

    .line 1001
    .end local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    :cond_82
    invoke-virtual/range {v38 .. v38}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_7d

    invoke-virtual/range {v38 .. v38}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7d

    .line 1055
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1056
    move-object/from16 v11, v38

    .line 1057
    .restart local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    if-eqz v41, :cond_89

    .line 1068
    :goto_43
    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 1069
    if-eqz v27, :cond_80

    .line 1070
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1071
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_42

    .line 1007
    .end local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_83
    invoke-virtual/range {v38 .. v38}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v41

    if-nez v41, :cond_7e

    .line 1008
    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    goto :goto_3f

    .line 1014
    :cond_84
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PROCESSING NOTIFY Subscribe DIALOG "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_40

    .line 1020
    :cond_85
    invoke-virtual/range {v34 .. v34}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v41

    if-eqz v41, :cond_87

    :cond_86
    const-string/jumbo v41, "Event"

    .line 1023
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v17

    check-cast v17, Lgov2/nist/javax2/sip/header/Event;

    .line 1024
    .local v17, "event":Lgov2/nist/javax2/sip/header/Event;
    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/header/Event;->getEventType()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->isEventForked(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_7f

    .line 1026
    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->createFromNOTIFY(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v38

    goto/16 :goto_41

    .line 1020
    .end local v17    # "event":Lgov2/nist/javax2/sip/header/Event;
    :cond_87
    invoke-virtual/range {v27 .. v27}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v41

    if-nez v41, :cond_86

    goto/16 :goto_41

    .line 1033
    :cond_88
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1034
    sget-object v41, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    invoke-virtual/range {v41 .. v41}, Ljavax2/sip/DialogState;->getValue()I

    move-result v41

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setState(I)V

    .line 1035
    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 1036
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    if-nez v41, :cond_80

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->mapTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 1044
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1046
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_42

    .line 1048
    :catch_c
    move-exception v19

    .line 1047
    .restart local v19    # "ex":Ljava/lang/Exception;
    goto/16 :goto_42

    .line 1058
    .end local v19    # "ex":Ljava/lang/Exception;
    .restart local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->mapTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 1062
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1064
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_43

    .line 1066
    :catch_d
    move-exception v41

    goto/16 :goto_43

    .line 1075
    .end local v11    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_8a
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    if-eqz v41, :cond_81

    .line 1080
    new-instance v32, Ljavax2/sip/RequestEvent;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    move-object/from16 v3, v38

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax2/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Request;)V

    .restart local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    goto/16 :goto_a

    .line 1093
    .end local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    .end local v38    # "subscriptionDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_8b
    invoke-virtual/range {v36 .. v36}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v41

    const-string/jumbo v42, "could not find subscribe tx"

    invoke-interface/range {v41 .. v42}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 1105
    .end local v27    # "pendingSubscribeClientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_8c
    invoke-virtual/range {v39 .. v39}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    if-eqz v41, :cond_8

    .line 1106
    new-instance v32, Ljavax2/sip/RequestEvent;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v11, v3}, Ljavax2/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Request;)V

    .restart local v32    # "sipEvent":Ljavax2/sip/RequestEvent;
    goto/16 :goto_a
.end method

.method public processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    .locals 18
    .param p1, "sipResponse"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;

    .prologue
    .line 1277
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v4

    .line 1278
    .local v4, "dialogID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13, v4}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v10

    .line 1280
    .local v10, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 1281
    .local v6, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1286
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->checkBranchId()Z

    move-result v13

    if-nez v13, :cond_7

    .line 1293
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    if-eqz v13, :cond_9

    .line 1300
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v11

    .line 1301
    .local v11, "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    if-eqz v11, :cond_b

    .line 1308
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 1315
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v12, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1320
    .local v12, "transaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-eqz v10, :cond_f

    .line 1326
    .end local v10    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_10

    .line 1330
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v13, :cond_11

    .line 1345
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-static {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 1365
    :cond_3
    if-nez v10, :cond_19

    .line 1422
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_22

    .line 1425
    :goto_4
    if-nez v10, :cond_23

    .line 1430
    :cond_5
    :goto_5
    new-instance v9, Lgov2/nist/javax2/sip/ResponseEventExt;

    move-object/from16 v0, p1

    invoke-direct {v9, v11, v12, v10, v0}, Lgov2/nist/javax2/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/ClientTransactionExt;Ljavax2/sip/Dialog;Ljavax2/sip/message/Response;)V

    .line 1433
    .local v9, "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    .line 1439
    :goto_6
    invoke-virtual {v11, v9, v12}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1441
    return-void

    .line 1282
    .end local v9    # "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    .end local v11    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    .end local v12    # "transaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .restart local v10    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "PROCESSING INCOMING RESPONSE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1286
    :cond_7
    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lgov2/nist/javax2/sip/Utils;->responseBelongsToUs(Lgov2/nist/javax2/sip/message/SIPResponse;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1287
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_8

    .line 1290
    :goto_7
    return-void

    .line 1288
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "Detected stray response -- dropping"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_7

    .line 1294
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_a

    .line 1297
    :goto_8
    return-void

    .line 1295
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "Dropping message: No listening point registered!"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_8

    .line 1302
    .restart local v11    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_c

    .line 1305
    :goto_9
    return-void

    .line 1303
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "Dropping message:  no provider"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_9

    .line 1309
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_e

    .line 1312
    :goto_a
    return-void

    .line 1310
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "Dropping message:  no sipListener registered!"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_a

    .line 1320
    .restart local v12    # "transaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_f
    if-eqz v12, :cond_1

    .line 1321
    invoke-virtual {v12, v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v10

    .line 1322
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-ne v13, v14, :cond_1

    const/4 v10, 0x0

    .line 1323
    .local v10, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto/16 :goto_1

    .line 1327
    .end local v10    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Transaction = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " sipDialog = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1331
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v7

    .line 1332
    .local v7, "originalFrom":Ljava/lang/String;
    if-eqz v7, :cond_12

    const/4 v13, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    const/4 v14, 0x0

    :goto_c
    xor-int/2addr v13, v14

    if-nez v13, :cond_14

    .line 1337
    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1339
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_16

    .line 1341
    :goto_d
    return-void

    :cond_12
    const/4 v13, 0x1

    .line 1332
    goto :goto_b

    :cond_13
    const/4 v14, 0x1

    goto :goto_c

    .line 1333
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_15

    .line 1335
    :goto_e
    return-void

    .line 1334
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "From tag mismatch -- dropping response"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_e

    .line 1340
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "From tag mismatch -- dropping response"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_d

    .line 1345
    .end local v7    # "originalFrom":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x64

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    if-nez v10, :cond_3

    .line 1348
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1349
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v13, :cond_18

    .line 1359
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v0, p1

    invoke-virtual {v13, v11, v0}, Lgov2/nist/javax2/sip/SipStackImpl;->createDialog(Lgov2/nist/javax2/sip/SipProviderImpl;Lgov2/nist/javax2/sip/message/SIPResponse;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v10

    .local v10, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    goto/16 :goto_3

    .line 1350
    .end local v10    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_18
    if-nez v10, :cond_4

    .line 1352
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v13, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object/from16 v0, p1

    invoke-virtual {v14, v13, v0}, Lgov2/nist/javax2/sip/SipStackImpl;->createDialog(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v10

    .line 1355
    .restart local v10    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1365
    .end local v10    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_19
    if-nez v12, :cond_4

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v13, v14, :cond_4

    .line 1367
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1b

    .line 1371
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v13, v14, :cond_1c

    .line 1391
    const/4 v2, 0x0

    .line 1392
    .local v2, "ackAlreadySent":Z
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v13

    if-nez v13, :cond_20

    .line 1402
    :cond_1a
    :goto_f
    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1407
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_21

    .line 1410
    :goto_10
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax2/sip/SipException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1411
    return-void

    .line 1368
    .end local v2    # "ackAlreadySent":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1369
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "status code != 200 ; statusCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1372
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 1379
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1f

    .line 1389
    :cond_1d
    :goto_12
    return-void

    .line 1373
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "Dialog is terminated -- dropping response!"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_11

    .line 1379
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1382
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lgov2/nist/javax2/sip/stack/SIPDialog;->createAck(J)Ljavax2/sip/message/Request;

    move-result-object v3

    .line 1384
    .local v3, "ackRequest":Ljavax2/sip/message/Request;
    invoke-virtual {v10, v3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->sendAck(Ljavax2/sip/message/Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    .line 1387
    .end local v3    # "ackRequest":Ljavax2/sip/message/Request;
    :catch_0
    move-exception v5

    .line 1386
    .local v5, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "Error creating ack"

    invoke-interface {v13, v14, v5}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12

    .line 1392
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v2    # "ackAlreadySent":Z
    :cond_20
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v13

    if-eqz v13, :cond_1a

    .line 1393
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_1a

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov2/nist/javax2/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1398
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 1408
    :cond_21
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "resending ACK"

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax2/sip/SipException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_10

    .line 1411
    :catch_1
    move-exception v13

    goto/16 :goto_3

    .line 1423
    .end local v2    # "ackAlreadySent":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v13

    const-string/jumbo v14, "sending response to TU for processing "

    invoke-interface {v13, v14}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1425
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x64

    if-eq v13, v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 1427
    move-object/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    goto/16 :goto_5

    .line 1434
    .restart local v9    # "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgov2/nist/javax2/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v8

    .line 1436
    .local v8, "originalTx":Lgov2/nist/javax2/sip/ClientTransactionExt;
    invoke-virtual {v9, v8}, Lgov2/nist/javax2/sip/ResponseEventExt;->setOriginalTransaction(Lgov2/nist/javax2/sip/ClientTransactionExt;)V

    goto/16 :goto_6
.end method

.method public processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 12
    .param p1, "response"    # Lgov2/nist/javax2/sip/message/SIPResponse;
    .param p2, "incomingMessageChannel"    # Lgov2/nist/javax2/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;

    .prologue
    .line 1126
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1130
    :goto_0
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    if-eqz v8, :cond_3

    .line 1137
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->checkBranchId()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1146
    :cond_0
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getProvider()Lgov2/nist/javax2/sip/SipProviderImpl;

    move-result-object v5

    .line 1147
    .local v5, "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    if-eqz v5, :cond_7

    .line 1153
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1160
    iget-object v7, p0, Lgov2/nist/javax2/sip/DialogFilter;->transactionChannel:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 1161
    .local v7, "transaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    iget-object v6, v5, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 1163
    .local v6, "sipStackImpl":Lgov2/nist/javax2/sip/SipStackImpl;
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    .line 1167
    :goto_1
    if-eqz v7, :cond_c

    const/4 v3, 0x0

    .line 1238
    .local v3, "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    new-instance v3, Lgov2/nist/javax2/sip/ResponseEventExt;

    .end local v3    # "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    invoke-direct {v3, v5, v7, p3, p1}, Lgov2/nist/javax2/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/ClientTransactionExt;Ljavax2/sip/Dialog;Ljavax2/sip/message/Response;)V

    .line 1240
    .local v3, "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeqHeader()Ljavax2/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 1247
    :goto_2
    if-nez p3, :cond_19

    .line 1253
    :cond_1
    :goto_3
    invoke-virtual {v5, v3, v7}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1255
    return-void

    .line 1127
    .end local v3    # "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    .end local v5    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    .end local v6    # "sipStackImpl":Lgov2/nist/javax2/sip/SipStackImpl;
    .end local v7    # "transaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_2
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PROCESSING INCOMING RESPONSE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1131
    :cond_3
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1134
    :goto_4
    return-void

    .line 1132
    :cond_4
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Dropping message: No listening point registered!"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_4

    .line 1137
    :cond_5
    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgov2/nist/javax2/sip/Utils;->responseBelongsToUs(Lgov2/nist/javax2/sip/message/SIPResponse;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1138
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1143
    :goto_5
    return-void

    .line 1139
    :cond_6
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Dropping response - topmost VIA header does not originate from this stack"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_5

    .line 1148
    .restart local v5    # "sipProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_7
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1151
    :goto_6
    return-void

    .line 1149
    :cond_8
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Dropping message:  no provider"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_6

    .line 1154
    :cond_9
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1157
    :goto_7
    return-void

    .line 1155
    :cond_a
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "No listener -- dropping response!"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_7

    .line 1164
    .restart local v6    # "sipStackImpl":Lgov2/nist/javax2/sip/SipStackImpl;
    .restart local v7    # "transaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_b
    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Transaction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1172
    :cond_c
    if-nez p3, :cond_e

    .line 1215
    :cond_d
    :goto_8
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_16

    .line 1222
    :goto_9
    new-instance v4, Lgov2/nist/javax2/sip/ResponseEventExt;

    invoke-direct {v4, v5, v7, p3, p1}, Lgov2/nist/javax2/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/ClientTransactionExt;Ljavax2/sip/Dialog;Ljavax2/sip/message/Response;)V

    .line 1225
    .local v4, "sipEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeqHeader()Ljavax2/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 1231
    :goto_a
    invoke-virtual {v5, v4, v7}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 1232
    return-void

    .line 1173
    .end local v4    # "sipEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    :cond_e
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    div-int/lit8 v8, v8, 0x64

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    .line 1180
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    if-eq v8, v9, :cond_12

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "ackAlreadySent":Z
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v8

    if-nez v8, :cond_14

    .line 1196
    :cond_f
    :goto_b
    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1200
    :try_start_0
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_15

    .line 1204
    :goto_c
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax2/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    return-void

    .line 1174
    .end local v0    # "ackAlreadySent":Z
    :cond_10
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_11

    .line 1179
    :goto_d
    return-void

    .line 1175
    :cond_11
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Response is not a final response and dialog is found for response -- dropping response!"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_d

    .line 1181
    :cond_12
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1185
    :goto_e
    return-void

    .line 1182
    :cond_13
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Dialog is terminated -- dropping response!"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_e

    .line 1188
    .restart local v0    # "ackAlreadySent":Z
    :cond_14
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1189
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLastAckSent()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v8

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v8

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    .line 1192
    const/4 v0, 0x1

    goto :goto_b

    .line 1201
    :cond_15
    :try_start_1
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Retransmission of OK detected: Resending last ACK"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax2/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 1205
    :catch_0
    move-exception v1

    .line 1208
    .local v1, "ex":Ljavax2/sip/SipException;
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1209
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "could not resend ack"

    invoke-interface {v8, v9, v1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_8

    .line 1216
    .end local v0    # "ackAlreadySent":Z
    .end local v1    # "ex":Ljavax2/sip/SipException;
    :cond_16
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "could not find tx, handling statelessly Dialog =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1226
    .restart local v4    # "sipEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    :cond_17
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov2/nist/javax2/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 1228
    .local v2, "forked":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v4, v2}, Lgov2/nist/javax2/sip/ResponseEventExt;->setOriginalTransaction(Lgov2/nist/javax2/sip/ClientTransactionExt;)V

    goto/16 :goto_a

    .line 1241
    .end local v2    # "forked":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v4    # "sipEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    .restart local v3    # "responseEvent":Lgov2/nist/javax2/sip/ResponseEventExt;
    :cond_18
    iget-object v8, p0, Lgov2/nist/javax2/sip/DialogFilter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov2/nist/javax2/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 1243
    .restart local v2    # "forked":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, v2}, Lgov2/nist/javax2/sip/ResponseEventExt;->setOriginalTransaction(Lgov2/nist/javax2/sip/ClientTransactionExt;)V

    goto/16 :goto_2

    .line 1247
    .end local v2    # "forked":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_19
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_1

    .line 1249
    invoke-virtual {p3, v7, p1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->setLastResponse(Lgov2/nist/javax2/sip/stack/SIPTransaction;Lgov2/nist/javax2/sip/message/SIPResponse;)V

    .line 1250
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p3, v8}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
