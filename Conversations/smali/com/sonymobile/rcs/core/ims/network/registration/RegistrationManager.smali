.class public Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;


# instance fields
.field private final MAX_403_REGISTRATION_FAILURES:I

.field private final MAX_REGISTRATION_FAILURES:I

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private expirePeriod:I

.field private featureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initRegistrationDone:Z

.field private instanceId:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

.field private final mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

.field private mNbFailures:I

.field private mRegBaseTime:I

.field private mRegMaxTime:I

.field private mRetryDuration:I

.field private mStartPollOnFailure:Z

.field private nb401Failures:I

.field private nb4xx5xx6xxFailures:I

.field private needUnregister:Z

.field private networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

.field private registered:Z

.field private registering:Z

.field private registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;)V
    .locals 2
    .param p1, "networkInterface"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .param p2, "registrationProcedure"    # Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 106
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    .line 116
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->initRegistrationDone:Z

    .line 121
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registering:Z

    .line 126
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->needUnregister:Z

    .line 131
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    .line 136
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb4xx5xx6xxFailures:I

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 155
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mStartPollOnFailure:Z

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    const/4 v0, 0x3

    .line 182
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->MAX_REGISTRATION_FAILURES:I

    const/4 v0, 0x5

    .line 187
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->MAX_403_REGISTRATION_FAILURES:I

    .line 197
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .line 198
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    .line 199
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationUtils;->getSupportedFeatureTags()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    .line 200
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRegisterExpirePeriod()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    .line 201
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    .line 202
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRegisterRetryBaseTime()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRegBaseTime:I

    .line 203
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRegisterRetryMaxTime()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRegMaxTime:I

    .line 205
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGruuSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getInstanceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized doUnRegistration()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 385
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->needUnregister:Z

    .line 386
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    if-eqz v3, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->stopTimer()V

    .line 395
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    const/4 v3, 0x0

    .line 398
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    const/4 v3, 0x0

    .line 401
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    const/4 v3, 0x0

    .line 404
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb4xx5xx6xxFailures:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 412
    .local v1, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    .end local v1    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    .line 428
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->resetDialogPath()V

    .line 431
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/rcs/core/CoreListener;->handleRegistrationTerminated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 432
    return-void

    :cond_1
    monitor-exit p0

    .line 388
    return-void

    .line 417
    .restart local v1    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unregistration has failed"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_1
    move-exception v2

    .line 419
    .local v2, "se":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    :try_start_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unregistration has failed"

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v2    # "se":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handle200OK()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v18

    if-nez v18, :cond_4

    .line 543
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v12

    .local v12, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    const-string/jumbo v18, "P-Associated-URI"

    .line 546
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v4

    .line 547
    .local v4, "associatedHeader":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    sget-object v18, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->setAssociatedUri(Ljava/util/ListIterator;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->setInstanceId(Ljava/lang/String;)V

    const-string/jumbo v18, "Contact"

    .line 551
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v7

    .line 552
    .local v7, "contacts":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_5

    const-string/jumbo v18, "Service-Route"

    .line 565
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v14

    .line 566
    .local v14, "routes":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->setServiceRoutePath(Ljava/util/ListIterator;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    .line 573
    .local v9, "localIpAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getViaHeaders()Ljava/util/ListIterator;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax2/sip/header/ViaHeader;

    .local v13, "respViaHeader":Ljavax2/sip/header/ViaHeader;
    const-string/jumbo v18, "received"

    .line 574
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax2/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, "received":Ljava/lang/String;
    invoke-interface {v13}, Ljavax2/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 577
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatTraversal(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatPublicAddress(Ljava/lang/String;)V

    const-string/jumbo v18, "rport"

    .line 579
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax2/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "viaRportStr":Ljava/lang/String;
    const/16 v16, -0x1

    .line 581
    .local v16, "viaRport":I
    if-nez v17, :cond_8

    .line 590
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatPublicPort(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v18

    if-nez v18, :cond_9

    .line 599
    .end local v16    # "viaRport":I
    .end local v17    # "viaRportStr":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v18

    if-nez v18, :cond_a

    .line 604
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->readSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 607
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 608
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    move/from16 v18, v0

    const/16 v19, 0x4b0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x258

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->startTimer(I)V

    .line 618
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sonymobile/rcs/core/CoreListener;->handleRegistrationSuccessful()V

    .line 621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->needUnregister:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 624
    :goto_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registering:Z

    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 635
    :cond_3
    :goto_7
    return-void

    .line 540
    .end local v4    # "associatedHeader":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    .end local v7    # "contacts":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    .end local v9    # "localIpAddr":Ljava/lang/String;
    .end local v11    # "received":Ljava/lang/String;
    .end local v12    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v13    # "respViaHeader":Ljavax2/sip/header/ViaHeader;
    .end local v14    # "routes":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    const-string/jumbo v19, "200 OK response received"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    .restart local v4    # "associatedHeader":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    .restart local v7    # "contacts":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    .restart local v12    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_5
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax2/sip/header/ContactHeader;

    .local v5, "contact":Ljavax2/sip/header/ContactHeader;
    const-string/jumbo v18, "+sip.instance"

    .line 554
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, "contactInstanceId":Ljava/lang/String;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "pub-gruu"

    .line 557
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 558
    .local v10, "pubGruu":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->setPublicGruu(Ljava/lang/String;)V

    const-string/jumbo v18, "temp-gruu"

    .line 559
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, "tempGruu":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->setTemporaryGruu(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    .end local v5    # "contact":Ljavax2/sip/header/ContactHeader;
    .end local v6    # "contactInstanceId":Ljava/lang/String;
    .end local v10    # "pubGruu":Ljava/lang/String;
    .end local v15    # "tempGruu":Ljava/lang/String;
    .restart local v9    # "localIpAddr":Ljava/lang/String;
    .restart local v11    # "received":Ljava/lang/String;
    .restart local v13    # "respViaHeader":Ljavax2/sip/header/ViaHeader;
    .restart local v14    # "routes":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    :cond_6
    if-nez v11, :cond_7

    .line 595
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatTraversal(Z)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatPublicAddress(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatPublicPort(I)V

    goto/16 :goto_3

    .line 575
    :cond_7
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    goto :goto_8

    .line 583
    .restart local v16    # "viaRport":I
    .restart local v17    # "viaRportStr":Ljava/lang/String;
    :cond_8
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    goto/16 :goto_2

    .line 588
    :catch_0
    move-exception v8

    .line 585
    .local v8, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Non-numeric rport value \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 592
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "NAT public interface detected: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 600
    .end local v16    # "viaRport":I
    .end local v17    # "viaRportStr":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "NAT traversal detection: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isBehindNat()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 612
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    move/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->startTimer(ID)V

    goto/16 :goto_5

    .line 622
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->doUnRegistration()V

    goto/16 :goto_6

    .line 625
    :cond_d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSipKeepAliveEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v18

    if-nez v18, :cond_e

    .line 629
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->start()V

    goto/16 :goto_7

    .line 627
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Registration done. Starting keep alive timer"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private handle200OkUnregister()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatPublicAddress(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->setNatPublicPort(I)V

    .line 651
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "200 OK response received"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle302MovedTemporarily()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 662
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 667
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v3

    .line 668
    .local v3, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v4

    const-string/jumbo v5, "Contact"

    invoke-interface {v4, v5}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContactHeader;

    .line 669
    .local v0, "contactHeader":Ljavax2/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "newUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setTarget(Ljava/lang/String;)V

    .line 673
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 676
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 679
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    .line 685
    .local v2, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 686
    return-void

    .line 663
    .end local v0    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    .end local v1    # "newUri":Ljava/lang/String;
    .end local v2    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v3    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "302 Moved Temporarily response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .restart local v0    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    .restart local v1    # "newUri":Ljava/lang/String;
    .restart local v3    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send REGISTER to new address"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle401Unauthorized()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 726
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 729
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->readSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 732
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 735
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 738
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 742
    .local v0, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 743
    return-void

    .line 723
    .end local v0    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "401 response received, nbFailures="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    .restart local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send REGISTER with security token"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle403ForbiddenUser()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 692
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 693
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->getRegForbiddenCount(Landroid/content/Context;)I

    move-result v2

    .local v2, "regForbiddenCount":I
    const/4 v3, 0x5

    .line 694
    if-lt v2, v3, :cond_0

    .line 703
    invoke-static {v0, v6}, Lcom/sonymobile/rcs/service/LauncherUtils;->setRegForbiddenCount(Landroid/content/Context;I)V

    .line 704
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v0, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 705
    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    .line 706
    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    .line 707
    new-instance v1, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-direct {v1, v0}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 708
    .local v1, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-virtual {v1, v0, v6}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 711
    .end local v1    # "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    :goto_0
    return-void

    .line 695
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 696
    invoke-static {v0, v2}, Lcom/sonymobile/rcs/service/LauncherUtils;->setRegForbiddenCount(Landroid/content/Context;I)V

    .line 697
    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsCoreService(Landroid/content/Context;)V

    .line 698
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    const-string/jumbo v5, "com.sonymobile.rcs.PROVISIONING"

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 701
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    goto :goto_0
.end method

.method private handle423IntervalTooBrief()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 782
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v2

    .line 785
    .local v2, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 788
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getMinExpiresPeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I

    move-result v0

    .local v0, "minExpire":I
    const/4 v3, -0x1

    .line 789
    if-eq v0, v3, :cond_1

    .line 798
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    .line 801
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 804
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 808
    .local v1, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 809
    return-void

    .line 779
    .end local v0    # "minExpire":I
    .end local v1    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "423 response received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    .restart local v0    # "minExpire":I
    .restart local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 793
    :goto_2
    new-instance v3, Lcom/sonymobile/rcs/core/ims/ImsError;

    const/4 v4, 0x1

    const-string/jumbo v5, "No Min-Expires value found"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    .line 794
    return-void

    .line 791
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the Min-Expires value"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 802
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Send new REGISTER"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle4xx5xx6xxNoRetryAfterHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 764
    .local v0, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 766
    return-void

    .line 757
    .end local v0    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, " 4xx5xx6xx response without retry after  received"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V
    .locals 5
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/ImsError;

    .prologue
    const/4 v4, 0x0

    .line 817
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 821
    :goto_0
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    .line 824
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->stopTimer()V

    .line 827
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/CoreListener;->handleRegistrationFailed(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    .line 829
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mStartPollOnFailure:Z

    if-nez v1, :cond_1

    .line 842
    :goto_1
    return-void

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registration has failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/ImsError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/ImsError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRegMaxTime:I

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRegBaseTime:I

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    invoke-static {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationUtils;->calculateRetryPeriod(III)I

    move-result v0

    .line 834
    .local v0, "initPollingPeriod":I
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 839
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->start(I)V

    .line 840
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mStartPollOnFailure:Z

    goto :goto_1

    .line 831
    .end local v0    # "initPollingPeriod":I
    :cond_2
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    goto :goto_2

    .line 835
    .restart local v0    # "initPollingPeriod":I
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Started ims polling on registration failure. First re-try  after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private resetDialogPath()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 848
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 849
    return-void
.end method

.method private retrieveExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const/4 v6, -0x1

    const-string/jumbo v4, "Contact"

    .line 858
    invoke-virtual {p1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .line 859
    .local v1, "contacts":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    if-nez v1, :cond_2

    :goto_0
    const-string/jumbo v4, "Expires"

    .line 874
    invoke-virtual {p1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ExpiresHeader;

    .line 875
    .local v3, "expiresHeader":Ljavax2/sip/header/ExpiresHeader;
    if-nez v3, :cond_5

    .line 881
    :cond_0
    :goto_1
    return-void

    .line 861
    .end local v3    # "expiresHeader":Ljavax2/sip/header/ExpiresHeader;
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContactHeader;

    .line 862
    .local v0, "contact":Ljavax2/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/address/Address;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 860
    .end local v0    # "contact":Ljavax2/sip/header/ContactHeader;
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 864
    .restart local v0    # "contact":Ljavax2/sip/header/ContactHeader;
    :cond_3
    invoke-interface {v0}, Ljavax2/sip/header/ContactHeader;->getExpires()I

    move-result v2

    .line 865
    .local v2, "expires":I
    if-ne v2, v6, :cond_4

    .line 868
    :goto_2
    return-void

    .line 866
    :cond_4
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    goto :goto_2

    .line 876
    .end local v0    # "contact":Ljavax2/sip/header/ContactHeader;
    .end local v2    # "expires":I
    .restart local v3    # "expiresHeader":Ljavax2/sip/header/ExpiresHeader;
    :cond_5
    invoke-interface {v3}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    .line 877
    .restart local v2    # "expires":I
    if-eq v2, v6, :cond_0

    .line 878
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    goto :goto_1
.end method

.method private sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 7
    .param p1, "register"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 442
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->writeSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    const/4 v2, -0x1

    .line 449
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    .line 452
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .line 456
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    new-instance v2, Lcom/sonymobile/rcs/core/ims/ImsError;

    const-string/jumbo v3, "timeout"

    invoke-direct {v2, v6, v3}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    .line 528
    :goto_1
    return-void

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send REGISTER, expire="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4

    .line 469
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_6

    .line 472
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_7

    .line 487
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-eq v2, v3, :cond_9

    .line 491
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1a7

    if-eq v2, v3, :cond_a

    .line 494
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_b

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 500
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v2

    const-string/jumbo v3, "Retry-After"

    invoke-interface {v2, v3}, Ljavax2/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/RetryAfterHeader;

    .line 502
    .local v1, "retryHeader":Ljavax2/sip/header/RetryAfterHeader;
    if-nez v1, :cond_c

    .line 509
    :cond_3
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb4xx5xx6xxFailures:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb4xx5xx6xxFailures:I

    .line 510
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb4xx5xx6xxFailures:I

    if-lt v2, v6, :cond_d

    .line 515
    new-instance v2, Lcom/sonymobile/rcs/core/ims/ImsError;

    const-string/jumbo v3, "too many 4xx/5xx/6xx"

    invoke-direct {v2, v6, v3}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    goto/16 :goto_1

    .line 459
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v1    # "retryHeader":Ljavax2/sip/header/RetryAfterHeader;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mStartPollOnFailure:Z

    .line 460
    iput v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    .line 461
    iput v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    .line 462
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sonymobile/rcs/service/LauncherUtils;->setRegForbiddenCount(Landroid/content/Context;I)V

    .line 464
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v2

    if-nez v2, :cond_5

    .line 467
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle200OkUnregister()V

    goto/16 :goto_1

    .line 465
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle200OK()V

    goto/16 :goto_1

    .line 471
    :cond_6
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle302MovedTemporarily()V

    goto/16 :goto_1

    .line 474
    :cond_7
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    .line 477
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    if-lt v2, v6, :cond_8

    .line 482
    iput v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    .line 485
    new-instance v2, Lcom/sonymobile/rcs/core/ims/ImsError;

    const-string/jumbo v3, "too many 401"

    invoke-direct {v2, v6, v3}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    goto/16 :goto_1

    .line 479
    :cond_8
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle401Unauthorized()V

    goto/16 :goto_1

    .line 490
    :cond_9
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle403ForbiddenUser()V

    goto/16 :goto_1

    .line 493
    :cond_a
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle423IntervalTooBrief()V

    goto/16 :goto_1

    .line 494
    :cond_b
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x198

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1e0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f7

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v2

    const/16 v3, 0x258

    if-eq v2, v3, :cond_2

    .line 521
    new-instance v2, Lcom/sonymobile/rcs/core/ims/ImsError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    goto/16 :goto_1

    .line 502
    .restart local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .restart local v1    # "retryHeader":Ljavax2/sip/header/RetryAfterHeader;
    :cond_c
    invoke-interface {v1}, Ljavax2/sip/header/RetryAfterHeader;->getDuration()I

    move-result v2

    if-lez v2, :cond_3

    .line 504
    invoke-interface {v1}, Ljavax2/sip/header/RetryAfterHeader;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    .line 505
    new-instance v2, Lcom/sonymobile/rcs/core/ims/ImsError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry after"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax2/sip/header/RetryAfterHeader;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for 4xx/5xx/6xx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V

    goto/16 :goto_1

    .line 511
    :cond_d
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handle4xx5xx6xxNoRetryAfterHeader()V

    goto/16 :goto_1
.end method


# virtual methods
.method public getRegistrationPollManager()Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    return-object v0
.end method

.method public getRegistrationProcedure()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    return v0
.end method

.method public isRegistering()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registering:Z

    return v0
.end method

.method public periodicProcessing()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSipKeepAliveEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 901
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registration()Z

    .line 902
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Execute re-registration"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop Keep-Alive Timer till successful registration"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->stop()V

    .line 896
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->stopPingKeepAliveTask()V

    goto :goto_1
.end method

.method public poll()V
    .locals 6

    .prologue
    .line 906
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    .line 908
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 913
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mCtx:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransaction()Ljavax2/sip/Transaction;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/Transaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/message/Request;->getExpires()Ljavax2/sip/header/ExpiresHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 917
    .local v1, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v1    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    if-nez v2, :cond_3

    .line 927
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    const/4 v3, 0x3

    if-eq v3, v2, :cond_4

    .line 946
    :cond_1
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    if-gtz v2, :cond_8

    .line 956
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRegMaxTime:I

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRegBaseTime:I

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    invoke-static {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationUtils;->calculateRetryPeriod(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->start(I)V

    .line 959
    :goto_2
    return-void

    .line 909
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "RegistrationManager: Resend failed REGISTER"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 922
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Exception while polling:failed to create Register request"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 924
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 927
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 930
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 935
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    if-nez v2, :cond_6

    .line 939
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v2

    if-nez v2, :cond_7

    .line 943
    :goto_5
    return-void

    .line 931
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "3 failure re-registration attempts. Starting Registration from first"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 936
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationTerminated()V

    goto :goto_4

    .line 940
    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->initStackAndRegister()V

    goto :goto_5

    .line 948
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_9

    .line 952
    :goto_6
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->start(I)V

    goto/16 :goto_2

    .line 949
    :cond_9
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not registered. Wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mRetryDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " s before retry Registration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public declared-synchronized registration()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    monitor-enter p0

    .line 275
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mStartPollOnFailure:Z

    const/4 v1, 0x0

    .line 276
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->mNbFailures:I

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :try_start_1
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->initRegistrationDone:Z

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->initRegistrationDone:Z

    .line 286
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    :goto_1
    const/4 v1, 0x0

    .line 313
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb401Failures:I

    const/4 v1, 0x0

    .line 315
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->nb4xx5xx6xxFailures:I

    .line 319
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCseq()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->expirePeriod:I

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v1, v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    .line 327
    .local v10, "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_2
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->sendRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .end local v10    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_3
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registering:Z

    .line 337
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 282
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->init()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 333
    :goto_4
    new-instance v1, Lcom/sonymobile/rcs/core/ims/ImsError;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/sonymobile/rcs/core/ims/ImsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->handleError(Lcom/sonymobile/rcs/core/ims/ImsError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 289
    :cond_1
    :try_start_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "callId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->getHomeDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "target":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "localParty":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "remoteParty":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultRoutePath()Ljava/util/Vector;

    move-result-object v9

    .line 305
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    goto/16 :goto_1

    .line 323
    .end local v3    # "callId":Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "localParty":Ljava/lang/String;
    .end local v8    # "remoteParty":Ljava/lang/String;
    .end local v9    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->featureTags:Ljava/util/List;

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRegisterExpirePeriod()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->instanceId:Ljava/lang/String;

    invoke-static {v1, v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createRegister(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;ILjava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    .restart local v10    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    goto/16 :goto_2

    .line 331
    .end local v10    # "register":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Registration has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager$1;-><init>(Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;)V

    .line 266
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 267
    return-void
.end method

.method public declared-synchronized stopRegistration()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 350
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->resetDialogPath()V

    .line 352
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->stopTimer()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->initRegistrationDone:Z

    .line 367
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleRegistrationTerminated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 368
    return-void

    :cond_0
    monitor-exit p0

    .line 354
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unRegistration()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 374
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registered:Z

    if-nez v0, :cond_0

    .line 376
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    .line 379
    return-void

    .line 375
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->doUnRegistration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->needUnregister:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
