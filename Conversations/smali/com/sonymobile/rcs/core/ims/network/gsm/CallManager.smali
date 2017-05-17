.class public Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# static fields
.field private static remoteParty:Ljava/lang/String;


# instance fields
.field private callHold:Z

.field private callState:I

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private listener:Landroid/telephony/PhoneStateListener;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mInCallProximityListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

.field private mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;

.field private mRichcallPermissionStates:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

.field private multipartyCall:Z

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    .line 94
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;

    .line 99
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->multipartyCall:Z

    .line 104
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callHold:Z

    .line 106
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRichcallPermissionStates:Z

    .line 122
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 221
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;-><init>(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 339
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$2;-><init>(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mInCallProximityListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

    .line 136
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 139
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->tm:Landroid/telephony/TelephonyManager;

    .line 141
    new-instance v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mInCallProximityListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/utils/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/core/ims/ImsModule;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->startScreenMonitoring()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->triggerRichcallPermissionNotification()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    sput-object p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/ProximitySensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->stopScreenMonitoring()V

    return-void
.end method

.method static synthetic access$702(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->multipartyCall:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callHold:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRichcallPermissionStates:Z

    return p1
.end method

.method private callLegHasChanged()V
    .locals 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->multipartyCall:Z

    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callHold:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 477
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;)V

    .line 478
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->abortAllSessions()V

    goto :goto_0
.end method

.method private requestCapabilities(Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;Z)V

    .line 449
    return-void
.end method

.method private requestCapabilities(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "forceRequest"    # Z

    .prologue
    .line 458
    if-nez p1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request capabilities to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setRemoteParty(Ljava/lang/String;)V
    .locals 0
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 358
    sput-object p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    .line 359
    return-void
.end method

.method private startScreenMonitoring()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    if-eqz v1, :cond_1

    .line 182
    :goto_1
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Start screen monitoring"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    new-instance v1, Lcom/sonymobile/rcs/utils/ScreenMonitor;

    invoke-direct {v1}, Lcom/sonymobile/rcs/utils/ScreenMonitor;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private stopScreenMonitoring()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    if-nez v1, :cond_1

    .line 216
    :goto_1
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Stop screen monitoring"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    :goto_2
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mScreenMonitor:Lcom/sonymobile/rcs/utils/ScreenMonitor;

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Exception while unregister screen monitoring receiver"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private triggerRichcallPermissionNotification()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.rcs.richcall.RICHCALL_PERMISSION_NOTIFY"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "CALL_STATE"

    .line 195
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    return-void

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Sending broadcast to richcall to show the permission notification"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public connectionEvent(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 514
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 518
    if-nez p1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->resetContactCapabilitiesForContentSharing(Ljava/lang/String;)V

    .line 533
    :goto_1
    return-void

    .line 515
    :cond_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 524
    :goto_2
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Connectivity changed: update content sharing capabilities"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Connectivity changed: disable content sharing capabilities"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    return v0
.end method

.method public getRemoteParty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 370
    sget-object v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 368
    return-object v0
.end method

.method public isCallConnected()Z
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCallConnectedWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->getRemotePhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRichcallSupportedWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->multipartyCall:Z

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    return v1

    .line 417
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callHold:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRichcallPermissionStates:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnectedWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallHold(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callHold:Z

    .line 505
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callLegHasChanged()V

    .line 506
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set call hold to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I

    .line 543
    return-void
.end method

.method public setMultiPartyCall(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->multipartyCall:Z

    .line 491
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callLegHasChanged()V

    .line 492
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set multiparty call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRichcallPermissionStatus(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRichcallPermissionStates:Z

    .line 550
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set richcall permission state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCallMonitoring()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 155
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start call monitoring"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopCallMonitoring()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->listener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 167
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop call monitoring"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
