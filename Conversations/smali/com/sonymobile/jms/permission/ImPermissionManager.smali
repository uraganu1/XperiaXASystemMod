.class public Lcom/sonymobile/jms/permission/ImPermissionManager;
.super Ljava/lang/Object;
.source "ImPermissionManager.java"

# interfaces
.implements Lcom/sonymobile/jms/permission/ImPermissionApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/permission/ImPermissionManager$3;,
        Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;,
        Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;
    }
.end annotation


# instance fields
.field private mAchievedFirstImApiConnection:Z

.field private mAppCtx:Landroid/content/Context;

.field private mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

.field private mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

.field private mImContactPermissionChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mRcsCapabilitiesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            "Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

.field private mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

.field private mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

.field private mReceiver:Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/ApiStatusReader;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "imApiStatusReader"    # Lcom/sonymobile/jms/ApiStatusReader;
    .param p3, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;
    .param p4, "imContactManager"    # Lcom/sonymobile/jms/contact/ImContactManager;
    .param p5, "contactsApi"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;
    .param p6, "rcsRichMessaging"    # Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    .param p7, "rcsCapabilityApi"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    .param p8, "rcsMessagingApi"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAchievedFirstImApiConnection:Z

    .line 126
    iput-object p1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAppCtx:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    .line 128
    iput-object p3, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 129
    iput-object p4, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 130
    iput-object p5, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    .line 131
    iput-object p6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 132
    iput-object p7, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 133
    iput-object p8, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sonymobile.rcs.capability.CONTACT_CAPABILITIES"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;-><init>(Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/permission/ImPermissionManager$1;)V

    iput-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mReceiver:Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;

    .line 141
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAppCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mReceiver:Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/jms/permission/ImPermissionManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/jms/permission/ImPermissionManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/jms/permission/ImPermissionManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/jms/permission/ImPermissionManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/jms/permission/ImPermissionManager;)Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/jms/permission/ImPermissionManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    return-object v0
.end method

.method private assertCapabilityValidity(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    .locals 6
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "rcsCapabilities"    # Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingManager;->getCapabilityValidityPeriod()J

    move-result-wide v0

    .local v0, "rcsCapabilityValidityPeriod":J
    const-wide/16 v2, 0x0

    .line 239
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getTimestamp()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    .line 254
    new-instance v2, Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Capabilities for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is no longer valid. [Validity period set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 264
    :cond_2
    return-void
.end method

.method private createLoadRcsCapabilitiesTask(Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "contactsApi"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    .prologue
    .line 163
    new-instance v0, Lcom/sonymobile/jms/permission/ImPermissionManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager$1;-><init>(Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;)V

    return-object v0
.end method

.method private createRequestRcsCapabilitiesTask(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 182
    new-instance v0, Lcom/sonymobile/jms/permission/ImPermissionManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager$2;-><init>(Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/contact/ImContactNumber;)V

    return-object v0
.end method

.method private getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 4
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 205
    .local v0, "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    if-nez v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/contact/ImContactManager;->isMe(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 228
    if-nez v0, :cond_3

    .line 232
    new-instance v1, Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rcs capabilities of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' was not found in stack!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    return-object v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 217
    if-nez v0, :cond_2

    .line 221
    new-instance v1, Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;

    const-string/jumbo v2, "My rcs capabilities was not found in stack!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-object v0

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-object v0
.end method

.method private getNrOfParticipants(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)I
    .locals 9
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 271
    .local v5, "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 277
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to get group chat sessions matching \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to get group chat sessions matching \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 271
    .end local v2    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 272
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v4

    .line 273
    .local v4, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 274
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    return v6

    .line 280
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v5    # "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_1
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to get group chat session state/participants for group chat session matching \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private isAllowedToAddRecipientsToGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;I)Z
    .locals 7
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "nrOfAdditionalParticipants"    # I

    .prologue
    const/4 v6, 0x0

    .line 293
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getNrOfParticipants(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)I
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 309
    .local v0, "currentNrOfParticipants":I
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxGroupConversationParticipants()I

    move-result v2

    .line 316
    .local v2, "maxNrOfParticipants":I
    add-int v4, v0, p2

    if-lt v2, v4, :cond_1

    .line 319
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v4

    return v4

    .line 308
    .end local v0    # "currentNrOfParticipants":I
    .end local v2    # "maxNrOfParticipants":I
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    iget-object v4, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v3

    .line 301
    .local v3, "rcsGroupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    if-eqz v3, :cond_0

    .line 307
    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getAllParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "currentNrOfParticipants":I
    goto :goto_0

    .end local v0    # "currentNrOfParticipants":I
    :cond_0
    const-string/jumbo v4, "rcsGroupChatInfo for ImGroupConversation \'"

    .line 302
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' can not be retreived from stack."

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 305
    return v6

    .line 317
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v3    # "rcsGroupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .restart local v0    # "currentNrOfParticipants":I
    .restart local v2    # "maxNrOfParticipants":I
    :cond_1
    return v6
.end method

.method private isAllowedToSendGroupTextInvitationTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)Z
    .locals 4
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "imContactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    const/4 v3, 0x0

    .line 325
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToAddRecipientsToGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;I)Z

    move-result v2

    return v2

    .line 325
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 326
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/contact/ImContactManager;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    return v3
.end method

.method private isAllowedToSendInCallOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z
    .locals 20
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "sendingMode"    # Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    .prologue
    const/4 v3, 0x0

    .line 561
    .local v3, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    .line 562
    .local v3, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v16

    .line 563
    .local v16, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    move-object/from16 v3, p1

    .line 564
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v17

    .line 566
    .local v17, "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v12

    .line 567
    .local v12, "isFileTransferSupportedForSelf":Z
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v8

    .line 569
    .local v8, "isFileTransferHttpSupportedForSelf":Z
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v10

    .line 572
    .local v10, "isFileTransferStoreAndForwardSupportedForSelf":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v18

    sget-object v19, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/4 v15, 0x0

    .line 573
    .local v15, "isImApisConnected":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->isFtAlwaysOn()Z

    move-result v13

    .line 574
    .local v13, "isFtCapAlwaysOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->isFtHttpAlwaysOn()Z

    move-result v14

    .line 575
    .local v14, "isFtHttpCapAlwaysOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v2

    .line 576
    .local v2, "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->getDefaultFileTransferProtocol()Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    move-result-object v4

    .line 579
    .local v4, "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v11

    .line 580
    .local v11, "isFileTransferSupportedForRemote":Z
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v7

    .line 582
    .local v7, "isFileTransferHttpSupportedForRemote":Z
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v9

    .line 602
    .local v9, "isFileTransferStoreAndForwardSupportedForRemote":Z
    if-eqz v12, :cond_1

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sonymobile/jms/contact/ImContactManager;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 612
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 675
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unsupported client mode "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " detected!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 677
    const/16 v18, 0x0

    return v18

    .end local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .end local v7    # "isFileTransferHttpSupportedForRemote":Z
    .end local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .end local v11    # "isFileTransferSupportedForRemote":Z
    .end local v13    # "isFtCapAlwaysOn":Z
    .end local v14    # "isFtHttpCapAlwaysOn":Z
    .end local v15    # "isImApisConnected":Z
    :cond_0
    const/4 v15, 0x1

    .line 572
    goto :goto_0

    .line 603
    .restart local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .restart local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .restart local v7    # "isFileTransferHttpSupportedForRemote":Z
    .restart local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .restart local v11    # "isFileTransferSupportedForRemote":Z
    .restart local v13    # "isFtCapAlwaysOn":Z
    .restart local v14    # "isFtHttpCapAlwaysOn":Z
    .restart local v15    # "isImApisConnected":Z
    :cond_1
    const/16 v18, 0x0

    return v18

    .line 610
    :cond_2
    const/16 v18, 0x0

    return v18

    .line 615
    :pswitch_0
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$DefaultFileTransferProtocol:[I

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    .line 637
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unsupported default file transfer protocol "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " detected!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 641
    const/16 v18, 0x0

    return v18

    .line 617
    :pswitch_1
    if-nez v13, :cond_3

    .line 621
    if-nez v15, :cond_6

    :goto_1
    const/16 v18, 0x0

    :goto_2
    return v18

    .line 618
    :cond_3
    if-eqz v11, :cond_5

    :cond_4
    const/16 v18, 0x1

    :goto_3
    return v18

    :cond_5
    if-nez v10, :cond_4

    const/16 v18, 0x0

    goto :goto_3

    .line 621
    :cond_6
    if-eqz v11, :cond_8

    :cond_7
    const/16 v18, 0x1

    goto :goto_2

    :cond_8
    if-nez v9, :cond_7

    goto :goto_1

    .line 625
    :pswitch_2
    if-nez v14, :cond_9

    .line 628
    if-nez v13, :cond_d

    .line 632
    if-nez v15, :cond_10

    :goto_4
    const/16 v18, 0x0

    :goto_5
    return v18

    .line 626
    :cond_9
    if-nez v8, :cond_a

    :goto_6
    const/16 v18, 0x0

    :goto_7
    return v18

    :cond_a
    if-eqz v7, :cond_c

    :cond_b
    const/16 v18, 0x1

    goto :goto_7

    :cond_c
    if-nez v11, :cond_b

    goto :goto_6

    .line 629
    :cond_d
    if-eqz v11, :cond_f

    :cond_e
    const/16 v18, 0x1

    :goto_8
    return v18

    :cond_f
    if-nez v10, :cond_e

    const/16 v18, 0x0

    goto :goto_8

    .line 632
    :cond_10
    if-nez v8, :cond_13

    :cond_11
    if-eqz v11, :cond_14

    :cond_12
    :goto_9
    const/16 v18, 0x1

    goto :goto_5

    :cond_13
    if-eqz v7, :cond_11

    goto :goto_9

    :cond_14
    if-nez v9, :cond_12

    goto :goto_4

    .line 644
    :pswitch_3
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$DefaultFileTransferProtocol:[I

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_2

    .line 665
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unsupported default file transfer protocol "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " detected!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 669
    const/16 v18, 0x0

    return v18

    .line 646
    :pswitch_4
    if-nez v13, :cond_16

    .line 650
    if-eqz v11, :cond_19

    :cond_15
    const/16 v18, 0x1

    :goto_a
    return v18

    .line 647
    :cond_16
    if-eqz v11, :cond_18

    :cond_17
    const/16 v18, 0x1

    :goto_b
    return v18

    :cond_18
    if-nez v10, :cond_17

    const/16 v18, 0x0

    goto :goto_b

    .line 650
    :cond_19
    if-nez v9, :cond_15

    const/16 v18, 0x0

    goto :goto_a

    .line 654
    :pswitch_5
    if-nez v14, :cond_1c

    .line 656
    if-nez v13, :cond_1d

    .line 660
    if-nez v8, :cond_20

    :cond_1a
    if-eqz v11, :cond_21

    :cond_1b
    :goto_c
    const/16 v18, 0x1

    :goto_d
    return v18

    .line 655
    :cond_1c
    return v8

    .line 657
    :cond_1d
    if-eqz v11, :cond_1f

    :cond_1e
    const/16 v18, 0x1

    :goto_e
    return v18

    :cond_1f
    if-nez v10, :cond_1e

    const/16 v18, 0x0

    goto :goto_e

    .line 660
    :cond_20
    if-eqz v7, :cond_1a

    goto :goto_c

    :cond_21
    if-nez v9, :cond_1b

    const/16 v18, 0x0

    goto :goto_d

    .line 672
    :pswitch_6
    const/16 v18, 0x0

    return v18

    .line 677
    .end local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v3    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .end local v7    # "isFileTransferHttpSupportedForRemote":Z
    .end local v8    # "isFileTransferHttpSupportedForSelf":Z
    .end local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .end local v10    # "isFileTransferStoreAndForwardSupportedForSelf":Z
    .end local v11    # "isFileTransferSupportedForRemote":Z
    .end local v12    # "isFileTransferSupportedForSelf":Z
    .end local v13    # "isFtCapAlwaysOn":Z
    .end local v14    # "isFtHttpCapAlwaysOn":Z
    .end local v15    # "isImApisConnected":Z
    .end local v16    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v17    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v6

    .line 685
    .local v6, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    const/16 v18, 0x0

    return v18

    .end local v6    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v5

    .line 691
    .local v5, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/16 v18, 0x0

    return v18

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 644
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z
    .locals 20
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "sendingMode"    # Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    .prologue
    const/4 v3, 0x0

    .line 415
    .local v3, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    .line 416
    .local v3, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v16

    .line 417
    .local v16, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    move-object/from16 v3, p1

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v17

    .line 420
    .local v17, "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v12

    .line 421
    .local v12, "isFileTransferSupportedForSelf":Z
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v8

    .line 423
    .local v8, "isFileTransferHttpSupportedForSelf":Z
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v10

    .line 426
    .local v10, "isFileTransferStoreAndForwardSupportedForSelf":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v18

    sget-object v19, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/4 v15, 0x0

    .line 427
    .local v15, "isImApisConnected":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->isFtAlwaysOn()Z

    move-result v13

    .line 428
    .local v13, "isFtCapAlwaysOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->isFtHttpAlwaysOn()Z

    move-result v14

    .line 429
    .local v14, "isFtHttpCapAlwaysOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v2

    .line 430
    .local v2, "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/setting/ImSettingManager;->getDefaultFileTransferProtocol()Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    move-result-object v4

    .line 433
    .local v4, "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v11

    .line 434
    .local v11, "isFileTransferSupportedForRemote":Z
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v7

    .line 436
    .local v7, "isFileTransferHttpSupportedForRemote":Z
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v9

    .line 456
    .local v9, "isFileTransferStoreAndForwardSupportedForRemote":Z
    if-eqz v12, :cond_1

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sonymobile/jms/contact/ImContactManager;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 466
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 537
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unsupported client mode "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " detected!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 539
    const/16 v18, 0x0

    return v18

    .end local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .end local v7    # "isFileTransferHttpSupportedForRemote":Z
    .end local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .end local v11    # "isFileTransferSupportedForRemote":Z
    .end local v13    # "isFtCapAlwaysOn":Z
    .end local v14    # "isFtHttpCapAlwaysOn":Z
    .end local v15    # "isImApisConnected":Z
    :cond_0
    const/4 v15, 0x1

    .line 426
    goto :goto_0

    .line 457
    .restart local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .restart local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .restart local v7    # "isFileTransferHttpSupportedForRemote":Z
    .restart local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .restart local v11    # "isFileTransferSupportedForRemote":Z
    .restart local v13    # "isFtCapAlwaysOn":Z
    .restart local v14    # "isFtHttpCapAlwaysOn":Z
    .restart local v15    # "isImApisConnected":Z
    :cond_1
    const/16 v18, 0x0

    return v18

    .line 464
    :cond_2
    const/16 v18, 0x0

    return v18

    .line 469
    :pswitch_0
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$DefaultFileTransferProtocol:[I

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    .line 499
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unsupported default file transfer protocol "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " detected!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 503
    const/16 v18, 0x0

    return v18

    .line 471
    :pswitch_1
    if-nez v13, :cond_3

    .line 475
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 479
    :goto_1
    if-nez v15, :cond_7

    :goto_2
    const/16 v18, 0x0

    :goto_3
    return v18

    .line 472
    :cond_3
    if-eqz v11, :cond_5

    :cond_4
    const/16 v18, 0x1

    :goto_4
    return v18

    :cond_5
    if-nez v10, :cond_4

    const/16 v18, 0x0

    goto :goto_4

    .line 476
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertCapabilityValidity(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    goto :goto_1

    .line 539
    .end local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v3    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .end local v7    # "isFileTransferHttpSupportedForRemote":Z
    .end local v8    # "isFileTransferHttpSupportedForSelf":Z
    .end local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .end local v10    # "isFileTransferStoreAndForwardSupportedForSelf":Z
    .end local v11    # "isFileTransferSupportedForRemote":Z
    .end local v12    # "isFileTransferSupportedForSelf":Z
    .end local v13    # "isFtCapAlwaysOn":Z
    .end local v14    # "isFtHttpCapAlwaysOn":Z
    .end local v15    # "isImApisConnected":Z
    .end local v16    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v17    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v6

    .line 547
    .local v6, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    const/16 v18, 0x0

    return v18

    .line 479
    .end local v6    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    .restart local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .restart local v3    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .restart local v7    # "isFileTransferHttpSupportedForRemote":Z
    .restart local v8    # "isFileTransferHttpSupportedForSelf":Z
    .restart local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .restart local v10    # "isFileTransferStoreAndForwardSupportedForSelf":Z
    .restart local v11    # "isFileTransferSupportedForRemote":Z
    .restart local v12    # "isFileTransferSupportedForSelf":Z
    .restart local v13    # "isFtCapAlwaysOn":Z
    .restart local v14    # "isFtHttpCapAlwaysOn":Z
    .restart local v15    # "isImApisConnected":Z
    .restart local v16    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v17    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_7
    if-eqz v11, :cond_9

    :cond_8
    const/16 v18, 0x1

    goto :goto_3

    :cond_9
    if-nez v9, :cond_8

    goto :goto_2

    .line 483
    :pswitch_2
    if-nez v14, :cond_a

    .line 486
    if-nez v13, :cond_e

    .line 490
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 494
    :goto_5
    if-nez v15, :cond_12

    :goto_6
    const/16 v18, 0x0

    :goto_7
    return v18

    .line 484
    :cond_a
    if-nez v8, :cond_b

    :goto_8
    const/16 v18, 0x0

    :goto_9
    return v18

    :cond_b
    if-eqz v7, :cond_d

    :cond_c
    const/16 v18, 0x1

    goto :goto_9

    :cond_d
    if-nez v11, :cond_c

    goto :goto_8

    .line 487
    :cond_e
    if-eqz v11, :cond_10

    :cond_f
    const/16 v18, 0x1

    :goto_a
    return v18

    :cond_10
    if-nez v10, :cond_f

    const/16 v18, 0x0

    goto :goto_a

    .line 491
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertCapabilityValidity(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    goto :goto_5

    .line 547
    .end local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v3    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .end local v7    # "isFileTransferHttpSupportedForRemote":Z
    .end local v8    # "isFileTransferHttpSupportedForSelf":Z
    .end local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .end local v10    # "isFileTransferStoreAndForwardSupportedForSelf":Z
    .end local v11    # "isFileTransferSupportedForRemote":Z
    .end local v12    # "isFileTransferSupportedForSelf":Z
    .end local v13    # "isFtCapAlwaysOn":Z
    .end local v14    # "isFtHttpCapAlwaysOn":Z
    .end local v15    # "isImApisConnected":Z
    .end local v16    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v17    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_1
    move-exception v5

    .line 553
    .local v5, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/16 v18, 0x0

    return v18

    .line 494
    .end local v5    # "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    .restart local v2    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .restart local v3    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v4    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .restart local v7    # "isFileTransferHttpSupportedForRemote":Z
    .restart local v8    # "isFileTransferHttpSupportedForSelf":Z
    .restart local v9    # "isFileTransferStoreAndForwardSupportedForRemote":Z
    .restart local v10    # "isFileTransferStoreAndForwardSupportedForSelf":Z
    .restart local v11    # "isFileTransferSupportedForRemote":Z
    .restart local v12    # "isFileTransferSupportedForSelf":Z
    .restart local v13    # "isFtCapAlwaysOn":Z
    .restart local v14    # "isFtHttpCapAlwaysOn":Z
    .restart local v15    # "isImApisConnected":Z
    .restart local v16    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v17    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_12
    if-nez v8, :cond_15

    :cond_13
    if-eqz v11, :cond_16

    :cond_14
    :goto_b
    const/16 v18, 0x1

    goto :goto_7

    :cond_15
    if-eqz v7, :cond_13

    goto :goto_b

    :cond_16
    if-nez v9, :cond_14

    goto :goto_6

    .line 506
    :pswitch_3
    sget-object v18, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$DefaultFileTransferProtocol:[I

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_2

    .line 527
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unsupported default file transfer protocol "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " detected!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 531
    const/16 v18, 0x0

    return v18

    .line 508
    :pswitch_4
    if-nez v13, :cond_18

    .line 512
    if-eqz v11, :cond_1b

    :cond_17
    const/16 v18, 0x1

    :goto_c
    return v18

    .line 509
    :cond_18
    if-eqz v11, :cond_1a

    :cond_19
    const/16 v18, 0x1

    :goto_d
    return v18

    :cond_1a
    if-nez v10, :cond_19

    const/16 v18, 0x0

    goto :goto_d

    .line 512
    :cond_1b
    if-nez v9, :cond_17

    const/16 v18, 0x0

    goto :goto_c

    .line 516
    :pswitch_5
    if-nez v14, :cond_1e

    .line 518
    if-nez v13, :cond_1f

    .line 522
    if-nez v8, :cond_22

    :cond_1c
    if-eqz v11, :cond_23

    :cond_1d
    :goto_e
    const/16 v18, 0x1

    :goto_f
    return v18

    .line 517
    :cond_1e
    return v8

    .line 519
    :cond_1f
    if-eqz v11, :cond_21

    :cond_20
    const/16 v18, 0x1

    :goto_10
    return v18

    :cond_21
    if-nez v10, :cond_20

    const/16 v18, 0x0

    goto :goto_10

    .line 522
    :cond_22
    if-eqz v7, :cond_1c

    goto :goto_e

    :cond_23
    if-nez v9, :cond_1d

    const/16 v18, 0x0

    goto :goto_f

    .line 534
    :pswitch_6
    const/16 v18, 0x0

    return v18

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 506
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z
    .locals 12
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "sendingMode"    # Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    .prologue
    const/4 v1, 0x0

    .line 342
    .local v1, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v10}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .line 343
    .local v1, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v8

    .line 344
    .local v8, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    move-object v1, p1

    .line 345
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v9

    .line 347
    .local v9, "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v7

    .line 349
    .local v7, "isImSessionSuppedForSelf":Z
    iget-object v10, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v10}, Lcom/sonymobile/jms/setting/ImSettingManager;->isImAlwaysOn()Z

    move-result v5

    .line 350
    .local v5, "isImCapAlwaysOn":Z
    iget-object v10, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v10}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v0

    .line 351
    .local v0, "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    iget-object v10, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v10}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v10

    sget-object v11, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v10, v11, :cond_0

    const/4 v4, 0x0

    .line 353
    .local v4, "isImApisConnected":Z
    :goto_0
    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v6

    .line 362
    .local v6, "isImSessionSuppedForRemote":Z
    if-eqz v7, :cond_1

    .line 365
    iget-object v10, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v10, v1}, Lcom/sonymobile/jms/contact/ImContactManager;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 370
    sget-object v10, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Unsupported client mode "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " detected!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 393
    const/4 v10, 0x0

    return v10

    .end local v4    # "isImApisConnected":Z
    .end local v6    # "isImSessionSuppedForRemote":Z
    :cond_0
    const/4 v4, 0x1

    .line 351
    goto :goto_0

    .line 363
    .restart local v4    # "isImApisConnected":Z
    .restart local v6    # "isImSessionSuppedForRemote":Z
    :cond_1
    const/4 v10, 0x0

    return v10

    :cond_2
    const-string/jumbo v10, "ImContact \'"

    .line 366
    invoke-static {v10}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "\' is no rcs contact!"

    invoke-virtual {v10, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 368
    const/4 v10, 0x0

    return v10

    .line 373
    :pswitch_0
    if-nez v5, :cond_4

    .line 376
    sget-object v10, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    if-ne p2, v10, :cond_5

    .line 379
    :goto_1
    if-nez v4, :cond_6

    :cond_3
    const/4 v10, 0x0

    :goto_2
    return v10

    .line 374
    :cond_4
    const/4 v10, 0x1

    return v10

    .line 377
    :cond_5
    invoke-direct {p0, v1, v9}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertCapabilityValidity(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 393
    .end local v0    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v1    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "isImApisConnected":Z
    .end local v5    # "isImCapAlwaysOn":Z
    .end local v6    # "isImSessionSuppedForRemote":Z
    .end local v7    # "isImSessionSuppedForSelf":Z
    .end local v8    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v9    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v3

    .line 401
    .local v3, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    const/4 v10, 0x0

    return v10

    .line 379
    .end local v3    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    .restart local v0    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .restart local v1    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v4    # "isImApisConnected":Z
    .restart local v5    # "isImCapAlwaysOn":Z
    .restart local v6    # "isImSessionSuppedForRemote":Z
    .restart local v7    # "isImSessionSuppedForSelf":Z
    .restart local v8    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v9    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_6
    if-eqz v6, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    .line 382
    :pswitch_1
    if-nez v5, :cond_7

    .line 385
    return v6

    .line 383
    :cond_7
    const/4 v10, 0x1

    return v10

    .line 388
    :pswitch_2
    const/4 v10, 0x0

    return v10

    .line 401
    .end local v0    # "clientMode":Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .end local v1    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "isImApisConnected":Z
    .end local v5    # "isImCapAlwaysOn":Z
    .end local v6    # "isImSessionSuppedForRemote":Z
    .end local v7    # "isImSessionSuppedForSelf":Z
    .end local v8    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v9    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_1
    move-exception v2

    .line 407
    .local v2, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/4 v10, 0x0

    return v10

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public assertIsAllowedToDequeueGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1321
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToSendGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    return-void

    .line 1326
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send dequeue group file message to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToDequeueGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1309
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    return-void

    .line 1314
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send dequeue group text message to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToDequeueOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 3
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1294
    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1303
    return-void

    .line 1295
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to dequeue one2one file message to existing conversation denied!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send dequeue one2one file message to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToDequeueOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 3
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1280
    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    return-void

    .line 1281
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to dequeue one2one text message to existing conversation denied!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send dequeue one2one text message to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToSendGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1126
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    return-void

    .line 1127
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send one2one text message to existing conversation denied!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send one2one text message to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToSendGroupTextInvitationTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1333
    .local p2, "imContacts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendGroupTextInvitationTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    return-void

    .line 1334
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send group text invitation to existing conversation denied!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send group text invitation to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1112
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    return-void

    .line 1113
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send group text message to existing conversation denied!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send group text message to existing conversation denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public assertIsAllowedToSendGroupTextMessageTo(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1084
    .local p1, "imContactNumber":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendGroupTextMessageTo(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    return-void

    .line 1085
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send text message to group denied!"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    const-string/jumbo v2, "Permission to send text message to group denied!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAppCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mReceiver:Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 147
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 148
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;

    .line 149
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;

    .line 151
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    .line 152
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 153
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 154
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 155
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 156
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 157
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    .line 158
    iput-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAppCtx:Landroid/content/Context;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAchievedFirstImApiConnection:Z

    .line 160
    return-void
.end method

.method public isAbleToUseGroupFallbackTechnology(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 1
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public isAbleToUseOne2OneFallbackTechnology(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
    .locals 2
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 1033
    sget-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1038
    const/4 v0, 0x0

    return v0

    .line 1036
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 7
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1250
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v5}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 1251
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    .line 1253
    .local v4, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1260
    .local v3, "isFileTransferHttpSupportedForSelf":Z
    return v3

    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "isFileTransferHttpSupportedForSelf":Z
    .end local v4    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v2

    .line 1267
    .local v2, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    return v6

    .end local v2    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v1

    .line 1273
    .local v1, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    return v6
.end method

.method public isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
    .locals 13
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    const/4 v0, 0x0

    .line 1179
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v11, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v11}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 1180
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v9

    .line 1181
    .local v9, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    move-object v0, p1

    .line 1182
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v10

    .line 1185
    .local v10, "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v8

    .line 1187
    .local v8, "isFileTransferThumbnailSupportedForSelf":Z
    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v6

    .line 1188
    .local v6, "isFileTransferSupportedForSelf":Z
    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v5

    .line 1191
    .local v5, "isFileTransferHttpSupportedForSelf":Z
    iget-object v11, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v11}, Lcom/sonymobile/jms/setting/ImSettingManager;->getDefaultFileTransferProtocol()Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    move-result-object v1

    .line 1194
    .local v1, "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v7

    .line 1196
    .local v7, "isFileTransferThumbnailSupportedForRemote":Z
    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v4

    .line 1212
    .local v4, "isFileTransferHttpSupportedForRemote":Z
    sget-object v11, Lcom/sonymobile/jms/permission/ImPermissionManager$3;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$DefaultFileTransferProtocol:[I

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 1224
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unsupported default file transfer protocol "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " detected!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1227
    const/4 v11, 0x0

    return v11

    .line 1214
    :pswitch_0
    if-nez v8, :cond_1

    :cond_0
    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_1
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    .line 1218
    :pswitch_1
    if-nez v5, :cond_4

    :cond_2
    if-nez v8, :cond_6

    :cond_3
    :goto_1
    const/4 v11, 0x0

    :goto_2
    return v11

    :cond_4
    if-eqz v4, :cond_2

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_3

    if-nez v7, :cond_5

    goto :goto_1

    .line 1227
    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v1    # "defaultFileTransferProtocol":Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .end local v4    # "isFileTransferHttpSupportedForRemote":Z
    .end local v5    # "isFileTransferHttpSupportedForSelf":Z
    .end local v6    # "isFileTransferSupportedForSelf":Z
    .end local v7    # "isFileTransferThumbnailSupportedForRemote":Z
    .end local v8    # "isFileTransferThumbnailSupportedForSelf":Z
    .end local v9    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v10    # "remoteCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v3

    .line 1235
    .local v3, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    const/4 v11, 0x0

    return v11

    .end local v3    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v2

    .line 1242
    .local v2, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/4 v11, 0x0

    return v11

    .line 1212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAllowedToLeaveGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 6
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const/4 v5, 0x0

    .line 1000
    iget-object v3, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v3}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v1

    .line 1001
    .local v1, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne v1, v3, :cond_0

    .line 1008
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1015
    .local v2, "rcsGroupChatStatus":I
    sparse-switch v2, :sswitch_data_0

    .line 1020
    const/4 v3, 0x1

    return v3

    .line 1005
    .end local v2    # "rcsGroupChatStatus":I
    :cond_0
    return v5

    .line 1018
    .restart local v2    # "rcsGroupChatStatus":I
    :sswitch_0
    return v5

    .line 1020
    .end local v2    # "rcsGroupChatStatus":I
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/database/SQLException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to determine if ImConversation \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is teminated by local user!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1026
    return v5

    .line 1015
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public isAllowedToSendGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 8
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 891
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v6}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 892
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v5

    .line 894
    .local v5, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v3

    .line 897
    .local v3, "isFileTransferHttpSupportedForSelf":Z
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v6}, Lcom/sonymobile/jms/setting/ImSettingManager;->isGroupConversationActivated()Z
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 907
    .local v4, "isGroupConversationActivated":Z
    if-nez v3, :cond_1

    .line 908
    :cond_0
    return v7

    .line 907
    :cond_1
    if-eqz v4, :cond_0

    .line 910
    const/4 v6, 0x1

    return v6

    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "isFileTransferHttpSupportedForSelf":Z
    .end local v4    # "isGroupConversationActivated":Z
    .end local v5    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v2

    .line 917
    .local v2, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    return v7

    .end local v2    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v1

    .line 923
    .local v1, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    return v7
.end method

.method public isAllowedToSendGroupFileMessageTo(Ljava/util/Collection;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "imContactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    const/4 v0, 0x0

    .line 793
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v13, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v13}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 794
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v11

    .line 796
    .local v11, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v11}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v8

    .line 797
    .local v8, "isImSessionSupportedForSelf":Z
    invoke-virtual {v11}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v5

    .line 800
    .local v5, "isFileTransferHttpSupportedForSelf":Z
    iget-object v13, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v13}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v13

    sget-object v14, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v13, v14, :cond_1

    const/4 v7, 0x0

    .line 801
    .local v7, "isImApisConnected":Z
    :goto_0
    iget-object v13, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v13}, Lcom/sonymobile/jms/setting/ImSettingManager;->isGroupConversationActivated()Z

    move-result v6

    .line 804
    .local v6, "isGroupConversationActivated":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v12

    .line 805
    .local v12, "nrOfImContacts":I
    iget-object v13, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v13}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMinGroupConversationParticipants()I

    move-result v10

    .line 806
    .local v10, "minGroupParticipants":I
    iget-object v13, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v13}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxGroupConversationParticipants()I

    move-result v9

    .line 818
    .local v9, "maxGroupParticipants":I
    if-nez v7, :cond_2

    .line 820
    :cond_0
    const/4 v13, 0x0

    return v13

    .end local v6    # "isGroupConversationActivated":Z
    .end local v7    # "isImApisConnected":Z
    .end local v9    # "maxGroupParticipants":I
    .end local v10    # "minGroupParticipants":I
    .end local v12    # "nrOfImContacts":I
    :cond_1
    const/4 v7, 0x1

    .line 800
    goto :goto_0

    .line 818
    .restart local v6    # "isGroupConversationActivated":Z
    .restart local v7    # "isImApisConnected":Z
    .restart local v9    # "maxGroupParticipants":I
    .restart local v10    # "minGroupParticipants":I
    .restart local v12    # "nrOfImContacts":I
    :cond_2
    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 822
    if-ge v12, v10, :cond_4

    .line 823
    :cond_3
    const/4 v13, 0x0

    return v13

    .line 822
    :cond_4
    if-gt v12, v9, :cond_3

    .line 825
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 832
    const/4 v13, 0x1

    return v13

    .line 825
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 826
    .local v4, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v13, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v13, v4}, Lcom/sonymobile/jms/contact/ImContactManager;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "ImContact \'"

    .line 827
    invoke-static {v13}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    const-string/jumbo v14, "\' is no rcs contact!"

    invoke-virtual {v13, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 829
    const/4 v13, 0x0

    return v13

    .line 832
    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v5    # "isFileTransferHttpSupportedForSelf":Z
    .end local v6    # "isGroupConversationActivated":Z
    .end local v7    # "isImApisConnected":Z
    .end local v8    # "isImSessionSupportedForSelf":Z
    .end local v9    # "maxGroupParticipants":I
    .end local v10    # "minGroupParticipants":I
    .end local v11    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v12    # "nrOfImContacts":I
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    const/4 v13, 0x0

    return v13

    .end local v2    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v1

    .line 845
    .local v1, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/4 v13, 0x0

    return v13
.end method

.method public isAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 8
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 853
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v6}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 854
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v5

    .line 856
    .local v5, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    .line 858
    .local v4, "isImSessionSuppedForSelf":Z
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v6}, Lcom/sonymobile/jms/setting/ImSettingManager;->isGroupConversationActivated()Z
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 867
    .local v3, "isGroupConversationActivated":Z
    if-nez v4, :cond_1

    .line 868
    :cond_0
    return v7

    .line 867
    :cond_1
    if-eqz v3, :cond_0

    .line 870
    const/4 v6, 0x1

    return v6

    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "isGroupConversationActivated":Z
    .end local v4    # "isImSessionSuppedForSelf":Z
    .end local v5    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v2

    .line 877
    .local v2, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    return v7

    .end local v2    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v1

    .line 883
    .local v1, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    return v7
.end method

.method public isAllowedToSendGroupTextMessageTo(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "imContactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    const/4 v0, 0x0

    .line 735
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v12, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v12}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 736
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v10

    .line 738
    .local v10, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v7

    .line 740
    .local v7, "isImSessionSupportedForSelf":Z
    iget-object v12, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v12}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v12

    sget-object v13, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v12, v13, :cond_1

    const/4 v6, 0x0

    .line 741
    .local v6, "isImApisConnected":Z
    :goto_0
    iget-object v12, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v12}, Lcom/sonymobile/jms/setting/ImSettingManager;->isGroupConversationActivated()Z

    move-result v5

    .line 744
    .local v5, "isGroupConversationActivated":Z
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    .line 745
    .local v11, "nrOfImContacts":I
    iget-object v12, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v12}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMinGroupConversationParticipants()I

    move-result v9

    .line 746
    .local v9, "minGroupParticipants":I
    iget-object v12, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v12}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxGroupConversationParticipants()I

    move-result v8

    .line 757
    .local v8, "maxGroupParticipants":I
    if-nez v6, :cond_2

    .line 758
    :cond_0
    const/4 v12, 0x0

    return v12

    .end local v5    # "isGroupConversationActivated":Z
    .end local v6    # "isImApisConnected":Z
    .end local v8    # "maxGroupParticipants":I
    .end local v9    # "minGroupParticipants":I
    .end local v11    # "nrOfImContacts":I
    :cond_1
    const/4 v6, 0x1

    .line 740
    goto :goto_0

    .line 757
    .restart local v5    # "isGroupConversationActivated":Z
    .restart local v6    # "isImApisConnected":Z
    .restart local v8    # "maxGroupParticipants":I
    .restart local v9    # "minGroupParticipants":I
    .restart local v11    # "nrOfImContacts":I
    :cond_2
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 760
    if-ge v11, v9, :cond_4

    .line 761
    :cond_3
    const/4 v12, 0x0

    return v12

    .line 760
    :cond_4
    if-gt v11, v8, :cond_3

    .line 763
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 772
    const/4 v12, 0x1

    return v12

    .line 763
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 764
    .local v4, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v12, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v12, v4}, Lcom/sonymobile/jms/contact/ImContactManager;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-nez v12, :cond_5

    .line 769
    const/4 v12, 0x0

    return v12

    .line 772
    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v5    # "isGroupConversationActivated":Z
    .end local v6    # "isImApisConnected":Z
    .end local v7    # "isImSessionSupportedForSelf":Z
    .end local v8    # "maxGroupParticipants":I
    .end local v9    # "minGroupParticipants":I
    .end local v10    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v11    # "nrOfImContacts":I
    :catch_0
    move-exception v2

    .line 779
    .local v2, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    const/4 v12, 0x0

    return v12

    .end local v2    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v1

    .line 785
    .local v1, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/4 v12, 0x0

    return v12
.end method

.method public isAllowedToSendInCallOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
    .locals 1
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 727
    sget-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->NORMAL:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendInCallOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z

    move-result v0

    return v0
.end method

.method public isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
    .locals 1
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 721
    sget-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->NORMAL:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z

    move-result v0

    return v0
.end method

.method public isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
    .locals 1
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 715
    sget-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->NORMAL:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;)Z

    move-result v0

    return v0
.end method

.method public isAllowedToStartGroupConversation()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 956
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v9}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 957
    .local v0, "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v6

    .line 959
    .local v6, "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v5

    .line 961
    .local v5, "isImSessionSupportedForSelf":Z
    iget-object v9, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v9}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v9

    sget-object v10, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v9, v10, :cond_1

    move v4, v7

    .line 962
    .local v4, "isImApisConnected":Z
    :goto_0
    iget-object v9, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v9}, Lcom/sonymobile/jms/setting/ImSettingManager;->isGroupConversationActivated()Z
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 971
    .local v3, "isGroupConversationActivated":Z
    if-nez v4, :cond_2

    .line 972
    :cond_0
    return v7

    .end local v3    # "isGroupConversationActivated":Z
    .end local v4    # "isImApisConnected":Z
    :cond_1
    move v4, v8

    .line 961
    goto :goto_0

    .line 971
    .restart local v3    # "isGroupConversationActivated":Z
    .restart local v4    # "isImApisConnected":Z
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 974
    return v8

    .end local v0    # "currentImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "isGroupConversationActivated":Z
    .end local v4    # "isImApisConnected":Z
    .end local v5    # "isImSessionSupportedForSelf":Z
    .end local v6    # "myCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :catch_0
    move-exception v2

    .line 981
    .local v2, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    return v7

    .end local v2    # "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    :catch_1
    move-exception v1

    .line 987
    .local v1, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    return v7
.end method

.method public onImApisConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 3
    .param p1, "imApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 696
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    monitor-enter v1

    .line 700
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAchievedFirstImApiConnection:Z

    if-eqz v0, :cond_1

    .line 707
    :goto_0
    monitor-exit v1

    .line 708
    return-void

    .line 697
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "First imApi connection achieved."

    .line 701
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mAchievedFirstImApiConnection:Z

    .line 705
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-direct {p0, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->createLoadRcsCapabilitiesTask(Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerImContactPermissionChangeListener(Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1139
    return-void
.end method

.method public tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    .locals 4
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 1165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->getCachedCapabilities(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v1

    .line 1166
    .local v1, "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertCapabilityValidity(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    .end local v1    # "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :goto_0
    return-void

    .line 1170
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Lcom/sonymobile/jms/permission/NoRcsCapabilitiesFoundException;
    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->createRequestRcsCapabilitiesTask(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unregisterImContactPermissionChangeListener(Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1145
    return-void
.end method
