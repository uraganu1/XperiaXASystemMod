.class public Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;
.super Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
.source "HttpDigestRegistrationProcedure.java"


# instance fields
.field private digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 57
    return-void
.end method


# virtual methods
.method public getHomeDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDigest()Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    return-object v0
.end method

.method public getPublicUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUriForRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    .line 64
    return-void
.end method

.method public readSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WWW-Authenticate"

    .line 155
    invoke-virtual {p1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/WWWAuthenticateHeader;

    .local v2, "wwwHeader":Ljavax2/sip/header/WWWAuthenticateHeader;
    const-string/jumbo v3, "Authentication-Info"

    .line 157
    invoke-virtual {p1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/AuthenticationInfoHeader;

    .line 160
    .local v1, "infoHeader":Ljavax2/sip/header/AuthenticationInfoHeader;
    if-nez v2, :cond_2

    .line 180
    if-nez v1, :cond_4

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 152
    .end local v1    # "infoHeader":Ljavax2/sip/header/AuthenticationInfoHeader;
    .end local v2    # "wwwHeader":Ljavax2/sip/header/WWWAuthenticateHeader;
    :cond_1
    return-void

    .line 164
    .restart local v1    # "infoHeader":Ljavax2/sip/header/AuthenticationInfoHeader;
    .restart local v2    # "wwwHeader":Ljavax2/sip/header/WWWAuthenticateHeader;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v2}, Ljavax2/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setRealm(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v2}, Ljavax2/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setOpaque(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v2}, Ljavax2/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setQop(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v2}, Ljavax2/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setNextnonce(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 178
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v4, "Can\'t read the security header"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the WWW-Authenticate header"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljavax2/sip/header/AuthenticationInfoHeader;->getNextNonce()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v1}, Ljavax2/sip/header/AuthenticationInfoHeader;->getNextNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setNextnonce(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 192
    :goto_2
    new-instance v3, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v4, "Can\'t read the security header"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the authentication-info header"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public writeSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 14
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v12, ""

    .line 98
    .local v12, "realm":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 101
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getRealm()Ljava/lang/String;

    move-result-object v12

    :goto_0
    const-string/jumbo v9, ""

    .line 106
    .local v9, "nonce":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNextnonce()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    const-string/jumbo v13, ""

    .line 113
    .local v13, "response":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    .line 121
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Digest username=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPrivateID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",uri=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",algorithm=MD5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",realm=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",nonce=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",response=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "auth":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getOpaque()Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "opaque":Ljava/lang/String;
    if-nez v10, :cond_5

    .line 128
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getQop()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "qop":Ljava/lang/String;
    if-nez v11, :cond_6

    :cond_0
    :goto_4
    const-string/jumbo v0, "Authorization"

    .line 135
    invoke-virtual {p1, v0, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 92
    .end local v7    # "auth":Ljava/lang/String;
    .end local v9    # "nonce":Ljava/lang/String;
    .end local v10    # "opaque":Ljava/lang/String;
    .end local v11    # "qop":Ljava/lang/String;
    .end local v12    # "realm":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    :cond_1
    return-void

    .line 99
    .restart local v12    # "realm":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getRealm()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 107
    .restart local v9    # "nonce":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->updateNonceParameters()V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNonce()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 114
    .restart local v13    # "response":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPrivateID()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "user":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 126
    .end local v1    # "user":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    .restart local v7    # "auth":Ljava/lang/String;
    .restart local v10    # "opaque":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",opaque=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .restart local v11    # "qop":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "auth"

    .line 129
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",nc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",qop="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",cnonce=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getCnonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_4

    .line 141
    .end local v7    # "auth":Ljava/lang/String;
    .end local v9    # "nonce":Ljava/lang/String;
    .end local v10    # "opaque":Ljava/lang/String;
    .end local v11    # "qop":Ljava/lang/String;
    .end local v12    # "realm":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 140
    :goto_5
    new-instance v0, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v3, "Can\'t write the security header"

    invoke-direct {v0, v3}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t create the authorization header"

    invoke-virtual {v0, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
