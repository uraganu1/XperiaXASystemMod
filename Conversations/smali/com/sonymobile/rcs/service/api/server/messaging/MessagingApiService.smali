.class public Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;
.super Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;
.source "MessagingApiService.java"


# static fields
.field private static chatSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private static ftSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private fileTransferSetupListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    const-class v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;-><init>()V

    .line 94
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    .line 99
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->lock:Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Messaging API service is loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    .prologue
    .line 145
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a chat session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    .prologue
    .line 169
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a file transfer session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalAvailableSpaceInBytes()J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    .line 1334
    .local v0, "availableSpace":J
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 1342
    .end local v3    # "stat":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-wide v0

    .line 1340
    :catch_0
    move-exception v2

    .line 1337
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1338
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t fetch available space on device"

    invoke-virtual {v4, v5, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isGroupChatRejoinable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1498
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v0

    .line 1500
    .local v0, "groupChat":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getRejoinId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1518
    const/4 v1, 0x1

    return v1

    .line 1501
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1506
    :goto_0
    return v4

    .line 1502
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Group chat with group chat Id \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not rejoinable as the group chat does not exist in DB."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1509
    :cond_2
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1516
    :goto_1
    return v4

    .line 1510
    :cond_3
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Group chat with group chat Id \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not rejoinable as there is no ongoing session with corresponding chatId and there exists no rejoinId to rejoin the group chat."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static removeChatSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove a chat session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeFileTransferSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove a file transfer session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    .prologue
    .line 1244
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1249
    return-void

    .line 1245
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add a file transfer setup listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    .prologue
    .line 1218
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1223
    return-void

    .line 1219
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add a message delivery listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearGroupChatSessions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1351
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1356
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1359
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1362
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->clearGroupChatSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    return-void

    .line 1352
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Clear group chat sessions"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 136
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 137
    return-void
.end method

.method public extendOneOneChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V
    .locals 4
    .param p1, "groupSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;
    .param p2, "oneoneSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    .prologue
    .line 713
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 718
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 721
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v1, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 722
    .local v1, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.messaging.CHAT_SESSION_REPLACED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "sessionId"

    .line 726
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "replacedSessionId"

    .line 727
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 728
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 729
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    return-void

    .line 714
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Extend a 1-1 chat session"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1022
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1030
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1033
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    return-object v0

    .line 1023
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get chat session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChatSessions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1080
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1085
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1088
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1091
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1092
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 1096
    return-object v2

    .line 1081
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Get chat sessions"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    .restart local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    .line 1094
    .local v3, "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1096
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v3    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1101
    :goto_2
    new-instance v4, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1099
    :cond_2
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unexpected error"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1044
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1049
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1052
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1055
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessionsWith(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 1056
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 1057
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 1064
    return-object v3

    .line 1045
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get chat sessions with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 1059
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    .line 1060
    .local v5, "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-nez v5, :cond_2

    .line 1057
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1061
    :cond_2
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1064
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v5    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1069
    :goto_3
    new-instance v6, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1067
    :cond_3
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Unexpected error"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 585
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 593
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 596
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    return-object v0

    .line 586
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get file transfer session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileTransferSessions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 644
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 649
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 652
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 655
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 656
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 660
    return-object v2

    .line 645
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Get file transfer sessions"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    .restart local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;>;"
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    .line 658
    .local v3, "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 660
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v3    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 665
    :goto_2
    new-instance v4, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    :cond_2
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unexpected error"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 607
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 612
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 615
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 618
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 620
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 621
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 628
    return-object v3

    .line 608
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get file transfer sessions with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .line 623
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->ftSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    .line 624
    .local v5, "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-nez v5, :cond_2

    .line 621
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 625
    :cond_2
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 628
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v5    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 633
    :goto_3
    new-instance v6, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 631
    :cond_3
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Unexpected error"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getGroupChatSessions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1112
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1117
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1120
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1123
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1124
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 1130
    return-object v2

    .line 1113
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Get group chat sessions"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    .restart local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    .line 1126
    .local v3, "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1127
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1130
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v3    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1135
    :goto_2
    new-instance v4, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1133
    :cond_3
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unexpected error"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1375
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1380
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1383
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1386
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1376
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Get group chat sessions for auto rejoin"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1146
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1151
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1154
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 1157
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1158
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->chatSessions:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 1165
    return-object v3

    .line 1147
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Get group chat sessions"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    .restart local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    .line 1160
    .local v4, "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getChatID()Ljava/lang/String;

    move-result-object v2

    .line 1161
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1162
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1165
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;>;"
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1170
    :goto_2
    new-instance v5, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1168
    :cond_3
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Unexpected error"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public handleGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "groupChatId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1443
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p3, p4, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 1447
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 1465
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1466
    return-void

    .line 1449
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->handleGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "displayed"

    .line 1451
    if-ne p4, v4, :cond_2

    .line 1447
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1452
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getOutgoingChatMessageStatus(Ljava/lang/String;)I

    move-result v3

    .local v3, "msgStatus":I
    const/4 v4, 0x7

    .line 1454
    if-ne v3, v4, :cond_1

    .line 1455
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    invoke-interface {v4, p1, p3, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->handleGroupFileDeliveryStatusToAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1463
    .end local v3    # "msgStatus":I
    :catch_0
    move-exception v1

    .line 1460
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1461
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "groupChatId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 1302
    iget-object v5, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1304
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p3, p4, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 1308
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 1324
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1325
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    return-void

    .line 1310
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getOutgoingChatMessageStatus(Ljava/lang/String;)I

    move-result v3

    .local v3, "msgStatus":I
    const/4 v4, 0x7

    .line 1314
    if-eq v3, v4, :cond_2

    .line 1308
    .end local v3    # "msgStatus":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    .restart local v3    # "msgStatus":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    invoke-interface {v4, p1, p3, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->handleGroupMessageDeliveryStatusToAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1322
    .end local v3    # "msgStatus":I
    :catch_0
    move-exception v1

    .line 1319
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1320
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t notify listener"

    invoke-virtual {v4, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1325
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public handleOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "ftSessionId"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v4, "delivered"

    .line 1406
    invoke-virtual {p4, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "displayed"

    .line 1409
    invoke-virtual {p4, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1419
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 1420
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_3

    .line 1430
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1431
    return-void

    .line 1407
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, p3, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 1410
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileReadStatus(Ljava/lang/String;)V

    .line 1412
    invoke-static {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->getTimer(Ljava/lang/String;)Ljava/util/Timer;

    move-result-object v3

    .line 1413
    .local v3, "timer":Ljava/util/Timer;
    if-eqz v3, :cond_0

    .line 1414
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 1422
    .end local v3    # "timer":Ljava/util/Timer;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    invoke-interface {v4, p1, p2, p4}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->handleOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1428
    :catch_0
    move-exception v1

    .line 1425
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1426
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1272
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1274
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 1278
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 1288
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1289
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    return-void

    .line 1280
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;->handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v1

    .line 1283
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1284
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t notify listener"

    invoke-virtual {v3, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1289
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 1
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 894
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->initiateQueuedAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method public initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->initiateQueuedOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method public initiateQueuedAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 5
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "rowId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 909
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 917
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 921
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    .line 925
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 928
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v1, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingGroupChatSessionForRowId(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;)V

    .line 932
    :goto_1
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 933
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    return-object v2

    .line 910
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Initiate an ad-hoc group chat session"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 926
    .restart local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 934
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 939
    :goto_2
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 937
    :cond_2
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unexpected error"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public initiateQueuedOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "firstMsg"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 756
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 761
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 764
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 768
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    .line 771
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 772
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V

    .line 775
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 778
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v1, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatSessionForMsgId(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_1
    return-object v2

    .line 757
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initiate a 1-1 chat session with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    .restart local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .restart local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 781
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 786
    :goto_2
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 784
    :cond_2
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unexpected error"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 3
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1479
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addQueuedContacts(Ljava/lang/String;Ljava/util/List;)V

    .line 1482
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->isImsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1483
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not invite participants with chatID \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1482
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->isGroupChatRejoinable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method public receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 4
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .param p2, "chatSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 278
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingChatSessionByFtHttp(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 281
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v0, p2}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 282
    .local v0, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V

    .line 284
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V

    .line 287
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V
    .locals 18
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .param p2, "isGroupFile"    # Z

    .prologue
    .line 195
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v12

    .line 203
    .local v12, "ftFileSize":J
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->doesMessageIdAlreadyExist(Ljava/lang/String;)Z

    move-result v16

    .line 205
    .local v16, "msgIdAlreadyExist":Z
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->isFtSessionNetworkTimedout(Ljava/lang/String;)Z

    move-result v15

    .line 209
    .local v15, "isNetworkTimedout":Z
    if-nez v16, :cond_3

    .line 215
    :cond_0
    if-nez v16, :cond_4

    .line 218
    :cond_1
    :goto_1
    if-nez p2, :cond_5

    .line 224
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSentDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual/range {v2 .. v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V

    .line 232
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v17, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 237
    .local v17, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V

    .line 238
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    if-nez v2, :cond_6

    .line 243
    :goto_3
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.messaging.FILE_TRANSFER_INVITATION"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "contact"

    .line 244
    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "contactDisplayname"

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sessionId"

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    if-nez v2, :cond_7

    :goto_4
    const-string/jumbo v2, "msgId"

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "filename"

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "filesize"

    .line 257
    invoke-virtual {v14, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "filetype"

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "thumbnail"

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getThumbnail()[B

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "autoAccept"

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileAutoAccept()Z

    move-result v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "autoReject"

    .line 261
    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "autoRejectReason"

    const/4 v4, -0x1

    .line 262
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "timestamp"

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v14, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "timestamp_sent"

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSentDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v14, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 265
    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    return-void

    .line 196
    .end local v3    # "number":Ljava/lang/String;
    .end local v12    # "ftFileSize":J
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "isNetworkTimedout":Z
    .end local v16    # "msgIdAlreadyExist":Z
    .end local v17    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_2
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Receive file transfer invitation from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isGroupFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v12    # "ftFileSize":J
    .restart local v15    # "isNetworkTimedout":Z
    .restart local v16    # "msgIdAlreadyExist":Z
    :cond_3
    if-nez v15, :cond_0

    .line 210
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferSessionId(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    :cond_4
    if-eqz v15, :cond_1

    .line 216
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->deleteEntryFromMsgID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSentDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual/range {v2 .. v11}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingGroupFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V

    goto/16 :goto_2

    .line 239
    .restart local v17    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p1

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getValidity()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFilevalidity(Ljava/lang/String;J)V

    goto/16 :goto_3

    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v4, "chatSessionId"

    move-object/from16 v2, p1

    .line 248
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "validity"

    move-object/from16 v2, p1

    .line 249
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getValidity()J

    move-result-wide v6

    invoke-virtual {v14, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 250
    if-nez p2, :cond_8

    :goto_5
    const-string/jumbo v2, "isGroupTransfer"

    .line 253
    move/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v4, "chatId"

    move-object/from16 v2, p1

    .line 251
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5
.end method

.method public receiveGroupChatInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;)V
    .locals 11
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 833
    sget-object v8, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_0

    .line 837
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "chatId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 859
    :goto_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 862
    .local v5, "number":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v8

    if-nez v8, :cond_4

    .line 865
    .local v4, "isRestart":Z
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 868
    new-instance v6, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v6, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 869
    .local v6, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v6}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V

    .line 872
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.sonymobile.rcs.messaging.CHAT_INVITATION"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "contact"

    .line 873
    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "contactDisplayname"

    .line 874
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "sessionId"

    .line 875
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "isGroupChat"

    .line 876
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "replacedSessionId"

    .line 877
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getReplacedSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "subject"

    .line 878
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "autoAccept"

    .line 879
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGroupChatAutoAccept()Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "isRestart"

    .line 880
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 881
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 882
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    return-void

    .line 834
    .end local v0    # "chatId":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isRestart":Z
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v8, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Receive chat invitation from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    .restart local v0    # "chatId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessions()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 854
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 840
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 841
    .local v2, "imSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 842
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGroupChatAutoAccept()Z

    move-result v8

    if-nez v8, :cond_2

    .line 847
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;->acceptSession()V

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_4
    move v4, v7

    .line 862
    goto/16 :goto_2
.end method

.method public receiveOneOneChatInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V
    .locals 7
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;

    .prologue
    const/4 v6, 0x0

    .line 675
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 680
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "number":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 685
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 690
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V

    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.rcs.messaging.CHAT_INVITATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "contact"

    .line 694
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "contactDisplayname"

    .line 695
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "sessionId"

    .line 696
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "isGroupChat"

    .line 697
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "isStoreAndForward"

    .line 698
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->isStoreAndForward()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "firstMessage"

    .line 699
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "autoAccept"

    .line 700
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isChatAutoAccepted()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 701
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 702
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 703
    return-void

    .line 676
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Receive chat invitation from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 951
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 956
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 959
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 963
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    .line 966
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 967
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    return-object v2

    .line 952
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rejoin group chat session related to the conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 973
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 971
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unexpected error"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public removeFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    .prologue
    .line 1257
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1262
    return-void

    .line 1258
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove a file transfer setup listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    .prologue
    .line 1231
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1235
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1236
    return-void

    .line 1232
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Remove a message delivery listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resendChatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 800
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 805
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 808
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 812
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    .line 816
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateResentMessage(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 819
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 820
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    return-object v2

    .line 801
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initiate a 1-1 chat session with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public resendFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 17
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getFileUriForMessageId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 508
    .local v12, "fileUri":Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 514
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "com.sonymobile.imscp.plugin.sendfile"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v12, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    const-string/jumbo v5, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "contact":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 530
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 533
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 537
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;

    move-result-object v10

    .line 538
    .local v10, "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    invoke-virtual {v10}, Lcom/sonymobile/rcs/platform/file/FileDescription;->getSize()J

    move-result-wide v6

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v6, v7, v2}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    .line 540
    .local v4, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v5, p2

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateFileTransferSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    move-result-object v15

    .line 545
    .local v15, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v13

    .line 547
    .local v13, "ftSessionId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateResentFileStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v16, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 551
    .local v16, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .local v9, "N":I
    const/4 v14, 0x0

    .line 555
    .local v14, "i":I
    :goto_2
    if-lt v14, v9, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 568
    return-object v16

    .line 509
    .end local v3    # "contact":Ljava/lang/String;
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v9    # "N":I
    .end local v10    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v13    # "ftSessionId":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v16    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_1
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    const-string/jumbo v5, "Error in retrieving file URI from msg ID"

    invoke-direct {v2, v5}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :catch_0
    move-exception v11

    .line 518
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to set read uri permissions for enriched calling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "contact":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transfer file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 557
    .restart local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v9    # "N":I
    .restart local v10    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .restart local v13    # "ftSessionId":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .restart local v16    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v14}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;->handleFileTransferSessionSetup(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 555
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 564
    :catch_1
    move-exception v11

    .line 560
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t notify file transfer setup listener"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v14}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 568
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v9    # "N":I
    .end local v10    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "ftSessionId":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v16    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :catch_2
    move-exception v11

    .line 570
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 573
    :goto_4
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_5
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unexpected error"

    invoke-virtual {v2, v5, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 985
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 990
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 993
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 997
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    .line 1000
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 1003
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 1004
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    return-object v2

    .line 986
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Restart group chat session related to the conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1010
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1008
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unexpected error"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resumeHttpFileTransfer(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V
    .locals 7
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    .prologue
    .line 299
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    :goto_0
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    invoke-direct {v3, p1}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 307
    .local v3, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V

    .line 310
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .line 311
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 322
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 323
    return-void

    .line 300
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_0
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resume incoming/outgoing http file transfer from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "msgId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    invoke-interface {v4, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;->handleFileTransferSessionResumed(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 320
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t notify file transfer setup listener"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public sendQueuedFile(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 16
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .param p3, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getFileUriForMessageId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 424
    .local v12, "fileUri":Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 430
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.imscp.plugin.sendfile"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v12, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 443
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 446
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 451
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->isOutgoingFtInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    .line 460
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;

    move-result-object v10

    .line 461
    .local v10, "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    invoke-virtual {v10}, Lcom/sonymobile/rcs/platform/file/FileDescription;->getSize()J

    move-result-wide v2

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v2, v3, v5}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    .line 463
    .local v4, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateFileTransferSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    move-result-object v14

    .line 467
    .local v14, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v5, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markQueuedFileMessageAsInitiated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v15, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    invoke-direct {v15, v14}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 472
    .local v15, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static {v15}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .local v9, "N":I
    const/4 v13, 0x0

    .line 476
    .local v13, "i":I
    :goto_2
    if-lt v13, v9, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 489
    return-object v15

    .line 425
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v9    # "N":I
    .end local v10    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v13    # "i":I
    .end local v14    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v15    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_1
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    const-string/jumbo v3, "Error in retrieving file URI from msg ID"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :catch_0
    move-exception v11

    .line 434
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to set read uri permissions for enriched calling: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transfer file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 452
    :cond_3
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3
    const/4 v2, 0x0

    .line 455
    return-object v2

    .line 453
    :cond_4
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Cannot initiate queued file now."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 478
    .restart local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v9    # "N":I
    .restart local v10    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .restart local v13    # "i":I
    .restart local v14    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .restart local v15    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    invoke-interface {v2, v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;->handleFileTransferSessionSetup(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 476
    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 485
    :catch_1
    move-exception v11

    .line 481
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t notify file transfer setup listener"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 489
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v9    # "N":I
    .end local v10    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "i":I
    .end local v14    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v15    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    :catch_2
    move-exception v11

    .line 491
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 1184
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 1196
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 1199
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v1

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    return-void

    .line 1185
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set message delivery status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1208
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1206
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public transferFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 28
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 348
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.sonymobile.imscp.plugin.sendfile"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 361
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 364
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v26

    .line 365
    .local v26, "size":J
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v4}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v6

    .line 367
    .local v6, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sonymobile/rcs/core/content/MmContent;->setEncoding(Ljava/lang/String;)V

    .line 369
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, "msgId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateFileTransferSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;

    move-result-object v23

    .line 375
    .local v23, "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v14

    .line 378
    .local v14, "ftSessionId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    move/from16 v19, v0

    move-object/from16 v12, p1

    move-object v15, v10

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v19}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/util/Date;Z)V

    .line 383
    new-instance v24, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 384
    .local v24, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    invoke-static/range {v24 .. v24}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addFileTransferSession(Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v20

    .local v20, "N":I
    const/16 v22, 0x0

    .line 388
    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 401
    return-object v24

    .line 337
    .end local v6    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v10    # "msgId":Ljava/lang/String;
    .end local v14    # "ftSessionId":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v22    # "i":I
    .end local v23    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v24    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    .end local v26    # "size":J
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transfer file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v21

    .line 352
    .local v21, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to set read uri permissions for enriched calling: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 390
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v6    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v10    # "msgId":Ljava/lang/String;
    .restart local v14    # "ftSessionId":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v22    # "i":I
    .restart local v23    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .restart local v24    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    .restart local v26    # "size":J
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;->handleFileTransferSessionSetup(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :cond_3
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 397
    :catch_1
    move-exception v21

    .line 393
    .restart local v21    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t notify file transfer setup listener"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->fileTransferSetupListeners:Landroid/os/RemoteCallbackList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 401
    .end local v6    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v10    # "msgId":Ljava/lang/String;
    .end local v14    # "ftSessionId":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v22    # "i":I
    .end local v23    # "session":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
    .end local v24    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/FileTransferSession;
    .end local v26    # "size":J
    :catch_2
    move-exception v21

    .line 403
    .restart local v21    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 406
    :goto_4
    new-instance v4, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    :cond_4
    sget-object v4, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unexpected error"

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
