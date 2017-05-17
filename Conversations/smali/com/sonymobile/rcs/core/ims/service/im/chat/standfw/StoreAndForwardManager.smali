.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;
.super Ljava/lang/Object;
.source "StoreAndForwardManager.java"


# instance fields
.field private imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;)V
    .locals 1
    .param p1, "imsService"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 54
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .line 55
    return-void
.end method


# virtual methods
.method public receiveStoredMessages(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 72
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;->startSession()V

    .line 75
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleStoreAndForwardMsgSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;)V

    .line 77
    return-void

    .line 64
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Receive stored messages"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveStoredNotifications(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 94
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->startSession()V

    .line 95
    return-void

    .line 86
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/StoreAndForwardManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Receive stored notifications"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
