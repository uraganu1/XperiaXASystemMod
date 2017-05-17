.class public Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;
.super Ljava/lang/Object;
.source "HttpAuthenticationAgent.java"


# instance fields
.field private digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

.field private isDigestAuthentication:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private serverLogin:Ljava/lang/String;

.field private serverPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 51
    new-instance v0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    .line 65
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverLogin:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverPwd:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .local v2, "value":Ljava/lang/String;
    const/4 v1, -0x1

    .line 189
    .local v1, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "begin":I
    if-ne v0, v6, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 197
    if-ne v0, v6, :cond_2

    .line 204
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 191
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    const-string/jumbo v3, "\""

    .line 192
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 193
    if-eq v1, v6, :cond_1

    .line 194
    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 193
    .local v2, "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const-string/jumbo v3, ","

    .line 199
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 200
    if-eq v1, v6, :cond_3

    .line 201
    :goto_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 200
    .local v2, "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Authorization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->generateAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "auth":Ljava/lang/String;
    return-object v0
.end method

.method public generateAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->isDigestAuthentication:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->updateNonceParameters()V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Digest username=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",nonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",uri=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",cnonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getCnonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "authValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getOpaque()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "opaque":Ljava/lang/String;
    if-nez v9, :cond_2

    :goto_0
    const-string/jumbo v11, ""

    .line 120
    .local v11, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getQop()Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, "qop":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverLogin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 132
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",response=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    return-object v7

    .line 101
    .end local v7    # "authValue":Ljava/lang/String;
    .end local v9    # "opaque":Ljava/lang/String;
    .end local v10    # "qop":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/Base64;->encodeBase64ToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    .restart local v7    # "authValue":Ljava/lang/String;
    .restart local v9    # "opaque":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",opaque=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .restart local v10    # "qop":Ljava/lang/String;
    .restart local v11    # "response":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "auth"

    .line 121
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverLogin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->serverPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto/16 :goto_1

    .line 134
    .end local v7    # "authValue":Ljava/lang/String;
    .end local v9    # "opaque":Ljava/lang/String;
    .end local v10    # "qop":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v1, "Can\'t create the authorization value"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Can\'t create the authorization value"

    invoke-virtual {v0, v1, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public readWwwAuthenticateHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "Digest"

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->isDigestAuthentication:Z

    .line 157
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->isDigestAuthentication:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "realm"

    .line 162
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setRealm(Ljava/lang/String;)V

    const-string/jumbo v1, "opaque"

    .line 166
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setOpaque(Ljava/lang/String;)V

    const-string/jumbo v1, "qop"

    .line 170
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setQop(Ljava/lang/String;)V

    const-string/jumbo v1, "nonce"

    .line 174
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setNextnonce(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method
