.class public Lcom/sonymobile/rcs/service/StartService;
.super Landroid/app/Service;
.source "StartService.java"


# instance fields
.field private boot:Z

.field private connMgr:Landroid/net/ConnectivityManager;

.field private currentUserAccount:Ljava/lang/String;

.field private exLastUserAccount:Ljava/lang/String;

.field private lastUserAccount:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private networkStateListener:Landroid/content/BroadcastReceiver;

.field private rcsSettingsDump:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->connMgr:Landroid/net/ConnectivityManager;

    .line 122
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 754
    new-instance v0, Lcom/sonymobile/rcs/service/StartService$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/StartService$3;-><init>(Lcom/sonymobile/rcs/service/StartService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/service/StartService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/StartService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/StartService;->connectionEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/service/StartService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/StartService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->checkCurrentAccount()V

    return-void
.end method

.method private backupAndRestoreConfig()V
    .locals 6

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->getExLastUserAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    .line 588
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exLastUserAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "currentUserAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "lastUserAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 621
    :goto_0
    return-void

    .line 592
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 594
    .local v1, "param":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->rcsSettingsDump:Ljava/util/Map;

    invoke-virtual {v1, v3, v4, v5}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->backupConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 599
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->resetConfigParameters()V

    .line 600
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 605
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rcse_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 607
    .local v2, "restoreSettings":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 619
    .end local v2    # "restoreSettings":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/service/StartService;->setExLastUserAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->restoreConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 608
    .restart local v2    # "restoreSettings":Ljava/io/File;
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 609
    .local v0, "isDeleted":Z
    if-eqz v0, :cond_2

    .line 610
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 611
    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleting backed-up Configuration rcse_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkAccount()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 378
    new-instance v2, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 381
    .local v2, "param":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/service/LauncherUtils;->getLastUserAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    .line 382
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->isFirstLaunch()Z

    move-result v4

    if-nez v4, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->hasChangedAccount()Z

    move-result v4

    if-nez v4, :cond_4

    .line 443
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v4

    if-nez v4, :cond_7

    .line 447
    :goto_1
    invoke-direct {p0, v7}, Lcom/sonymobile/rcs/service/StartService;->setNewUserAccount(Z)V

    .line 452
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/service/LauncherUtils;->getAccountUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "account_username":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 455
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_8

    .line 477
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sonymobile/rcs/service/StartService;->setLastUserAccount(Ljava/lang/String;)V

    .line 479
    return v8

    .line 383
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "account_username":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Last user account is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current user account is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->setCountryCode()Z

    move-result v3

    .line 391
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 397
    invoke-direct {p0, v8}, Lcom/sonymobile/rcs/service/StartService;->setNewUserAccount(Z)V

    goto :goto_2

    .line 393
    :cond_3
    return v7

    .line 400
    .end local v3    # "result":Z
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->setCountryCode()Z

    move-result v3

    .line 401
    .restart local v3    # "result":Z
    if-eqz v3, :cond_5

    .line 406
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 408
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->dump()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->rcsSettingsDump:Ljava/util/Map;

    .line 410
    new-instance v4, Lcom/sonymobile/rcs/service/StartService$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/rcs/service/StartService$2;-><init>(Lcom/sonymobile/rcs/service/StartService;)V

    new-array v5, v8, [Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/service/StartService$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 423
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->resetConfigParameters()V

    .line 424
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 427
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/sonymobile/rcs/service/LauncherUtils;->setRegForbiddenCount(Landroid/content/Context;I)V

    .line 431
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 436
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setServiceActivationState(Z)V

    .line 439
    invoke-direct {p0, v8}, Lcom/sonymobile/rcs/service/StartService;->setNewUserAccount(Z)V

    .line 441
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->setLauncherComponent()V

    goto/16 :goto_2

    .line 403
    :cond_5
    return v7

    .line 432
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->createInstance(Landroid/content/Context;)V

    goto :goto_4

    .line 444
    .end local v3    # "result":Z
    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    goto/16 :goto_1

    .line 457
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "account_username":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->hasChangedAccount()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 464
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 465
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteRCSEntries()V

    .line 466
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->removeRcsAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_a

    .line 471
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->createRcsAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 462
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Deleting the old RCS account for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 469
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating a new RCS account for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private checkAccountAndStartService()V
    .locals 3

    .prologue
    .line 745
    new-instance v0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 746
    .local v0, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->checkAccount()Z

    .line 747
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/StartService;->boot:Z

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->launchRcsService(Z)V

    .line 748
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setAfterReboot(Landroid/content/Context;Z)V

    .line 749
    return-void
.end method

.method private checkCurrentAccount()V
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getSubscriberID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 783
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->checkAccountAndStartService()V

    goto :goto_0

    .line 777
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/StartService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 778
    iput-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 781
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private connectionEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    :cond_0
    :goto_1
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 280
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 285
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    .line 288
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_3
    iput-object v4, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    goto :goto_1

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Device connected - Launch RCS service"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 293
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private getExLastUserAccount()Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, "RCS"

    const/4 v2, 0x0

    .line 675
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/service/StartService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ExLastUserAccount"

    const/4 v2, 0x0

    .line 677
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNewUserAccount(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "RCS"

    .line 739
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "NewUserAccount"

    .line 741
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hasChangedAccount()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 710
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    .line 711
    :cond_0
    return v1

    .line 713
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 715
    goto :goto_0
.end method

.method private isFirstLaunch()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->lastUserAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMessagingServiceDisabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 789
    new-instance v0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 790
    .local v0, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setAfterReboot(Landroid/content/Context;Z)V

    .line 791
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->hasChangedAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPrevUserMsgAccepted()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "RCS"

    .line 664
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/service/StartService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "UserMessageAccepted"

    .line 666
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private launchRcsService(Z)V
    .locals 12
    .param p1, "boot"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 488
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getAutoConfigMode()I

    move-result v2

    .line 490
    .local v2, "mode":I
    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 495
    :goto_0
    if-eq v2, v7, :cond_3

    .line 582
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    .line 584
    :cond_0
    :goto_1
    return-void

    .line 491
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Launch RCS service: HTTPS="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eq v2, v7, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", boot="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_2

    .line 497
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRemoveAccount()Z

    move-result v5

    if-nez v5, :cond_7

    .line 507
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "-1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 520
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "-2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 526
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "-3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 532
    new-instance v3, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 534
    .local v3, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->isFirstLaunch()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 536
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->getExLastUserAccount()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    .line 538
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v5, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->backupAndRestoreConfig()V

    .line 543
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningValidity()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_f

    move v5, v7

    :goto_3
    if-nez v5, :cond_5

    .line 544
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 546
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->exLastUserAccount:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 553
    .local v4, "sameUser":Z
    if-eqz v4, :cond_10

    move v0, v6

    .line 554
    .local v0, "firstLaunch":Z
    :goto_4
    if-nez v4, :cond_11

    .line 557
    .end local v0    # "firstLaunch":Z
    :cond_6
    :goto_5
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->isMessagingServiceDisabled()Z

    move-result v5

    if-nez v5, :cond_12

    .line 561
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "first"

    .line 563
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    .end local v4    # "sameUser":Z
    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v5, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 500
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v8, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v1, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "first"

    .line 501
    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRemoveAccountState(Z)V

    goto/16 :goto_1

    .line 508
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->hasChangedAccount()Z

    move-result v5

    if-nez v5, :cond_9

    .line 516
    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Provisioning is blocked with this account"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 510
    :cond_9
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "0"

    invoke-virtual {v5, v6, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 512
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "first"

    .line 513
    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 522
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_b

    .line 525
    :goto_6
    return-void

    .line 523
    :cond_b
    iget-object v5, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "version = -2; Hence provisioning has to be triggered only via Master switch"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 528
    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 529
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 534
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    :cond_d
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->hasChangedAccount()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->wasRebooted()Z

    move-result v5

    if-nez v5, :cond_e

    .line 565
    :goto_7
    if-nez p1, :cond_13

    .line 574
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 534
    :cond_e
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->isPrevUserMsgAccepted()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_7

    :cond_f
    move v5, v6

    .line 543
    goto/16 :goto_3

    .restart local v4    # "sameUser":Z
    :cond_10
    move v0, v7

    .line 553
    goto/16 :goto_4

    .line 554
    .restart local v0    # "firstLaunch":Z
    :cond_11
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v5

    if-nez v5, :cond_6

    .line 555
    const/4 v0, 0x1

    .local v0, "firstLaunch":Z
    goto/16 :goto_5

    .line 558
    .end local v0    # "firstLaunch":Z
    :cond_12
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->stopSelf()V

    .line 559
    return-void

    .line 567
    .end local v4    # "sameUser":Z
    :cond_13
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->isMessagingServiceDisabled()Z

    move-result v5

    if-nez v5, :cond_14

    .line 571
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/rcs/service/StartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 568
    :cond_14
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->stopSelf()V

    .line 569
    return-void
.end method

.method private setCountryCode()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "phone"

    .line 308
    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/service/StartService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 309
    .local v6, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "countryCodeIso":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f040000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 320
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    .line 321
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    .line 322
    .local v5, "eventType":I
    :goto_0
    if-ne v5, v12, :cond_2

    .line 354
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_9

    .line 357
    :goto_1
    return v11

    .line 311
    .end local v5    # "eventType":I
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 314
    :goto_2
    return v11

    .line 312
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t read country code from SIM"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .restart local v5    # "eventType":I
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    const/4 v8, 0x2

    .line 323
    if-eq v5, v8, :cond_4

    .line 352
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    goto :goto_0

    .line 324
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Data"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "code"

    const/4 v9, 0x0

    .line 325
    invoke-interface {v7, v9, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "cc"

    const/4 v9, 0x0

    .line 328
    invoke-interface {v7, v9, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "countryCode":Ljava/lang/String;
    const-string/jumbo v8, "tc"

    const/4 v9, 0x0

    .line 330
    invoke-interface {v7, v9, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "areaCode":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v8, "+"

    .line 332
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 335
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_6

    .line 338
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setCountryCode(Ljava/lang/String;)V

    .line 339
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_7

    .line 342
    :goto_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setCountryAreaCode(Ljava/lang/String;)V

    .line 343
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_8

    .line 346
    :goto_6
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setCountryIsoCode(Ljava/lang/String;)V

    .line 347
    return v12

    .line 333
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 336
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set country code to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 357
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 359
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_a

    .line 362
    :goto_7
    return v11

    .line 340
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "areaCode":Ljava/lang/String;
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v5    # "eventType":I
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7
    :try_start_2
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set area code to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 362
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v3

    .line 364
    .local v3, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_b

    .line 367
    :goto_8
    return v11

    .line 344
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "areaCode":Ljava/lang/String;
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v5    # "eventType":I
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set country ISO code to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 355
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Country code not found"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 360
    .end local v5    # "eventType":I
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t parse country code from XML file"

    invoke-virtual {v8, v9, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 365
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_b
    iget-object v8, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t read country code from XML file"

    invoke-virtual {v8, v9, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private setExLastUserAccount(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldWriteableFiles"
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "RCS"

    const/4 v3, 0x2

    .line 687
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/service/StartService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 689
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ExLastUserAccount"

    .line 690
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    return-void
.end method

.method private setLastUserAccount(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "RCS"

    const/4 v3, 0x0

    .line 629
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/service/StartService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 631
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "LastUserAccount"

    .line 632
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 634
    return-void
.end method

.method private setLauncherComponent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 797
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 798
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 800
    .local v1, "rcsprovisionComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 806
    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    .line 802
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method private setNewUserAccount(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const-string/jumbo v2, "RCS"

    const/4 v3, 0x0

    .line 725
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/service/StartService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 727
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "NewUserAccount"

    .line 728
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 729
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 730
    return-void
.end method

.method public static setUserMessageAccepted(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v3, "RCS"

    .line 643
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 645
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "UserMessageAccepted"

    .line 646
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 647
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    invoke-static {p0}, Lcom/sonymobile/rcs/service/LauncherUtils;->getAccountUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "account_username":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 654
    invoke-static {p0, v3}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->removeRcsAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->createRcsAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 222
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    const-string/jumbo v1, "phone"

    .line 163
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getAutoConfigMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 176
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/StartService$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/StartService$1;-><init>(Lcom/sonymobile/rcs/service/StartService;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/rcs/service/StartService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    const-string/jumbo v1, "connectivity"

    .line 172
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/StartService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/StartService;->connMgr:Landroid/net/ConnectivityManager;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->clearPreferences(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 218
    :goto_2
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->setRcsServiceState(Landroid/content/Context;I)V

    goto :goto_0

    .line 205
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->networkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/StartService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    goto :goto_1

    .line 213
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/StartService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 216
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    :goto_0
    if-nez p1, :cond_1

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sonymobile/rcs/permission/PermissionUtil;->setRcsServiceState(Landroid/content/Context;I)V

    .line 246
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setDeviceID(Landroid/content/Context;)V

    .line 247
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setSubscriberId(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getSubscriberID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->currentUserAccount:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 253
    .local v1, "simState":I
    if-ne v1, v5, :cond_5

    .line 258
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 259
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    .line 265
    .end local v1    # "simState":I
    :goto_2
    return v6

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Start RCS service"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "boot"

    .line 233
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/StartService;->boot:Z

    goto :goto_1

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 239
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/sonymobile/rcs/permission/PermissionUtil;->setRcsServiceState(Landroid/content/Context;I)V

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    .line 242
    return v6

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Stopping RCS service because permission not granted..."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 250
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/StartService;->checkAccountAndStartService()V

    goto :goto_2

    .line 254
    .restart local v1    # "simState":I
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 255
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/sonymobile/rcs/service/StartService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sonymobile/rcs/service/StartService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method
