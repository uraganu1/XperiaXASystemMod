.class public Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;
.super Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
.source "OriginatingSipSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->createOriginatingDialogPath()V

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "localSetup":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->generateSdp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "sdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 75
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 90
    .end local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "localSetup":Ljava/lang/String;
    .end local v3    # "sdp":Ljava/lang/String;
    :goto_1
    return-void

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a new sip session as originating"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    :goto_2
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/OriginatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
