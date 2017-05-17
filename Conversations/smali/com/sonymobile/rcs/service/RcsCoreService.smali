.class public Lcom/sonymobile/rcs/service/RcsCoreService;
.super Landroid/app/Service;
.source "RcsCoreService.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/CoreListener;


# instance fields
.field private accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

.field private airplaneModeToggledReceiver:Landroid/content/BroadcastReceiver;

.field private capabilityApi:Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;

.field private cpuManager:Lcom/sonymobile/rcs/service/CpuManager;

.field private disconnectedByBattery:Z

.field private imsApi:Lcom/sonymobile/rcs/service/api/server/ImsApiService;

.field private ipcallApi:Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLowReceiver:Landroid/content/BroadcastReceiver;

.field private mMinBatteryLevel:I

.field private mRcsSettingContentObserver:Landroid/database/ContentObserver;

.field private messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

.field private presenceApi:Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;

.field private richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

.field private sipApi:Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

.field private termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 131
    new-instance v0, Lcom/sonymobile/rcs/service/CpuManager;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/CpuManager;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->cpuManager:Lcom/sonymobile/rcs/service/CpuManager;

    .line 136
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/ImsApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->imsApi:Lcom/sonymobile/rcs/service/api/server/ImsApiService;

    .line 141
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    .line 146
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->presenceApi:Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;

    .line 151
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->capabilityApi:Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;

    .line 156
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    .line 161
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    .line 166
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->ipcallApi:Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

    .line 171
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->sipApi:Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->disconnectedByBattery:Z

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 1427
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/RcsCoreService$5;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->airplaneModeToggledReceiver:Landroid/content/BroadcastReceiver;

    .line 1437
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/RcsCoreService$6;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryLowReceiver:Landroid/content/BroadcastReceiver;

    .line 1453
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/RcsCoreService$7;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1473
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/service/RcsCoreService$8;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mRcsSettingContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/service/RcsCoreService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/service/RcsCoreService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;

    .prologue
    .line 109
    iget v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mMinBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonymobile/rcs/service/RcsCoreService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->disconnectedByBattery:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/rcs/service/RcsCoreService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/rcs/service/RcsCoreService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/RcsCoreService;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->unRegisterBatteryLevelReceiver()V

    return-void
.end method

.method private downloadPhotoForContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "etag"    # Ljava/lang/String;

    .prologue
    .line 1011
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sonymobile/rcs/service/RcsCoreService$4;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1038
    return-void
.end method

.method private downloadPhotoForMe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    .line 973
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/rcs/service/RcsCoreService$3;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1001
    return-void
.end method

.method private getBatteryLevel()I
    .locals 4

    .prologue
    .line 1420
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    .line 1421
    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "batteryLevel":Landroid/content/Intent;
    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    .line 1422
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private sendImsIntentNotRegistered(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.IMS_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "status"

    .line 512
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "reason"

    .line 513
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.rcs.REGISTRATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intentGsma":Landroid/content/Intent;
    const-string/jumbo v2, "registration"

    .line 519
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    return-void
.end method

.method private sendImsIntentRegistered()V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x1

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.IMS_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "status"

    .line 546
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 547
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 548
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.rcs.REGISTRATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intentGsma":Landroid/content/Intent;
    const-string/jumbo v2, "registration"

    .line 552
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 555
    return-void
.end method

.method private unRegisterBatteryLevelReceiver()V
    .locals 1

    .prologue
    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/RcsCoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public handle1to1FileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .param p2, "chatSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 1145
    return-void

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event file transfer invitation outside an existing session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleAdhocGroupChatSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->receiveGroupChatInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;)V

    .line 1188
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event receive ad-hoc group chat session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .prologue
    const/high16 v6, 0x10000000

    .line 913
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 919
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "number":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.rcs.capability.CONTACT_CAPABILITIES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "contact"

    .line 923
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "capabilities"

    .line 924
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 925
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 927
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 930
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.rcs.CAPABILITIES_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intentGsma":Landroid/content/Intent;
    const-string/jumbo v3, "contact"

    .line 931
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "chat"

    .line 932
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "filetransfer"

    .line 934
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "imageshare"

    .line 936
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "videoshare"

    .line 938
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "geolocpush"

    .line 940
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGeolocationPushSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "csvideo"

    .line 942
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "presencediscovery"

    .line 944
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPresenceDiscoverySupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "socialpresence"

    .line 946
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSocialPresenceSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "ipvoicecall"

    .line 948
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVoiceCallSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "ipvideocall"

    .line 950
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "callcomposer"

    .line 952
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCallComposerSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "sharedmap"

    .line 954
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedMapSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "sharedsketch"

    .line 956
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedSketchSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "postcall"

    .line 958
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPostCallSupported()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "extensions"

    .line 960
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getSupportedExtensions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 962
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 963
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 964
    return-void

    .line 914
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentGsma":Landroid/content/Intent;
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Handle capabilities update notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleContentSharingStreamingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->receiveVideoSharingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V

    .line 1100
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event content sharing streaming invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleContentSharingTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->receiveGeolocSharingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V

    .line 1086
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event content sharing transfer invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleContentSharingTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->receiveImageSharingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V

    .line 1072
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event content sharing transfer invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleCoreLayerStarted()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event core started"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleCoreLayerStopped()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event core terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .param p2, "isGroupFile"    # Z

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V

    .line 1129
    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event file transfer invitation within an existing session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "groupChatId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->handleGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handle file delivery status: Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "groupChatId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle message delivery status"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleHttpFileTransferResuming(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->resumeHttpFileTransfer(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 1274
    return-void

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event incoming/outgoing http file transfer resuming"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleIPCallInvitation(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->ipcallApi:Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->receiveIPCallInvitation(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 1114
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event IP call invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "ftSessionId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->handleOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handle file delivery status: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    return-void

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle message delivery status"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleOneOneChatSessionExtended(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V
    .locals 2
    .param p1, "groupSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
    .param p2, "oneoneSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->extendOneOneChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V

    .line 1204
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event 1-1 chat session extended"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleOneOneChatSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->receiveOneOneChatInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V

    .line 1174
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event receive 1-1 chat session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handlePresenceInfoNotification(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "presence"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    .prologue
    .line 643
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 649
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getPerson()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    move-result-object v2

    .line 650
    .local v2, "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    if-eqz v2, :cond_2

    .line 659
    sget-object v4, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "me":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 665
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactSharingStatus(Ljava/lang/String;)I

    move-result v3

    .local v3, "rcsStatus":I
    const/4 v4, -0x1

    .line 666
    if-eq v3, v4, :cond_5

    .line 675
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/rcs/service/RcsCoreService;->presenceInfoNotificationForContact(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v1    # "me":Ljava/lang/String;
    .end local v2    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .end local v3    # "rcsStatus":I
    :cond_0
    :goto_1
    return-void

    .line 644
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handle event presence info notification for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .restart local v2    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 655
    :goto_2
    return-void

    .line 652
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Presence info is empty (i.e. no item person found) for contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 681
    .end local v2    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Internal exception"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 662
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "me":Ljava/lang/String;
    .restart local v2    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    :cond_4
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/service/RcsCoreService;->presenceInfoNotificationForMe(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V

    goto :goto_1

    .line 667
    .restart local v3    # "rcsStatus":I
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 671
    :goto_3
    return-void

    .line 668
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a RCS contact, by-pass the notification"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public handlePresenceSharingInvitation(Ljava/lang/String;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1046
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1051
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, "number":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.presence.PRESENCE_SHARING_INVITATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "contact"

    .line 1055
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 1056
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1057
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    return-void

    .line 1047
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Handle event presence sharing invitation"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handlePresenceSharingNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 604
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 611
    :goto_0
    :try_start_0
    sget-object v3, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "me":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 619
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactSharingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.rcs.presence.PRESENCE_SHARING_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "contact"

    .line 623
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "status"

    .line 624
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "reason"

    .line 625
    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 626
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 627
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "me":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 605
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Handle event presence sharing notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    .restart local v2    # "me":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Presence sharing notification for me: by-pass it"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 633
    .end local v2    # "me":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Internal exception"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public handleRegistrationFailed(Lcom/sonymobile/rcs/core/ims/ImsError;)V
    .locals 2
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/ImsError;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 568
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/RcsCoreService;->sendImsIntentNotRegistered(I)V

    .line 569
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event registration failed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleRegistrationSuccessful()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->sendImsIntentRegistered()V

    .line 536
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event registration ok"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleRegistrationTerminated()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->disconnectedByBattery:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 592
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/RcsCoreService;->sendImsIntentNotRegistered(I)V

    .line 594
    :goto_1
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event registration terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 585
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/service/RcsCoreService;->sendImsIntentNotRegistered(I)V

    goto :goto_1
.end method

.method public handleSimHasChanged()V
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    .line 1412
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsService(Landroid/content/Context;Z)V

    .line 1413
    return-void

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle SIM has changed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSipInstantMessageReceived(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->sipApi:Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->receiveSipInstantMessage(Landroid/content/Intent;)V

    .line 1320
    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event receive SIP instant message"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSipSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->sipApi:Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->receiveSipSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V

    .line 1306
    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event receive SIP session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleStoreAndForwardMsgSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->receiveOneOneChatInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V

    .line 1218
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event S&F messages session invitation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSystemRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->receiveSystemRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle system request - EUCR"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleUserConfirmationAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->receiveTermsAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-void

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event user terms confirmation ack"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleUserConfirmationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "pin"    # Z
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "acceptButtonLabel"    # Ljava/lang/String;
    .param p8, "rejectButtonLabel"    # Ljava/lang/String;
    .param p9, "timeout"    # I

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->receiveTermsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1345
    return-void

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event user terms confirmation request"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleUserNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "okButtonLabel"    # Ljava/lang/String;

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->receiveUserNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    return-void

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Handle event user terms notification"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-class v0, Lcom/sonymobile/rcs/service/api/client/IImsApi;

    .line 405
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi;

    .line 410
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/sonymobile/rcs/service/api/client/terms/ITermsApi;

    .line 415
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-class v0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    .line 425
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi;

    .line 430
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi;

    .line 435
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi;

    .line 440
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 446
    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->imsApi:Lcom/sonymobile/rcs/service/api/server/ImsApiService;

    return-object v0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->presenceApi:Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;

    return-object v0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Presence API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 419
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    return-object v0

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terms API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 421
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 424
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->capabilityApi:Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;

    return-object v0

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Capability API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_9

    .line 429
    :goto_4
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    return-object v0

    .line 427
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Messaging API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_b

    .line 434
    :goto_5
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    return-object v0

    .line 432
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Rich call API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 436
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_d

    .line 439
    :goto_6
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->ipcallApi:Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

    return-object v0

    .line 437
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IP call API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 441
    :cond_e
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_f

    .line 444
    :goto_7
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->sipApi:Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    return-object v0

    .line 442
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "SIP API binding"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 196
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMinBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mMinBatteryLevel:I

    .line 197
    iput-boolean v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->disconnectedByBattery:Z

    .line 199
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isTraceActivated()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/rcs/utils/logger/Logger;->activationFlag:Z

    .line 200
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getTraceLevel()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/utils/logger/Logger;->traceLevel:I

    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryLowReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mRcsSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->startCore()V

    .line 211
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    if-nez v1, :cond_1

    .line 229
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->unRegisterBatteryLevelReceiver()V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryLowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 239
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->airplaneModeToggledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->mRcsSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->imsApi:Lcom/sonymobile/rcs/service/api/server/ImsApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->close()V

    .line 247
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->presenceApi:Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/presence/PresenceApiService;->close()V

    .line 248
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->termsApi:Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->close()V

    .line 249
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->capabilityApi:Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/capability/CapabilityApiService;->close()V

    .line 250
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->richcallApi:Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->close()V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->ipcallApi:Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->close()V

    .line 252
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->messagingApi:Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->close()V

    .line 253
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->sipApi:Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->close()V

    .line 256
    new-instance v0, Lcom/sonymobile/rcs/service/RcsCoreService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/RcsCoreService$1;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V

    .line 264
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    return-void

    .line 216
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/permission/PermissionUtil;->setRcsServiceState(Landroid/content/Context;I)V

    goto :goto_0

    .line 222
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    goto :goto_1

    .line 243
    :catch_1
    move-exception v1

    goto :goto_3

    .line 235
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public presenceInfoNotificationForContact(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V
    .locals 28
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "presence"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 783
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 786
    .local v21, "number":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v12

    .line 787
    .local v12, "currentContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    move-object/from16 v18, v12

    .line 788
    .local v18, "newContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    if-eqz v12, :cond_5

    .line 795
    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v20

    .line 796
    .local v20, "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    if-eqz v20, :cond_7

    .line 802
    :goto_1
    new-instance v4, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 803
    .local v4, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getTuplesList()Ljava/util/Vector;

    move-result-object v26

    .local v26, "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    const/4 v14, 0x0

    .line 804
    .local v14, "i":I
    :goto_2
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v14, v6, :cond_8

    .line 825
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    const-string/jumbo v23, "unknown"

    .line 829
    .local v23, "presenceStatus":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getPerson()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    move-result-object v22

    .line 830
    .local v22, "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getOverridingWillingness()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    move-result-object v27

    .line 831
    .local v27, "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    if-nez v27, :cond_f

    .line 836
    :cond_0
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPresenceStatus(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getTimestamp()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setTimestamp(J)V

    .line 840
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getNote()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    move-result-object v6

    if-nez v6, :cond_10

    .line 843
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getHomePage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    .line 848
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getGeopriv()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    move-result-object v6

    if-nez v6, :cond_12

    .line 854
    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    .line 856
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v12}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 859
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactPhotoEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "lastEtag":Ljava/lang/String;
    const/16 v19, 0x0

    .line 861
    .local v19, "newEtag":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v6

    if-nez v6, :cond_13

    .line 866
    .end local v19    # "newEtag":Ljava/lang/String;
    :goto_7
    if-nez v17, :cond_14

    .line 881
    :cond_1
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v6

    if-nez v6, :cond_16

    .line 895
    :cond_2
    :goto_8
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v6, "com.sonymobile.rcs.presence.CONTACT_INFO_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v16, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "contact"

    .line 896
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    .line 897
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v4    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v12    # "currentContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v14    # "i":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "lastEtag":Ljava/lang/String;
    .end local v18    # "newContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v20    # "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .end local v21    # "number":Ljava/lang/String;
    .end local v22    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .end local v23    # "presenceStatus":Ljava/lang/String;
    .end local v26    # "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    .end local v27    # "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    :cond_3
    :goto_9
    return-void

    .line 778
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Presence info notification for contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .restart local v12    # "currentContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v18    # "newContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v21    # "number":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    .line 793
    :goto_a
    return-void

    .line 790
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found in EAB: by-pass the notification"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    .line 903
    .end local v12    # "currentContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v18    # "newContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v21    # "number":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 900
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 901
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Internal exception"

    invoke-virtual {v6, v7, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 797
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v12    # "currentContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v18    # "newContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v20    # "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .restart local v21    # "number":Ljava/lang/String;
    :cond_7
    :try_start_2
    new-instance v20, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .end local v20    # "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    invoke-direct/range {v20 .. v20}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;-><init>()V

    .line 798
    .restart local v20    # "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    goto/16 :goto_1

    .line 805
    .restart local v4    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v14    # "i":I
    .restart local v26    # "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    .line 807
    .local v25, "tuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    const/16 v24, 0x0

    .line 808
    .local v24, "state":Z
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getStatus()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "open"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 812
    :goto_b
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getService()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->getId()Ljava/lang/String;

    move-result-object v15

    .local v15, "id":Ljava/lang/String;
    const-string/jumbo v6, "org.gsma.videoshare"

    .line 813
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "org.gsma.imageshare"

    .line 815
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "org.openmobilealliance:File-Transfer"

    .line 817
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "org.3gpp.cs-videotelephony"

    .line 819
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string/jumbo v6, "org.openmobilealliance:IM-session"

    .line 821
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 804
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 809
    .end local v15    # "id":Ljava/lang/String;
    :cond_9
    const/16 v24, 0x1

    goto :goto_b

    .line 814
    .restart local v15    # "id":Ljava/lang/String;
    :cond_a
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    goto :goto_c

    .line 816
    :cond_b
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    goto :goto_c

    .line 818
    :cond_c
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    goto :goto_c

    .line 820
    :cond_d
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCsVideoSupport(Z)V

    goto :goto_c

    .line 822
    :cond_e
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    goto :goto_c

    .line 832
    .end local v15    # "id":Ljava/lang/String;
    .end local v24    # "state":Z
    .end local v25    # "tuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    .restart local v22    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .restart local v23    # "presenceStatus":Ljava/lang/String;
    .restart local v27    # "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    :cond_f
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 833
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 841
    :cond_10
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getNote()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFreetext(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 844
    :cond_11
    new-instance v6, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getHomePage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFavoriteLink(Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;)V

    goto/16 :goto_5

    .line 849
    :cond_12
    new-instance v5, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getGeopriv()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getGeopriv()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getGeopriv()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->getAltitude()D

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;-><init>(DDD)V

    .line 851
    .local v5, "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setGeoloc(Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;)V

    goto/16 :goto_6

    .line 862
    .end local v5    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    .restart local v17    # "lastEtag":Ljava/lang/String;
    .restart local v19    # "newEtag":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->getEtag()Ljava/lang/String;

    move-result-object v19

    .local v19, "newEtag":Ljava/lang/String;
    goto/16 :goto_7

    .line 866
    .end local v19    # "newEtag":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v6

    if-nez v6, :cond_1

    .line 867
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_15

    .line 872
    :goto_d
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactPhotoIcon(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    .line 875
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v6, "com.sonymobile.rcs.presence.CONTACT_PHOTO_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v16    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "contact"

    .line 876
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    .line 877
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 878
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 868
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Photo has been removed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 881
    :cond_16
    if-eqz v19, :cond_2

    .line 882
    if-nez v17, :cond_18

    .line 883
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_19

    .line 889
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getPerson()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->downloadPhotoForContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 882
    :cond_18
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_8

    .line 884
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Photo has changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", download it in background"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_e
.end method

.method public presenceInfoNotificationForMe(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V
    .locals 10
    .param p1, "presence"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    .prologue
    .line 691
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    .line 697
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getMyPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v0

    .line 698
    .local v0, "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    if-eqz v0, :cond_5

    :goto_1
    const-string/jumbo v6, "unknown"

    .line 704
    .local v6, "presenceStatus":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getPerson()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    move-result-object v5

    .line 705
    .local v5, "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getOverridingWillingness()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    move-result-object v7

    .line 706
    .local v7, "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    if-nez v7, :cond_6

    .line 711
    :cond_0
    :goto_2
    invoke-virtual {v0, v6}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPresenceStatus(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setTimestamp(J)V

    .line 715
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getNote()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    move-result-object v8

    if-nez v8, :cond_7

    .line 718
    :goto_3
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getHomePage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    :goto_4
    const/4 v3, 0x0

    .local v3, "lastEtag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 725
    .local v4, "newEtag":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v8

    if-nez v8, :cond_9

    .line 728
    .end local v4    # "newEtag":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v8

    if-nez v8, :cond_a

    .line 733
    .end local v3    # "lastEtag":Ljava/lang/String;
    :goto_6
    if-nez v3, :cond_b

    .line 745
    :cond_1
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v8

    if-nez v8, :cond_d

    .line 757
    :cond_2
    :goto_7
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setMyInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    .line 760
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.sonymobile.rcs.presence.MY_PRESENCE_INFO_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    .line 761
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v0    # "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .end local v6    # "presenceStatus":Ljava/lang/String;
    .end local v7    # "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    :cond_3
    :goto_8
    return-void

    .line 692
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Presence info notification for me"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    .restart local v0    # "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    :cond_5
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .end local v0    # "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;-><init>()V

    .restart local v0    # "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    goto :goto_1

    .line 707
    .restart local v5    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .restart local v6    # "presenceStatus":Ljava/lang/String;
    .restart local v7    # "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    :cond_6
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 708
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 716
    :cond_7
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getNote()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFreetext(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 767
    .end local v0    # "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .end local v5    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .end local v6    # "presenceStatus":Ljava/lang/String;
    .end local v7    # "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 765
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Internal exception"

    invoke-virtual {v8, v9, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 719
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .restart local v5    # "person":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .restart local v6    # "presenceStatus":Ljava/lang/String;
    .restart local v7    # "willingness":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    :cond_8
    :try_start_2
    new-instance v8, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getHomePage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFavoriteLink(Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;)V

    goto/16 :goto_4

    .line 726
    .restart local v3    # "lastEtag":Ljava/lang/String;
    .restart local v4    # "newEtag":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->getEtag()Ljava/lang/String;

    move-result-object v4

    .local v4, "newEtag":Ljava/lang/String;
    goto/16 :goto_5

    .line 729
    .end local v4    # "newEtag":Ljava/lang/String;
    :cond_a
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v3

    .local v3, "lastEtag":Ljava/lang/String;
    goto/16 :goto_6

    .line 733
    .end local v3    # "lastEtag":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v8

    if-nez v8, :cond_1

    .line 734
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_c

    :goto_9
    const/4 v8, 0x0

    .line 739
    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    .line 742
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->removeMyPhotoIcon()V

    goto/16 :goto_7

    .line 735
    :cond_c
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Photo has been removed for me"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 745
    :cond_d
    if-eqz v4, :cond_2

    .line 746
    if-nez v3, :cond_f

    .line 747
    :cond_e
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_10

    .line 752
    :goto_a
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getPerson()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/sonymobile/rcs/service/RcsCoreService;->downloadPhotoForMe(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 746
    :cond_f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto/16 :goto_7

    .line 748
    :cond_10
    iget-object v8, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Photo has changed for me, download it in background"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a
.end method

.method public declared-synchronized startCore()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    .line 286
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 291
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 295
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 300
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->createInstance(Landroid/content/Context;)V

    .line 302
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->createInstance(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->createInstance(Landroid/content/Context;)V

    .line 308
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->createInstance(Landroid/content/Context;)V

    .line 311
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->createInstance(Landroid/content/Context;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    .line 314
    invoke-static {p0}, Lcom/sonymobile/rcs/core/Core;->createCore(Lcom/sonymobile/rcs/core/CoreListener;)Lcom/sonymobile/rcs/core/Core;

    .line 317
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->startCore()V

    .line 320
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPhotoRootDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/platform/file/FileFactory;->createDirectory(Ljava/lang/String;)Z

    .line 321
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getVideoRootDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/platform/file/FileFactory;->createDirectory(Ljava/lang/String;)Z

    .line 322
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/platform/file/FileFactory;->createDirectory(Ljava/lang/String;)Z

    .line 325
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->cpuManager:Lcom/sonymobile/rcs/service/CpuManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/CpuManager;->init()V

    .line 328
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    if-eqz v3, :cond_5

    .line 348
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/service/api/server/gsma/GsmaUtils;->setClientActivationState(Landroid/content/Context;Z)V

    .line 351
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/utils/ContactUtils;->updateStatusTable(Landroid/content/Context;I)V

    .line 354
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 359
    :goto_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    .line 360
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->airplaneModeToggledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :goto_4
    monitor-exit p0

    .line 371
    return-void

    .line 272
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/permission/PermissionUtil;->setRcsServiceState(Landroid/content/Context;I)V

    .line 277
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 278
    return-void

    .line 273
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Stopping RCS core service because permission not granted..."

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    monitor-exit p0

    .line 282
    return-void

    .line 287
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Start RCS core service"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 369
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->stopSelf()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_6
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "My RCS software release is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 329
    :cond_5
    new-instance v3, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    invoke-direct {v3}, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    .line 338
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 339
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/sonymobile/rcs/service/RcsCoreService$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/rcs/service/RcsCoreService$2;-><init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 355
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "RCS core service started with success"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 365
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t instanciate the RCS core service"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6
.end method

.method public declared-synchronized stopCore()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 377
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/server/gsma/GsmaUtils;->setClientActivationState(Landroid/content/Context;Z)V

    .line 386
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->terminateCore()V

    .line 390
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->cpuManager:Lcom/sonymobile/rcs/service/CpuManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/CpuManager;->close()V

    .line 398
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    monitor-exit p0

    .line 401
    return-void

    :cond_0
    monitor-exit p0

    .line 379
    return-void

    .line 391
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/utils/ContactUtils;->updateStatusTable(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 399
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "RCS core service stopped with success"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
