.class public Lcom/sonymobile/rcs/core/ims/service/sip/SipService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "SipService.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 64
    return-void
.end method


# virtual methods
.method public getSipSessions()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 146
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 147
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    return-object v1

    .line 148
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 149
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v3, v2, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    if-eqz v3, :cond_0

    .line 150
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSipSessionsWith(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 166
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 167
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    return-object v1

    .line 168
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 169
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v3, v2, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public initiateSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "featureTag"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->startSession()V

    .line 112
    return-object v0

    .line 103
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initiate a session with contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveInstantMessage(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 285
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-static {p2, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v3

    .line 290
    .local v3, "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "contact":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "number":Ljava/lang/String;
    const-string/jumbo v4, "contact"

    .line 301
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "contactDisplayname"

    .line 302
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "content"

    .line 303
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "contentType"

    .line 304
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/sonymobile/rcs/core/CoreListener;->handleSipInstantMessageReceived(Landroid/content/Intent;)V

    .line 308
    return-void

    .line 286
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send 200 OK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    :goto_1
    return-void

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t send 200 OK response"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public receiveSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 123
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    invoke-direct {v1, p0, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 126
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->startSession()V

    .line 129
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v2, "contact"

    .line 130
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "contactDisplayname"

    .line 131
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sessionId"

    .line 132
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/sonymobile/rcs/core/CoreListener;->handleSipSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V

    .line 136
    return-void
.end method

.method public sendInstantMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "featureTag"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 189
    const/16 v17, 0x0

    .line 191
    .local v17, "result":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 196
    :goto_0
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    .line 200
    .local v4, "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "contactUri":Ljava/lang/String;
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1

    sget-object v11, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v13

    move-object v12, v10

    invoke-direct/range {v5 .. v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 207
    .local v5, "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 210
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v16

    .line 214
    .local v16, "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v14

    .line 217
    .local v14, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0x197

    if-eq v6, v7, :cond_4

    .line 255
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_a

    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_b

    .line 260
    :goto_2
    const/16 v17, 0x1

    .line 273
    .end local v4    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v5    # "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .end local v10    # "contactUri":Ljava/lang/String;
    .end local v14    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v16    # "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    :goto_3
    return v17

    .line 192
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Send instant message to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v15

    .line 269
    .local v15, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t send MESSAGE request"

    invoke-virtual {v6, v7, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 208
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v4    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .restart local v5    # "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .restart local v10    # "contactUri":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send first MESSAGE"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    .restart local v14    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v16    # "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    .line 224
    :goto_4
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 227
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 230
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_7

    .line 233
    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v16

    .line 236
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v14

    .line 242
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_8

    .line 244
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_9

    .line 247
    :goto_6
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 220
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "407 response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 231
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send second MESSAGE"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_5

    .line 242
    :cond_8
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xca

    if-eq v6, v7, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Send instant message has failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " response received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 245
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "20x OK response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 255
    :cond_a
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xca

    if-eq v6, v7, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Send instant message has failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " response received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 258
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "20x OK response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->setServiceStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 75
    return-void

    :cond_0
    monitor-exit p0

    .line 72
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->setServiceStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 86
    return-void

    :cond_0
    monitor-exit p0

    .line 83
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
