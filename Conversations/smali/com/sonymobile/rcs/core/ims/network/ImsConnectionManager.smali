.class public Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;
.super Ljava/lang/Object;
.source "ImsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private apn:Ljava/lang/String;

.field private connectivityMgr:Landroid/net/ConnectivityManager;

.field private currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private imsServicesStarted:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mConnectionAttemptFlag:Z

.field private mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

.field private mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

.field private mIsImsTerminated:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNbFailures:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRegBaseTime:I

.field private mRegMaxTime:I

.field private mRegistrationThread:Ljava/lang/Thread;

.field private mShouldUpdateIP:Z

.field private network:I

.field private networkInterfaces:[Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

.field private networkStateListener:Landroid/support/v4/content/WakefulBroadcastReceiver;

.field private operator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 137
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "contact"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 4
    .param p1, "imsModule"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    .line 93
    new-array v1, v1, [Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkInterfaces:[Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .line 113
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    .line 133
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .line 144
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 169
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    .line 338
    new-instance v1, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkStateListener:Landroid/support/v4/content/WakefulBroadcastReceiver;

    .line 205
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 207
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mIsImsTerminated:Z

    .line 210
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->updateExternalSupportedFeatures(Landroid/content/Context;)V

    .line 213
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getNetworkAccess()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->network:I

    .line 216
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->operator:Ljava/lang/String;

    .line 217
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getNetworkApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->apn:Ljava/lang/String;

    .line 220
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->connectivityMgr:Landroid/net/ConnectivityManager;

    .line 224
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkInterfaces:[Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/network/MobileNetworkInterface;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/network/MobileNetworkInterface;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v2, v1, v3

    .line 225
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkInterfaces:[Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    const/4 v2, 0x1

    new-instance v3, Lcom/sonymobile/rcs/core/ims/network/WifiNetworkInterface;

    invoke-direct {v3, p1}, Lcom/sonymobile/rcs/core/ims/network/WifiNetworkInterface;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    aput-object v3, v1, v2

    .line 228
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->getMobileNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .line 230
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRegisterRetryBaseTime()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegBaseTime:I

    .line 231
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRegisterRetryMaxTime()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegMaxTime:I

    .line 234
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->loadUserProfile()V

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkStateListener:Landroid/support/v4/content/WakefulBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method private disconnectFromIms()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->backupGroupChatSessions()V

    .line 642
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->stopImsConnection()V

    .line 645
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationTerminated()V

    .line 648
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->disconnect()V

    .line 650
    return-void
.end method

.method private imsConnectionTrigger(Z)V
    .locals 19
    .param p1, "airplaneModeTriggered"    # Z

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->connectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    .line 403
    .local v16, "networkType":I
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isConfigValid()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 411
    packed-switch v16, :pswitch_data_0

    .line 432
    return-void

    .line 380
    .end local v16    # "networkType":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 386
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->disableFTsessionCapableContacts()V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->disconnectFromIms()V

    .line 388
    return-void

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Disconnect from IMS: Airplane Mode"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 398
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->disconnectFromIms()V

    .line 399
    return-void

    .line 396
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Disconnect from IMS: no network"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 404
    .restart local v16    # "networkType":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 407
    :goto_2
    return-void

    .line 405
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Configuration is not valid."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 414
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/service/LauncherUtils;->getLastUserAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 416
    .local v14, "lastUserAccount":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getSubscriberID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 418
    .local v11, "currentUserAccount":Ljava/lang/String;
    if-nez v14, :cond_9

    .line 425
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->connectivityMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mLinkProperties:Landroid/net/LinkProperties;

    .end local v11    # "currentUserAccount":Ljava/lang/String;
    .end local v14    # "lastUserAccount":Ljava/lang/String;
    :goto_4
    const/4 v15, 0x0

    .line 439
    .local v15, "localIpAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getType()I

    move-result v2

    move/from16 v0, v16

    if-ne v0, v2, :cond_c

    .line 491
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_12

    .line 502
    :cond_6
    :goto_5
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getLocalIpAddress(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 505
    .local v15, "localIpAddr":Ljava/lang/String;
    if-nez v15, :cond_13

    .line 532
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_18

    .line 625
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 629
    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->startImsConnection(Z)V

    .line 631
    :goto_8
    return-void

    .line 419
    .end local v15    # "localIpAddr":Ljava/lang/String;
    .restart local v11    # "currentUserAccount":Ljava/lang/String;
    .restart local v14    # "lastUserAccount":Ljava/lang/String;
    :cond_9
    if-nez v11, :cond_b

    .line 421
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCoreListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/rcs/core/CoreListener;->handleSimHasChanged()V

    .line 422
    return-void

    .line 419
    :cond_b
    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    .line 429
    .end local v11    # "currentUserAccount":Ljava/lang/String;
    .end local v14    # "lastUserAccount":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->connectivityMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mLinkProperties:Landroid/net/LinkProperties;

    goto :goto_4

    .line 441
    .local v15, "localIpAddr":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_e

    .line 446
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_f

    .line 449
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->disconnectFromIms()V

    .line 452
    packed-switch v16, :pswitch_data_1

    .line 472
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->loadUserProfile()V

    .line 476
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsResolvedFields()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    :cond_d
    :goto_c
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getLocalIpAddress(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "localIpAddr":Ljava/lang/String;
    goto :goto_6

    .line 442
    .local v15, "localIpAddr":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Data connection state: NETWORK ACCESS CHANGED"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_9

    .line 447
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Disconnect from IMS: network access has changed"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 454
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_10

    .line 457
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->getMobileNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    goto :goto_b

    .line 455
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Change the network interface to mobile"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 460
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_11

    .line 463
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->getWifiNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    goto :goto_b

    .line 461
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Change the network interface to Wi-Fi"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 484
    :catch_0
    move-exception v12

    .line 479
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Resolving remote IP address to figure out initial local IP address failed!"

    invoke-virtual {v2, v3, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 492
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsResolvedFields()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 501
    :catch_1
    move-exception v12

    .line 496
    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Resolving remote IP address to figure out initial local IP address failed!"

    invoke-virtual {v2, v3, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 506
    .end local v12    # "e":Ljava/lang/Exception;
    .local v15, "localIpAddr":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "lastIpAddr":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_17

    .line 526
    :goto_f
    return-void

    .line 510
    :cond_14
    if-nez v13, :cond_15

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "IP address available (again)"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 512
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_16

    .line 515
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->disconnectFromIms()V

    goto/16 :goto_6

    .line 513
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Disconnect from IMS: IP address has changed"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10

    .line 524
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Neither interface nor IP address has changed; nothing to do."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 532
    .end local v13    # "lastIpAddr":Ljava/lang/String;
    :cond_18
    if-eqz v15, :cond_8

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    if-nez v2, :cond_1d

    .line 551
    new-instance v17, Ljava/lang/String;

    const-string/jumbo v2, "unresolved"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 554
    .local v17, "remoteAddress":Ljava/lang/String;
    :cond_19
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 561
    :goto_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->network:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    .line 570
    :cond_1a
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 573
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v10

    .line 574
    .local v10, "currentOpe":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->operator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_22

    .line 582
    :cond_1b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_24

    .line 611
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isInterfaceConfigured()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 623
    :goto_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->startImsConnection(Z)V

    goto/16 :goto_8

    .line 535
    .end local v10    # "currentOpe":Ljava/lang/String;
    .end local v17    # "remoteAddress":Ljava/lang/String;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    iget-object v0, v2, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 536
    .restart local v17    # "remoteAddress":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->isIPV6Address(Ljava/lang/String;)I

    move-result v2

    invoke-static {v15}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->isIPV6Address(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_19

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 542
    :goto_14
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsResolvedFields()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    iget-object v0, v2, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_11

    .line 538
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remote address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and localIPAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " are not equal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_14

    .line 548
    :catch_2
    move-exception v12

    .line 545
    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unable to resolve the DNS fields"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 555
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data connection state: CONNECTED to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with local IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " valid for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 561
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->network:I

    move/from16 v0, v16

    if-eq v2, v0, :cond_1a

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_21

    .line 566
    :goto_15
    return-void

    .line 563
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not authorized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_15

    .line 574
    .restart local v10    # "currentOpe":Ljava/lang/String;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->operator:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_23

    .line 579
    :goto_16
    return-void

    .line 577
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Operator not authorized"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_16

    .line 586
    :cond_24
    if-nez v16, :cond_1c

    .line 587
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .local v9, "currentApn":Ljava/lang/String;
    const-string/jumbo v2, "content://telephony/carriers/preferapn"

    .line 590
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "apn"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 594
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_25

    .line 601
    .end local v9    # "currentApn":Ljava/lang/String;
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->apn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->apn:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_27

    .line 605
    :goto_18
    return-void

    .restart local v9    # "currentApn":Ljava/lang/String;
    :cond_25
    const-string/jumbo v2, "apn"

    .line 595
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 596
    .local v7, "apnIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_26

    .line 599
    .end local v9    # "currentApn":Ljava/lang/String;
    :goto_19
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 597
    .restart local v9    # "currentApn":Ljava/lang/String;
    :cond_26
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "currentApn":Ljava/lang/String;
    goto :goto_19

    .line 603
    .end local v7    # "apnIndex":I
    .end local v9    # "currentApn":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "APN not authorized"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_18

    .line 612
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_29

    .line 615
    :goto_1a
    return-void

    .line 613
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "IMS network interface not well configured"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1a

    .line 620
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Connect to IMS"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 626
    .end local v10    # "currentOpe":Ljava/lang/String;
    .end local v17    # "remoteAddress":Ljava/lang/String;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Error while connecting to IMS. Start re-trying exponentially"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 452
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isIPV6Address(Ljava/lang/String;)I
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 955
    return v0

    .line 953
    :cond_0
    return v1
.end method

.method private loadUserProfile()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getUserProfile()Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    .line 302
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "User profile has been reloaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startImsConnection(Z)V
    .locals 6
    .param p1, "startFailurePolling"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 657
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mConnectionAttemptFlag:Z

    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    if-eqz v1, :cond_2

    .line 668
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 672
    :goto_1
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mConnectionAttemptFlag:Z

    .line 673
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mShouldUpdateIP:Z

    .line 674
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    .line 676
    if-eqz p1, :cond_4

    .line 689
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .line 690
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegMaxTime:I

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegBaseTime:I

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    invoke-static {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationUtils;->calculateRetryPeriod(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->startPolling(I)V

    .line 693
    :goto_2
    return-void

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 662
    :goto_3
    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "startImsConnection: Already connected"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 665
    :cond_2
    new-instance v1, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    goto :goto_0

    .line 669
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Start the IMS connection manager"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_4
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    .line 680
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 687
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 685
    :goto_4
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mConnectionAttemptFlag:Z

    .line 686
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    goto :goto_2

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Internal exception while starting IMS polling thread"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private startPolling(I)V
    .locals 3
    .param p1, "retryPeriod"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    if-nez v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    if-nez v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 859
    :goto_1
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->getRegistrationPollManager()Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 848
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->getRegistrationPollManager()Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->stop()V

    goto :goto_0

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stopping ImsPollManager of RegistrationManager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 855
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->start(I)V

    goto :goto_1

    .line 853
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s before retry to start services"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 857
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "mImsPollManager instance is null. No need to start polling"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized stopImsConnection()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 699
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mConnectionAttemptFlag:Z

    if-eqz v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    if-nez v1, :cond_4

    .line 713
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    if-nez v1, :cond_5

    .line 718
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 721
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mConnectionAttemptFlag:Z

    const/4 v1, 0x0

    .line 722
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_7

    :cond_1
    :goto_3
    const/4 v1, 0x0

    .line 734
    :try_start_2
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    .line 738
    :goto_4
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_9

    :goto_5
    monitor-exit p0

    .line 742
    return-void

    .line 700
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :goto_6
    monitor-exit p0

    .line 704
    return-void

    .line 701
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "stopImsConnection:Already disconnected"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 708
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->getRegistrationPollManager()Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->getRegistrationPollManager()Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->stop()V

    goto :goto_0

    .line 714
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->stop()V

    const/4 v1, 0x0

    .line 715
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mImsPollManager:Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;

    goto :goto_1

    .line 719
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Stop the IMS connection manager"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 726
    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 735
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    const/4 v1, 0x0

    .line 734
    :try_start_8
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 731
    :cond_8
    :try_start_9
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Internal exception while stopping IMS polling thread"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    .line 734
    :try_start_a
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegistrationThread:Ljava/lang/Thread;

    throw v1

    .line 739
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->stopImsServices()V

    .line 740
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized connectionEvent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "state"

    .line 358
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    .local v0, "airplaneModeTriggered":Z
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 369
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsConnectionTrigger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 370
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v6, "noConnectivity"

    .line 360
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "connectivity":Z
    const-string/jumbo v6, "reason"

    .line 362
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    const-string/jumbo v6, "isFailover"

    .line 363
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 364
    .local v2, "failover":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "intentAction":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connectivity event change: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", failover="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", connectivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", reason="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", Airplane Mode Triggered="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "airplaneModeTriggered":Z
    .end local v1    # "connectivity":Z
    .end local v2    # "failover":Z
    .end local v3    # "intentAction":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0    # "airplaneModeTriggered":Z
    .restart local v1    # "connectivity":Z
    .restart local v2    # "failover":Z
    .restart local v3    # "intentAction":Ljava/lang/String;
    .restart local v4    # "reason":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    return-object v0
.end method

.method public getMobileNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkInterfaces:[Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWifiNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkInterfaces:[Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public initStackAndRegister()V
    .locals 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mConnectionAttemptFlag:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    .line 766
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .line 767
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->poll()V

    .line 769
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    :goto_1
    return-void

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "initStackAndRegister: IMS connection terminated already. No need to trigger re-register"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "initStackAndRegister: Starting Registration"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnectedToMobile()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->getMobileNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 292
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectedToWifi()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->getWifiNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public poll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 773
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 780
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->isReady()Z

    move-result v1

    if-nez v1, :cond_9

    .line 815
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_b

    .line 829
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 834
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z

    if-eqz v1, :cond_e

    .line 838
    :goto_2
    return-void

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "IMSConnectionManager: check IMS connection"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 786
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->register(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 796
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 800
    :goto_4
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    const/4 v1, 0x0

    .line 802
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 826
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_c

    .line 825
    :goto_5
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mDnsResolvedFields:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    goto :goto_1

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Not yet registered to IMS: try registration"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 787
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 790
    :goto_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->isReady()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    :goto_7
    const/4 v1, 0x0

    .line 794
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    goto :goto_1

    .line 788
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Registered to the IMS with success: start IMS services"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 790
    :cond_7
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z

    if-nez v1, :cond_5

    .line 791
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->startImsServices()V

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z

    goto :goto_7

    .line 797
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t register to the IMS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 806
    :cond_9
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z

    if-nez v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_a

    .line 810
    :goto_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->startImsServices()V

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->imsServicesStarted:Z

    const/4 v1, 0x0

    .line 812
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    goto/16 :goto_1

    .line 808
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Already registered to IMS: start IMS services"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 816
    :cond_b
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Already registered to IMS: IMS services not yet started"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 822
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_c
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Internal exception"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegMaxTime:I

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mRegBaseTime:I

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNbFailures:I

    invoke-static {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationUtils;->calculateRetryPeriod(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->startPolling(I)V

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x5

    .line 836
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->startPolling(I)V

    goto/16 :goto_2
.end method

.method public run()V
    .locals 0

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->poll()V

    .line 749
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mIsImsTerminated:Z

    .line 318
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->stopImsConnection()V

    .line 321
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->unregister()V

    .line 325
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->networkStateListener:Landroid/support/v4/content/WakefulBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    :goto_2
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminate the IMS connection manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS connection manager has been terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateIpAndCertificate(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;)V
    .locals 5
    .param p1, "dnsResolvedFields"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .prologue
    const/4 v4, 0x0

    .line 966
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mShouldUpdateIP:Z

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    .line 977
    .local v0, "ipAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_4

    .line 988
    .end local v0    # "ipAddress":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 970
    :goto_2
    return-void

    .line 968
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Ip already updated. No need to re-update"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 974
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Updating ip address and client certificate"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    .restart local v0    # "ipAddress":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 978
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getLocalIpAddress(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->currentNetworkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->connect(Ljava/lang/String;)V

    .line 985
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->mShouldUpdateIP:Z

    goto :goto_1
.end method
