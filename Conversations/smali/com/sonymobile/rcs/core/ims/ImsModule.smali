.class public Lcom/sonymobile/rcs/core/ims/ImsModule;
.super Ljava/lang/Object;
.source "ImsModule.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;


# static fields
.field public static IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;


# instance fields
.field private callManager:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

.field private connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

.field private core:Lcom/sonymobile/rcs/core/Core;

.field private isReady:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mRcsContactCapabilityManager:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

.field private serviceDispatcher:Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;

.field private services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/Core;)V
    .locals 6
    .param p1, "core"    # Lcom/sonymobile/rcs/core/Core;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->isReady:Z

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 114
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->core:Lcom/sonymobile/rcs/core/Core;

    .line 116
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :goto_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    invoke-direct {v2}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->mRcsContactCapabilityManager:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    .line 124
    :try_start_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipTransactionTimeout()I

    move-result v2

    sput v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->TIMEOUT:I

    .line 134
    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/rcs/core/ims/protocol/rtp/core/RtpSource;->CNAME:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isMediaTraceActivated()Z

    move-result v2

    sput-boolean v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    .line 136
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isMediaTraceActivated()Z

    move-result v2

    sput-boolean v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->HTTP_TRACE_ENABLED:Z

    .line 140
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->loadKeyStore()V

    .line 141
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    const/4 v2, 0x7

    .line 156
    new-array v2, v2, [Lcom/sonymobile/rcs/core/ims/service/ImsService;

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .line 159
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;

    invoke-direct {v3, p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v3, v2, v4

    .line 162
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    invoke-direct {v3, p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v3, v2, v5

    .line 165
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v3, 0x2

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-direct {v4, p0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v4, v2, v3

    .line 168
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v3, 0x3

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    invoke-direct {v4, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v4, v2, v3

    .line 171
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v3, 0x4

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    invoke-direct {v4, p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v4, v2, v3

    .line 174
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v3, 0x5

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    invoke-direct {v4, p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v4, v2, v3

    .line 177
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v3, 0x6

    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    invoke-direct {v4, p0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v4, v2, v3

    .line 180
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->serviceDispatcher:Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;

    .line 183
    new-instance v2, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->callManager:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .line 185
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->isReady:Z

    .line 187
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 190
    :goto_2
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "IMS module initialization"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    :goto_3
    new-instance v2, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v3, "Can\'t instanciate the IMS connection manager"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "IMS connection manager initialization has failed"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->isOwnCertificateUsed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Built-in certificates will be used"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 153
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    :goto_4
    new-instance v2, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v3, "Keystore manager exeception"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v0    # "e":Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Own certificates will be used"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 150
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t load keystore manager"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 188
    .end local v0    # "e":Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "IMS module has been created"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/ImsModule;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public abortAllSessions()V
    .locals 9

    .prologue
    .line 480
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 483
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsServices()[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    .local v4, "services":[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    const/4 v2, 0x0

    .line 484
    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-lt v2, v6, :cond_2

    .line 501
    .end local v2    # "i":I
    .end local v4    # "services":[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    :cond_0
    :goto_2
    return-void

    .line 481
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Abort all pending sessions"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 498
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Aborting all sessions failed"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v4    # "services":[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    :cond_2
    :try_start_1
    aget-object v3, v4, v2

    .line 486
    .local v3, "service":Lcom/sonymobile/rcs/core/ims/service/ImsService;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getSessions()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_3

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 488
    .local v5, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_4
    const/4 v6, 0x0

    .line 491
    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession(I)V

    goto :goto_3

    .line 489
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Abort session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->callManager:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    return-object v0
.end method

.method public getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    return-object v0
.end method

.method public getContactCapabilityManager()Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->mRcsContactCapabilityManager:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    return-object v0
.end method

.method public getCore()Lcom/sonymobile/rcs/core/Core;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->core:Lcom/sonymobile/rcs/core/Core;

    return-object v0
.end method

.method public getCoreListener()Lcom/sonymobile/rcs/core/CoreListener;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->core:Lcom/sonymobile/rcs/core/Core;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    return-object v0
.end method

.method public getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    return-object v0
.end method

.method public getImsServices()[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    return-object v0
.end method

.method public getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    return-object v0
.end method

.method public getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    return-object v0
.end method

.method public getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    return-object v0
.end method

.method public getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    return-object v0
.end method

.method public getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    return-object v0
.end method

.method public getTermsConditionsService()Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;

    return-object v0
.end method

.method public isConnectedToMobileAccess()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->isConnectedToMobile()Z

    move-result v0

    return v0
.end method

.method public isConnectedToWifiAccess()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->isConnectedToWifi()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->isReady:Z

    return v0
.end method

.method public receiveSipRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->serviceDispatcher:Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->postSipRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 473
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->serviceDispatcher:Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->start()V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->mRcsContactCapabilityManager:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->init()V

    .line 252
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->callManager:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->startCallMonitoring()V

    .line 254
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :goto_1
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start the IMS module"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS module is started"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startImsServices()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 289
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->connectionEvent(Z)V

    .line 300
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->start()V

    goto :goto_1

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start IMS service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->callManager:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->stopCallMonitoring()V

    .line 271
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->connectionManager:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->terminate()V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->serviceDispatcher:Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->terminate()V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->mRcsContactCapabilityManager:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->cleanup()V

    .line 279
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :goto_1
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop the IMS module"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS module has been stopped"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopImsServices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 306
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/ImsModule$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/ImsModule$1;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 320
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->connectionEvent(Z)V

    .line 331
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->stop()V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stop IMS service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/ImsModule;->services:[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method
