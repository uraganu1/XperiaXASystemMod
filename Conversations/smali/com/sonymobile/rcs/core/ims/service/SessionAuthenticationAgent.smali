.class public Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
.super Ljava/lang/Object;
.source "SessionAuthenticationAgent.java"


# instance fields
.field private digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 2
    .param p1, "imsModule"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 47
    new-instance v1, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-direct {v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    .line 61
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->getRegistrationProcedure()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    move-result-object v0

    .line 63
    .local v0, "procedure":Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
    instance-of v1, v0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;

    if-nez v1, :cond_0

    .line 66
    .end local v0    # "procedure":Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
    :goto_0
    return-void

    .line 64
    .restart local v0    # "procedure":Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
    :cond_0
    check-cast v0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;

    .end local v0    # "procedure":Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;->getHttpDigest()Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    goto :goto_0
.end method


# virtual methods
.method public readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const-string/jumbo v1, "Proxy-Authenticate"

    .line 117
    invoke-virtual {p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ProxyAuthenticateHeader;

    .line 119
    .local v0, "header":Ljavax2/sip/header/ProxyAuthenticateHeader;
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v0}, Ljavax2/sip/header/ProxyAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setRealm(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v0}, Ljavax2/sip/header/ProxyAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setQop(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-interface {v0}, Ljavax2/sip/header/ProxyAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->setNextnonce(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 11
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNextnonce()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->updateNonceParameters()V

    .line 148
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPrivateID()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "user":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "response":Ljava/lang/String;
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

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",nc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",nonce=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNextnonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",response=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",cnonce=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getCnonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "auth":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->registerDigest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getQop()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "qop":Ljava/lang/String;
    if-nez v9, :cond_2

    :goto_0
    const-string/jumbo v0, "Proxy-Authorization"

    .line 167
    invoke-virtual {p1, v0, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",qop="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 174
    .end local v1    # "user":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    .end local v7    # "auth":Ljava/lang/String;
    .end local v9    # "qop":Ljava/lang/String;
    .end local v10    # "response":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 170
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v3, "Can\'t create the authorization header"

    invoke-direct {v0, v3}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t create the authorization header"

    invoke-virtual {v0, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 11
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNextnonce()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->updateNonceParameters()V

    .line 84
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPrivateID()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "user":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "response":Ljava/lang/String;
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

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",nc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->buildNonceCounter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",nonce=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",response=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",cnonce=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getCnonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "auth":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->digest:Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->getQop()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "qop":Ljava/lang/String;
    if-nez v9, :cond_2

    :goto_0
    const-string/jumbo v0, "Proxy-Authorization"

    .line 101
    invoke-virtual {p1, v0, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",qop="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 108
    .end local v1    # "user":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    .end local v7    # "auth":Ljava/lang/String;
    .end local v9    # "qop":Ljava/lang/String;
    .end local v10    # "response":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 104
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v3, "Can\'t create the proxy authorization header"

    invoke-direct {v0, v3}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t create the proxy authorization header"

    invoke-virtual {v0, v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
