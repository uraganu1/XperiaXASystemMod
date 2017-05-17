.class public Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
.super Landroid/app/Service;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;
    }
.end annotation


# static fields
.field private static firstLaunch:Z

.field public static isDisplayMessageAvailable:Z

.field private static waitingForOTP:Z


# instance fields
.field private binarysms:Ljava/lang/String;

.field private connMgr:Landroid/net/ConnectivityManager;

.field private isPending:Z

.field private isPrevResultCode511:Z

.field private isRetry:Z

.field private isTempBackupComplete:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mIsResultCode403:Z

.field private mLocalContext:Lorg/apache/http/protocol/HttpContext;

.field private mNetworkStateListener:Landroid/content/BroadcastReceiver;

.field private mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

.field private mTokenValidityTimer:Ljava/util/Timer;

.field private msisdn:Ljava/lang/String;

.field private retryCount:I

.field private retryIntent:Landroid/app/PendingIntent;

.field private retryReceiver:Landroid/content/BroadcastReceiver;

.field private skipHttpRequest:Z

.field private userMessageAcceptanceReceiver:Landroid/content/BroadcastReceiver;

.field private validity:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    .line 169
    iput-boolean v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPending:Z

    .line 174
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    .line 184
    iput v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 772
    new-instance v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryReceiver:Landroid/content/BroadcastReceiver;

    .line 798
    new-instance v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$5;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->userMessageAcceptanceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connectionEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->updateConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startUpdateConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isRetry:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isRetry:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
    .param p1, "x1"    # J

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    return-void
.end method

.method private cancelRetryAlarm()V
    .locals 2

    .prologue
    const-string/jumbo v1, "alarm"

    .line 841
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 842
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 843
    return-void
.end method

.method private cancelTokenTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 848
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 849
    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private connectionEvent(Ljava/lang/String;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 326
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    :cond_0
    :goto_1
    return v4

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 330
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 335
    :goto_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 342
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startUpdateConfig()V

    .line 343
    return v5

    .line 332
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 335
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isValidityExpired()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 340
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->registerPhoneStateListener()V

    goto :goto_1

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Registering Listener for network service state"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private executeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p4, "localContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1049
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 1050
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    const-string/jumbo v2, "Accept-Language"

    .line 1051
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getUserLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "User-Agent"

    .line 1052
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->userAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1056
    :goto_0
    invoke-virtual {p3, v0, p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1057
    .local v1, "response":Lorg/apache/http/HttpResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1060
    :goto_1
    return-object v1

    .line 1054
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTTP request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTTP response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private fetchMSISDN(IZ)V
    .locals 4
    .param p1, "retryCount"    # I
    .param p2, "unAuthorized"    # Z

    .prologue
    .line 426
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "savedInstance":Landroid/os/Bundle;
    const v2, 0x7f05003b

    .line 427
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "retry-count"

    .line 428
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "unauthorized"

    .line 429
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 432
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 433
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    .line 434
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method private getConfig(Z)Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    .locals 31
    .param p1, "isWifiProv"    # Z

    .prologue
    .line 860
    new-instance v24, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;

    invoke-direct/range {v24 .. v24}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;-><init>()V

    .line 862
    .local v24, "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_3

    :goto_0
    const-string/jumbo v27, "phone"

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 869
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningAddress()Ljava/lang/String;

    move-result-object v21

    .local v21, "requestUri":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 871
    .local v22, "requestUri_old":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    const-string/jumbo v27, "https://"

    .line 887
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 893
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getSubscriberID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 894
    .local v11, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .local v10, "imei":Ljava/lang/String;
    const/16 v26, 0x0

    .line 898
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    new-instance v25, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v25 .. v25}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 899
    .local v25, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v27, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v28, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v29

    const/16 v30, 0x50

    invoke-direct/range {v27 .. v30}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 900
    new-instance v27, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v28, "https"

    new-instance v29, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;

    invoke-direct/range {v29 .. v29}, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;-><init>()V

    const/16 v30, 0x1bb

    invoke-direct/range {v27 .. v30}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 902
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v16, "params":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v27, "http.conn-manager.max-total"

    const/16 v28, 0x1e

    .line 903
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v27, "http.conn-manager.max-per-route"

    .line 904
    new-instance v28, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v29, 0x1e

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v27, "http.protocol.expect-continue"

    .line 906
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    .line 908
    .local v14, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v14, :cond_a

    .line 916
    :cond_0
    :goto_2
    sget-object v27, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 918
    new-instance v6, Lorg/apache/http/impl/conn/SingleClientConnManager;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 919
    .local v6, "cm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    invoke-direct {v5, v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 922
    .local v5, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 925
    .local v7, "cookieStore":Lorg/apache/http/client/CookieStore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    :goto_3
    const/16 v23, 0x0

    .line 935
    .local v23, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->skipHttpRequest:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 963
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    :goto_4
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "?vers="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&rcs_version="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getRcsVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&rcs_profile="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getRcsProfile()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getEnrichedRcsProfile()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&client_vendor="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductName()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&client_version="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getStackVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&terminal_vendor="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getProductManufacturer()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&terminal_model="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getDeviceName()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&terminal_sw_version="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getProductVersion()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "args":Ljava/lang/String;
    if-nez v11, :cond_13

    .line 975
    :goto_5
    if-nez v10, :cond_14

    .line 979
    :goto_6
    if-eqz p1, :cond_15

    .line 982
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningToken()Ljava/lang/String;

    move-result-object v17

    .line 983
    .local v17, "provisioningToken":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_16

    .line 987
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_17

    .line 995
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "?OTP="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "args "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 997
    const/16 v27, 0x0

    sput-boolean v27, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->waitingForOTP:Z

    .line 998
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mIsResultCode403:Z

    .line 999
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    .line 1003
    .end local v17    # "provisioningToken":Ljava/lang/String;
    :goto_8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .local v20, "request":Ljava/lang/String;
    const-string/jumbo v27, "https"

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->executeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 1007
    .local v23, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const-string/jumbo v27, "msisdn"

    .line 1008
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 1011
    :cond_2
    :goto_9
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 1020
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    const-string/jumbo v28, "UTF-8"

    invoke-static/range {v27 .. v28}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    .line 1022
    return-object v24

    .line 863
    .end local v4    # "args":Ljava/lang/String;
    .end local v5    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "cm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imsi":Ljava/lang/String;
    .end local v14    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v16    # "params":Lorg/apache/http/params/HttpParams;
    .end local v20    # "request":Ljava/lang/String;
    .end local v21    # "requestUri":Ljava/lang/String;
    .end local v22    # "requestUri_old":Ljava/lang/String;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Request config via HTTPS"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1022
    :catch_0
    move-exception v9

    .line 1024
    .local v9, "e":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_1d

    :goto_a
    const/16 v27, 0x0

    .line 1027
    return-object v27

    .line 872
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .restart local v21    # "requestUri":Ljava/lang/String;
    .restart local v22    # "requestUri_old":Ljava/lang/String;
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v15

    .line 874
    .local v15, "ope":Ljava/lang/String;
    if-nez v15, :cond_6

    .line 875
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_7

    :goto_b
    const/16 v27, 0x0

    .line 878
    return-object v27

    .line 874
    :cond_6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    const/16 v27, 0x3

    .line 880
    move/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "mnc":Ljava/lang/String;
    const/16 v27, 0x0

    const/16 v28, 0x3

    .line 881
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 882
    .local v12, "mcc":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "config."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".rcse"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 883
    :goto_c
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_8

    .line 886
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "config.rcs.mnc"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".mcc"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".pub.3gppnetwork.org"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 876
    .end local v12    # "mcc":Ljava/lang/String;
    .end local v13    # "mnc":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Can not read network operator from SIM card!"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    .line 1027
    .end local v15    # "ope":Ljava/lang/String;
    .end local v21    # "requestUri":Ljava/lang/String;
    .end local v22    # "requestUri_old":Ljava/lang/String;
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v8

    .line 1029
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_1e

    :goto_d
    const/16 v27, 0x0

    .line 1032
    return-object v27

    .line 884
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "mcc":Ljava/lang/String;
    .restart local v13    # "mnc":Ljava/lang/String;
    .restart local v15    # "ope":Ljava/lang/String;
    .restart local v21    # "requestUri":Ljava/lang/String;
    .restart local v22    # "requestUri_old":Ljava/lang/String;
    .restart local v26    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 890
    .end local v12    # "mcc":Ljava/lang/String;
    .end local v13    # "mnc":Ljava/lang/String;
    .end local v15    # "ope":Ljava/lang/String;
    :cond_9
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->skipHttpRequest:Z

    const-string/jumbo v27, "https://"

    const-string/jumbo v28, ""

    .line 891
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 908
    .restart local v10    # "imei":Ljava/lang/String;
    .restart local v11    # "imsi":Ljava/lang/String;
    .restart local v14    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v16    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v25    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    if-nez v27, :cond_0

    .line 909
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v18

    .line 910
    .local v18, "proxyHost":Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    .line 911
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v19

    .local v19, "proxyPort":I
    const-string/jumbo v27, "http.route.default-proxy"

    .line 912
    new-instance v28, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto/16 :goto_2

    .line 927
    .end local v18    # "proxyHost":Ljava/lang/String;
    .end local v19    # "proxyPort":I
    .restart local v5    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "cm":Lorg/apache/http/conn/ClientConnectionManager;
    .restart local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    :cond_b
    new-instance v27, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct/range {v27 .. v27}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v27, v0

    const-string/jumbo v28, "http.cookie-store"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .local v23, "response":Lorg/apache/http/HttpResponse;
    :cond_c
    :try_start_3
    const-string/jumbo v27, "http"

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->executeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v23

    .line 947
    .local v23, "response":Lorg/apache/http/HttpResponse;
    :goto_e
    :try_start_4
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    .line 948
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    .line 949
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 958
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    goto/16 :goto_4

    .line 946
    .local v23, "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v9

    .line 940
    .restart local v9    # "e":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v27

    if-nez v27, :cond_d

    .line 944
    :goto_f
    move-object/from16 v21, v22

    const-string/jumbo v27, "http"

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->executeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .local v23, "response":Lorg/apache/http/HttpResponse;
    goto :goto_e

    .line 941
    .local v23, "response":Lorg/apache/http/HttpResponse;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "The server "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " can\'t be reachable, try with the old URI"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 950
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .local v23, "response":Lorg/apache/http/HttpResponse;
    :cond_e
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0x1f7

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_10

    .line 953
    :goto_10
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0x1ff

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_11

    const/16 v27, 0x0

    :goto_11
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    .line 954
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0x1ff

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    .line 955
    :cond_f
    return-object v24

    .line 951
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getRetryAfter(Lorg/apache/http/HttpResponse;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->retryAfter:I

    goto :goto_10

    :cond_11
    const/16 v27, 0x1

    .line 953
    goto :goto_11

    .line 954
    :cond_12
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_f

    goto/16 :goto_4

    .line 973
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "args":Ljava/lang/String;
    :cond_13
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&IMSI="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 976
    :cond_14
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&IMEI="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 979
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    move/from16 v27, v0

    if-nez v27, :cond_1

    goto/16 :goto_8

    .restart local v17    # "provisioningToken":Ljava/lang/String;
    :cond_16
    const-string/jumbo v17, ""

    .line 984
    goto/16 :goto_7

    .line 988
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 991
    :goto_12
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&token="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&SMS_port=37273"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 989
    :cond_18
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "&msisdn="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v29, "+"

    const-string/jumbo v30, "%2B"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .end local v17    # "provisioningToken":Ljava/lang/String;
    .restart local v20    # "request":Ljava/lang/String;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    :cond_19
    const-string/jumbo v27, "OTP"

    .line 1008
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0x193

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 1009
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mIsResultCode403:Z

    goto/16 :goto_9

    .line 1012
    :cond_1a
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0x1ff

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1b

    .line 1015
    :goto_13
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    move/from16 v27, v0

    const/16 v28, 0x1f7

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 1018
    :goto_14
    return-object v24

    .line 1013
    :cond_1b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v27

    const-string/jumbo v28, ""

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningToken(Ljava/lang/String;)V

    goto :goto_13

    .line 1016
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getRetryAfter(Lorg/apache/http/HttpResponse;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->retryAfter:I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_14

    .line 1025
    .end local v4    # "args":Ljava/lang/String;
    .end local v5    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "cm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imsi":Ljava/lang/String;
    .end local v14    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v16    # "params":Lorg/apache/http/params/HttpParams;
    .end local v20    # "request":Ljava/lang/String;
    .end local v21    # "requestUri":Ljava/lang/String;
    .end local v22    # "requestUri_old":Ljava/lang/String;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v9    # "e":Ljava/net/UnknownHostException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Provisioning server not reachable"

    invoke-virtual/range {v27 .. v28}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1030
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Can\'t get config via HTTPS"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 1085
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v0, "unknown"

    .line 1086
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 1094
    :goto_1
    return-object v0

    .line 1085
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    .line 1087
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    :goto_2
    const-string/jumbo v1, "c"

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    .line 1088
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1092
    :cond_3
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getEnrichedRcsProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "&rcs_profile=enriched_call"

    goto :goto_0
.end method

.method private getProductManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0
.end method

.method private getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_0
.end method

.method private getRcsProfile()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "joyn_blackbird"

    .line 1148
    return-object v0
.end method

.method private getRcsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "5.1B"

    .line 1139
    return-object v0
.end method

.method private getRetryAfter(Lorg/apache/http/HttpResponse;)I
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "Retry-After"

    .line 1069
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 1070
    .local v1, "headers":[Lorg/apache/http/Header;
    array-length v2, v1

    if-gtz v2, :cond_0

    .line 1077
    return v3

    :cond_0
    const/4 v2, 0x0

    .line 1072
    :try_start_0
    aget-object v2, v1, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v3
.end method

.method private getStackVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFirstLaunch()Z
    .locals 1

    .prologue
    .line 1120
    sget-boolean v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    return v0
.end method

.method private isNetworkTypeConnected(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1218
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method private isValidityExpired()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 1166
    const/4 v5, 0x0

    .line 1167
    .local v5, "requestConfig":Z
    sget-boolean v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-nez v7, :cond_2

    .line 1171
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningExpirationDate()Ljava/util/Date;

    move-result-object v3

    .line 1172
    .local v3, "expiration":Ljava/util/Date;
    if-eqz v3, :cond_3

    .line 1175
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1176
    .local v4, "now":Ljava/util/Date;
    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1181
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .local v0, "delay":J
    const-wide/16 v8, 0x0

    .line 1182
    cmp-long v7, v0, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    if-nez v6, :cond_6

    .line 1183
    const/4 v5, 0x1

    .line 1198
    .end local v0    # "delay":J
    .end local v3    # "expiration":Ljava/util/Date;
    .end local v4    # "now":Ljava/util/Date;
    :cond_1
    :goto_0
    return v5

    .line 1168
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 1173
    .restart local v3    # "expiration":Ljava/util/Date;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 1177
    .restart local v4    # "now":Ljava/util/Date;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1179
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 1178
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Configuration validity expired at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1196
    .end local v3    # "expiration":Ljava/util/Date;
    .end local v4    # "now":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 1193
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1194
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find validity expiry"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "delay":J
    .restart local v3    # "expiration":Ljava/util/Date;
    .restart local v4    # "now":Ljava/util/Date;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1188
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    goto :goto_0

    .line 1186
    :cond_7
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Configuration will expire in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " secs at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private processVersion(Ljava/lang/String;Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;)V
    .locals 8
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    .param p3, "info"    # Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPrevProvVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    .line 732
    sget-boolean v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isDisplayMessageAvailable:Z

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getValidity()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_b

    .line 739
    :goto_3
    iput v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 740
    sget-boolean v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-nez v0, :cond_c

    .line 746
    :cond_2
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 748
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getValidity()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    .line 750
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 751
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 763
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/StartService;->setUserMessageAccepted(Landroid/content/Context;Z)V

    goto :goto_0

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 699
    :goto_6
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsCoreService(Landroid/content/Context;)V

    goto :goto_1

    .line 697
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Configuration is updated. Stopping Rcs Service"

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 716
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_7
    const-string/jumbo v0, "-2"

    .line 719
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 723
    :goto_8
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 726
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    .line 728
    :goto_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 717
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Provisioning forbidden: reset account and stop RCS"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 720
    :cond_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->enableRcsProv(Landroid/content/Context;)V

    goto :goto_8

    .line 724
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    goto :goto_9

    :cond_a
    move v0, v2

    .line 734
    goto/16 :goto_2

    .line 736
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provisioning retry after validity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->validity:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 740
    :cond_c
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->deactivateOtherRcsClients(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 753
    :cond_d
    sget-boolean v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-nez v0, :cond_e

    .line 760
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 754
    :cond_e
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 755
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteRCSEntriesInContactsDatabase()V

    .line 756
    invoke-static {v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->setFirstLaunch(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->forceLaunchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_5
.end method

.method private registerPhoneStateListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    if-eqz v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 378
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    .line 379
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private retry()V
    .locals 5

    .prologue
    const v4, 0x493e0

    const/4 v3, 0x0

    .line 811
    iget v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 820
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 823
    :goto_0
    invoke-static {v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->setFirstLaunch(Z)V

    .line 825
    :cond_0
    :goto_1
    return-void

    .line 812
    :cond_1
    iget v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 813
    iget v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v4

    add-int v0, v4, v1

    .line 814
    .local v0, "retryDelay":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isRetry:Z

    .line 815
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    .line 816
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Retry ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") provisionning after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 821
    .end local v0    # "retryDelay":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No more retry for provisionning"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scheduleTokenValidityTimer(Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$3;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getTokenValidity()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 690
    return-void

    .line 680
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mTokenValidityTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public static setFirstLaunch(Z)V
    .locals 0
    .param p0, "isFirstLaunch"    # Z

    .prologue
    .line 1130
    sput-boolean p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    .line 1131
    return-void
.end method

.method private startRetryAlarm(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const-string/jumbo v1, "alarm"

    .line 833
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 835
    return-void
.end method

.method private startUpdateConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-boolean v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPending:Z

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 357
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPending:Z

    .line 359
    new-instance v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$2;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$2;->start()V

    .line 364
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->unregisterListener()V

    .line 365
    iput-boolean v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPending:Z

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 388
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    if-nez v2, :cond_2

    .line 406
    :goto_1
    return-void

    .line 390
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_1
    :goto_2
    iput-object v4, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unexpected exception"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 401
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 403
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 404
    iput-object v4, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    goto :goto_1
.end method

.method private updateConfig()V
    .locals 14

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->cancelRetryAlarm()V

    .line 444
    new-instance v3, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .local v3, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    const/4 v7, 0x0

    .line 447
    .local v7, "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isValidityExpired()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    const/4 v9, 0x1

    .line 452
    invoke-direct {p0, v9}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isNetworkTypeConnected(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 453
    :cond_1
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 467
    :cond_2
    :goto_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->skipHttpRequest:Z

    .line 468
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getConfig(Z)Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;

    move-result-object v7

    .line 473
    .end local v7    # "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    :cond_3
    :goto_1
    if-nez v7, :cond_a

    .line 667
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-eqz v9, :cond_31

    .line 672
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    .line 673
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retry()V

    .line 676
    :cond_4
    :goto_2
    return-void

    .line 447
    .restart local v7    # "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    :cond_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isConfigValid()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    .line 449
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcseEnabled(Z)V

    .line 450
    return-void

    .line 452
    :cond_6
    iget-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    if-nez v9, :cond_1

    const/4 v9, 0x0

    .line 469
    invoke-direct {p0, v9}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isNetworkTypeConnected(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 470
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->skipHttpRequest:Z

    .line 471
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getConfig(Z)Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;

    move-result-object v7

    .local v7, "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    goto :goto_1

    .line 453
    .local v7, "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    :cond_7
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->waitingForOTP:Z

    if-eqz v9, :cond_2

    .line 454
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_8

    .line 457
    :goto_3
    const/4 v9, 0x0

    sput-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->waitingForOTP:Z

    .line 458
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    .line 459
    iget-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mIsResultCode403:Z

    if-nez v9, :cond_9

    .line 463
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 464
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Retrying provisioning transparently"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_8
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Waiting too long for OTP, retry attempt will be started"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 460
    :cond_9
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->fetchMSISDN(IZ)V

    .line 461
    return-void

    .line 474
    .end local v7    # "result":Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;
    :cond_a
    iget-object v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    .line 481
    invoke-direct {p0, v9}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isNetworkTypeConnected(I)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_b
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 494
    :cond_c
    :goto_4
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_12

    .line 592
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const/16 v10, 0x1f7

    if-eq v9, v10, :cond_20

    .line 611
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const/16 v10, 0x193

    if-eq v9, v10, :cond_24

    .line 642
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const/16 v10, 0x1ff

    if-eq v9, v10, :cond_2d

    .line 653
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 657
    :goto_5
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-eqz v9, :cond_30

    .line 662
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 475
    :cond_d
    iget-object v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    const-string/jumbo v10, "Otp sent to terminal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 476
    const/4 v9, 0x1

    sput-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->waitingForOTP:Z

    const-wide/32 v10, 0x1d4c0

    .line 477
    invoke-direct {p0, v10, v11}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    .line 478
    return-void

    .line 481
    :cond_e
    iget-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    if-nez v9, :cond_b

    goto :goto_4

    :cond_f
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_c

    .line 483
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_10

    .line 486
    :goto_6
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v10, 0x5

    if-lt v9, v10, :cond_11

    .line 491
    :goto_7
    return-void

    .line 484
    :cond_10
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Empty config xml"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 487
    :cond_11
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 488
    const/4 v9, 0x1

    sput-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->waitingForOTP:Z

    const-wide/32 v10, 0x1d4c0

    .line 489
    invoke-direct {p0, v10, v11}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    goto :goto_7

    .line 496
    :cond_12
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_14

    .line 501
    :goto_8
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_15

    .line 507
    :goto_9
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-eqz v9, :cond_16

    .line 521
    :goto_a
    new-instance v4, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;

    iget-object v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    invoke-direct {v4, v9}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;-><init>(Ljava/lang/String;)V

    .line 523
    .local v4, "parser":Lcom/sonymobile/rcs/provisioning/ProvisioningParser;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v0

    .line 526
    .local v0, "gsmaRelease":I
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "0"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setGsmaRelease(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parse(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 564
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 569
    :goto_b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setGsmaRelease(Ljava/lang/String;)V

    .line 571
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-eqz v9, :cond_1e

    .line 584
    :cond_13
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    .line 585
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 588
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "0"

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retry()V

    goto/16 :goto_2

    .line 497
    .end local v0    # "gsmaRelease":I
    .end local v4    # "parser":Lcom/sonymobile/rcs/provisioning/ProvisioningParser;
    :cond_14
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Provisioning successful"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 502
    :cond_15
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "read from link: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->content:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 510
    :cond_16
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isServiceActivated()Z

    move-result v9

    if-nez v9, :cond_17

    .line 516
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setServiceActivationState(Z)V

    goto/16 :goto_a

    .line 511
    :cond_17
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->dump()Ljava/util/Map;

    move-result-object v5

    .line 513
    .local v5, "rcsSettingsDump":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "temp"

    invoke-virtual {v3, v9, v10, v5}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->backupConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 514
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isTempBackupComplete:Z

    goto/16 :goto_a

    .line 528
    .end local v5    # "rcsSettingsDump":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "gsmaRelease":I
    .restart local v4    # "parser":Lcom/sonymobile/rcs/provisioning/ProvisioningParser;
    :cond_18
    invoke-virtual {v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getProvisioningInfo()Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    move-result-object v1

    .line 531
    .local v1, "info":Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getValidity()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->validity:J

    .line 533
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    iget-wide v10, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->validity:J

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningExpiration(J)V

    .line 534
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 539
    :goto_c
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 547
    :cond_19
    :goto_d
    invoke-direct {p0, v8, v3, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->processVersion(Ljava/lang/String;Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;)V

    .line 550
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-nez v9, :cond_4

    .line 551
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "rcse_temp.xml"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .local v6, "restoreSettings":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 554
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    .line 555
    .local v2, "isDeleted":Z
    if-eqz v2, :cond_4

    .line 556
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 557
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Parse successful. So deleting temp backed-up Configuration "

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 535
    .end local v2    # "isDeleted":Z
    .end local v6    # "restoreSettings":Ljava/io/File;
    :cond_1a
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 536
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Validity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->validity:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 540
    :cond_1b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningToken(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getTokenValidity()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_1c

    const/4 v9, 0x1

    :goto_e
    if-nez v9, :cond_19

    .line 542
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->cancelTokenTimer()V

    .line 543
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->scheduleTokenValidityTimer(Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;)V

    goto/16 :goto_d

    .line 541
    :cond_1c
    const/4 v9, 0x0

    goto :goto_e

    .line 565
    .end local v1    # "info":Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;
    .end local v8    # "version":Ljava/lang/String;
    :cond_1d
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Can\'t parse provisioning document"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 571
    :cond_1e
    iget-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isTempBackupComplete:Z

    if-eqz v9, :cond_13

    .line 572
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "temp"

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->restoreConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 576
    :goto_f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isTempBackupComplete:Z

    .line 579
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 580
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 574
    :cond_1f
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Configuration is restored!"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 594
    .end local v0    # "gsmaRelease":I
    .end local v4    # "parser":Lcom/sonymobile/rcs/provisioning/ProvisioningParser;
    :cond_20
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_21

    .line 599
    :goto_10
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->retryAfter:I

    if-gtz v9, :cond_22

    .line 605
    :goto_11
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-eqz v9, :cond_23

    .line 609
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 595
    :cond_21
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Provisioning retry after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->retryAfter:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10

    .line 600
    :cond_22
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isRetry:Z

    .line 601
    iget v9, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->retryAfter:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v10, v9

    invoke-direct {p0, v10, v11}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V

    goto :goto_11

    .line 606
    :cond_23
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 607
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_24
    const/4 v9, 0x1

    .line 615
    invoke-direct {p0, v9}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isNetworkTypeConnected(I)Z

    move-result v9

    if-eqz v9, :cond_27

    :cond_25
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 630
    :cond_26
    :goto_12
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_2c

    .line 635
    :goto_13
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "0"

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    .line 641
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 615
    :cond_27
    iget-boolean v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isPrevResultCode511:Z

    if-nez v9, :cond_25

    goto :goto_12

    :cond_28
    sget-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z

    if-eqz v9, :cond_2a

    .line 618
    :cond_29
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 622
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v10, 0x5

    if-ge v9, v10, :cond_26

    .line 623
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 624
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->fetchMSISDN(IZ)V

    .line 625
    return-void

    .line 615
    :cond_2a
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_29

    goto :goto_12

    :cond_2b
    const/4 v9, 0x0

    .line 619
    iput v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 620
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->fetchMSISDN(IZ)V

    .line 621
    return-void

    .line 631
    :cond_2c
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Provisioning forbidden: reset account"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_13

    .line 643
    :cond_2d
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    const/4 v10, 0x5

    if-lt v9, v10, :cond_2e

    .line 648
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 644
    :cond_2e
    iget v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I

    .line 645
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startUpdateConfig()V

    .line 646
    return-void

    .line 654
    :cond_2f
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Provisioning error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningResult;->code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 658
    :cond_30
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 659
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 660
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 668
    :cond_31
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 669
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 670
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsCoreService(Landroid/content/Context;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 273
    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryIntent:Landroid/app/PendingIntent;

    .line 228
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->userMessageAcceptanceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sonymobile.rcs.accept"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void

    :cond_0
    const-string/jumbo v0, "connectivity"

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connMgr:Landroid/net/ConnectivityManager;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 236
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 246
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 253
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->userMessageAcceptanceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 258
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v2, :cond_2

    .line 269
    :cond_0
    :goto_3
    return-void

    .line 238
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    goto :goto_0

    .line 259
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 261
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v2, 0x0

    .line 262
    iput-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mPhoneListener:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 268
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while unregistering  phone state listener."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 256
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 249
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 278
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    :goto_0
    if-nez p1, :cond_1

    .line 292
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 293
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sonymobile/rcs/permission/PermissionUtil;->redirectToPermissionInfoIfNeeded(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 298
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connectionEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    :goto_2
    return v4

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Start HTTPS provisioning"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "first"

    .line 283
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->setFirstLaunch(Z)V

    const v1, 0x7f05003b

    .line 284
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_3
    const v1, 0x7f05003a

    .line 288
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->binarysms:Ljava/lang/String;

    goto :goto_1

    .line 286
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCurrentMsisdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->msisdn:Ljava/lang/String;

    goto :goto_3

    .line 295
    :cond_3
    return v4

    .line 301
    :cond_4
    new-instance v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method
