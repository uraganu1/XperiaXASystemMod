.class public final Lcom/sonymobile/jms/conversation/ImConversationManager;
.super Ljava/lang/Object;
.source "ImConversationManager.java"

# interfaces
.implements Lcom/sonymobile/jms/conversation/ImConversationApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/ImConversationManager$1;,
        Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    }
.end annotation


# instance fields
.field private mAchievedFirstImApiConnection:Z

.field private mAchievedFirstRcsApiConnection:Z

.field private mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

.field private mImConversationEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

.field private mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

.field private mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

.field private mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mRcsFileTransferSetupListener:Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;

.field private mRcsMessageDeliveryListener:Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;

.field private mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

.field private mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

.field private mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

.field private mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

.field private mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/ApiStatusReader;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationStorageManager;Lcom/sonymobile/jms/file/ImFileManager;Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V
    .locals 2
    .param p1, "imApiStatusReader"    # Lcom/sonymobile/jms/ApiStatusReader;
    .param p2, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;
    .param p3, "imPermissionManager"    # Lcom/sonymobile/jms/permission/ImPermissionManager;
    .param p4, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p5, "imConversationStorageManager"    # Lcom/sonymobile/jms/conversation/ImConversationStorageManager;
    .param p6, "imFileManager"    # Lcom/sonymobile/jms/file/ImFileManager;
    .param p7, "rcsSessionEventHandler"    # Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
    .param p8, "rcsMessageEventHandler"    # Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    .param p9, "rcsRichMessaging"    # Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    .param p10, "rcsMessagingApi"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstRcsApiConnection:Z

    .line 97
    iput-boolean v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstImApiConnection:Z

    .line 105
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    .line 106
    iput-object p4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 107
    iput-object p5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    .line 108
    iput-object p6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    .line 109
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 110
    iput-object p3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    .line 111
    iput-object p7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 112
    iput-object p8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    .line 113
    iput-object p9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 114
    iput-object p10, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    .line 118
    new-instance v0, Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-direct {v0}, Lcom/sonymobile/jms/conversation/SessionRepository;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    .line 119
    new-instance v0, Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageDeliveryListener:Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;

    .line 120
    new-instance v0, Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsFileTransferSetupListener:Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;

    .line 121
    return-void
.end method

.method private acceptImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 12
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v8, "ImConversation \'"

    .line 1363
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\' accept rcs chat session."

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1365
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v9

    .line 1366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "session":Lcom/sonymobile/jms/conversation/Session;
    const/4 v6, 0x0

    .line 1369
    .local v6, "rcsSAndFChatSessionId":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7}, Lcom/sonymobile/jms/conversation/Session;->getChatSAndFSessionId()Ljava/lang/String;

    move-result-object v6

    .line 1370
    .local v6, "rcsSAndFChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v5

    .line 1371
    .local v5, "rcsSAndFChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v8

    sget-object v10, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-eq v8, v10, :cond_0

    const-string/jumbo v8, "ImConversation \'"

    .line 1374
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "rcs S&F chat session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, " Unable to accept held rcs chat session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "since it is not in state"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    sget-object v10, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1380
    :goto_0
    sget-object v8, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/conversation/Session;->setChatSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "rcsSAndFChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsSAndFChatSessionId":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .line 1397
    .local v4, "rcsChatSessionId":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v7}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v4

    .line 1398
    .local v4, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v3

    .line 1399
    .local v3, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v8

    sget-object v10, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-eq v8, v10, :cond_1

    .line 1402
    new-instance v8, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to accept held rcs chat session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' inside session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' since it is not in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1415
    .end local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v4    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_3
    new-instance v8, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to accept held rcs chat session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' inside session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' since it is no longer present in stack!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 1416
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v7    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 1372
    .restart local v5    # "rcsSAndFChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v6    # "rcsSAndFChatSessionId":Ljava/lang/String;
    .restart local v7    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_0
    :try_start_4
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->acceptSession()V
    :try_end_4
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1393
    .end local v5    # "rcsSAndFChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsSAndFChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_5
    const-string/jumbo v8, "ImConversation \'"

    .line 1382
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "rcs S&F chat session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, " Unable to accept held rcs chat session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "since it is no longer present in stack!"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_1

    .line 1393
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_2
    move-exception v2

    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const-string/jumbo v8, "ImConversation \'"

    .line 1386
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "rcs S&F chat session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, " Unable to accept held rcs chat session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "since no rcs chat session is connected to this session"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_1

    .line 1393
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_3
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to accept held rcs chat session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' inside session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1400
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v4    # "rcsChatSessionId":Ljava/lang/String;
    :cond_1
    :try_start_6
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->acceptSession()V

    .line 1407
    sget-object v8, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/conversation/Session;->setChatSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;)V
    :try_end_6
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1416
    :try_start_7
    monitor-exit v9

    .line 1417
    return-void

    .line 1409
    .end local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v4    # "rcsChatSessionId":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 1413
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v8, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to accept held rcs chat session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' inside session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getManualAcceptModeForImTextConversation()Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    move-result-object v0

    .line 1567
    .local v0, "rcsChatSessionManualAcceptMode":Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1584
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "ImConversation \'"

    .line 1569
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs chat session manual accept mode "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' - Attempting to accept."

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1573
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "ImConversation \'"

    .line 1578
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs chat session manual accept mode "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' - Not accepting rcs chat session on this action."

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0

    .line 1567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private assertAvailableChatSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getNrOfAvailableChatSessions()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 346
    return-void

    .line 341
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Max nr of active rcs chat sessions ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") has been reached!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertAvailableFileSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getNrOfAvailableFileSessions()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 356
    return-void

    .line 351
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Max nr of active rcs file transfer sessions ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfFileSessions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") has been reached!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertIsAllowedToDequeueFileMessageTo(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 4
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1538
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1550
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToDequeueOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 1560
    :goto_0
    return-void

    .line 1539
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImTextConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-eq v1, v2, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToDequeueGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not allowed to send file message on ImConversation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'! (could not get recipients)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1540
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not allowed to dequeue file message on ImConversation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'! (ImTextConversationState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private assertIsAllowedToDequeueTextMessageTo(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 4
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 1511
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToDequeueOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 1533
    :goto_0
    return-void

    .line 1512
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImTextConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-eq v1, v2, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToDequeueGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    .line 1529
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not allowed to send text message on ImConversation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'! (could not get recipients)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1513
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not allowed to dequeue text message on ImConversation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'! (ImTextConversationState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private createSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 211
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 212
    new-instance v0, Lcom/sonymobile/jms/conversation/Session;

    invoke-direct {v0, p1}, Lcom/sonymobile/jms/conversation/Session;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    return-object v0
.end method

.method private createSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 206
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 207
    new-instance v0, Lcom/sonymobile/jms/conversation/Session;

    invoke-direct {v0, p1}, Lcom/sonymobile/jms/conversation/Session;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    return-object v0
.end method

.method private deleteImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 11
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .local v8, "rcsFileTransferSessionId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 4218
    .local v7, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4220
    .local v8, "rcsFileTransferSessionId":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 4234
    .end local v7    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .end local v8    # "rcsFileTransferSessionId":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    .line 4282
    :goto_1
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v6

    .line 4283
    .local v6, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v6}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v0

    .line 4284
    .local v0, "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    sget-object v9, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v9, v0, :cond_1

    .line 4295
    sget-object v9, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v9, v0, :cond_2

    .line 4298
    :goto_2
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->deleteImUserMessage(Ljava/lang/String;)V

    .line 4299
    return-void

    .line 4232
    .end local v0    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .end local v6    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .restart local v7    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v2

    .line 4226
    .local v2, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_0

    .line 4236
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v7    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    :try_start_1
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v5

    .line 4237
    .local v5, "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 4268
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ImConversation \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' rcs file transfer imConversation \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' was found in unsupported state! ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 4276
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4279
    .end local v5    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_1
    move-exception v1

    .line 4278
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    invoke-direct {v9, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_1
    :try_start_2
    const-string/jumbo v9, "ImConversation \'"

    .line 4240
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' Canceling "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, " rcs file transfer session \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4243
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->cancelSession()V

    goto :goto_3

    :pswitch_2
    const-string/jumbo v9, "ImConversation \'"

    .line 4246
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' Rejecting "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, " rcs file transfer session \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4249
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->rejectSession()V

    goto :goto_3

    :pswitch_3
    const-string/jumbo v9, "ImConversation \'"

    .line 4259
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' -> No need to leave rcs file transfer session \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' since it is in state "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, " state!"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 4286
    .end local v5    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v0    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .restart local v6    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {v6}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/file/ImFileManager;->ensureResizedFileRemoved(Landroid/net/Uri;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sonymobile/jms/file/UnableToDeleteFileException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 4294
    :catch_2
    move-exception v4

    .line 4288
    .local v4, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failed to get file uri for message id \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 4294
    .end local v4    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :catch_3
    move-exception v3

    .local v3, "e":Lcom/sonymobile/jms/file/UnableToDeleteFileException;
    const-string/jumbo v9, "Failed to delete resized file with message id \'"

    .line 4292
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    goto/16 :goto_2

    .line 4296
    .end local v3    # "e":Lcom/sonymobile/jms/file/UnableToDeleteFileException;
    :cond_2
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ensureFileIconRemovedForMessageId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4232
    .end local v0    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .end local v6    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .restart local v7    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_4
    move-exception v9

    goto/16 :goto_0

    .line 4237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private deleteImTextMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->deleteImUserMessage(Ljava/lang/String;)V

    .line 4311
    return-void
.end method

.method private ensureResizedFilesRemoved(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveOutgoingFileUris(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/Collection;

    move-result-object v4

    .line 154
    .local v4, "outgoingFileUris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    return-void

    .line 154
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .local v2, "fileUri":Landroid/net/Uri;
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {v5, v2}, Lcom/sonymobile/jms/file/ImFileManager;->ensureResizedFileRemoved(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/file/UnableToDeleteFileException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/file/UnableToDeleteFileException;
    :try_start_2
    const-string/jumbo v5, "Failed to delete resized file with uri \'"

    .line 158
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V
    :try_end_2
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 165
    .end local v0    # "e":Lcom/sonymobile/jms/file/UnableToDeleteFileException;
    .end local v2    # "fileUri":Landroid/net/Uri;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "outgoingFileUris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v5, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    const-string/jumbo v6, "Failed to retrieve outgoing file messages!"

    invoke-direct {v5, v6, v1}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method private getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 1068
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v0

    return-object v0

    .line 1069
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v0

    return-object v0
.end method

.method private getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;
    .locals 5
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const-string/jumbo v3, "ImConversation \'"

    .line 1106
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1109
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/conversation/SessionRepository;->getSessionByImConversationId(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Lcom/sonymobile/jms/conversation/SessionNotFoundException;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->createSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v2

    .line 1115
    .local v2, "groupSession":Lcom/sonymobile/jms/conversation/Session;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v3, v2}, Lcom/sonymobile/jms/conversation/SessionRepository;->addSession(Lcom/sonymobile/jms/conversation/Session;)V

    .line 1118
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->resurrectMostRecentActiveRcsChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->resurrectActiveRcsFileTransferSessions(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1124
    :goto_0
    return-object v2

    .line 1123
    :catch_1
    move-exception v1

    .local v1, "e1":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v3, "Unable to resurrect old rcs sessions for rcs group chat \'"

    .line 1121
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_0
.end method

.method private getAssuredSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;
    .locals 5
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    const-string/jumbo v3, "ImConversation \'"

    .line 1082
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1085
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/conversation/SessionRepository;->getSessionByImConversationId(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Lcom/sonymobile/jms/conversation/SessionNotFoundException;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->createSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v2

    .line 1091
    .local v2, "one2oneSession":Lcom/sonymobile/jms/conversation/Session;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v3, v2}, Lcom/sonymobile/jms/conversation/SessionRepository;->addSession(Lcom/sonymobile/jms/conversation/Session;)V

    .line 1094
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->resurrectMostRecentActiveRcsChatSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 1095
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->resurrectActiveRcsFileTransferSessions(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1100
    :goto_0
    return-object v2

    .line 1099
    :catch_1
    move-exception v1

    .local v1, "e1":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v3, "Unable to resurrect old rcs sessions for recipient number \'"

    .line 1097
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_0
.end method

.method private getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 7
    .param p1, "rcsChatSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 532
    .local v2, "rcsChatSessionId":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "rcsChatSessionId":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionState()I

    move-result v3

    .line 534
    .local v3, "rcsChatSessionState":I
    packed-switch v3, :pswitch_data_0

    .line 551
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to determine the state of rcs chat session."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v4, "Rcs chat session \'"

    .line 555
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' rcs chat session state = "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " -> chat session state = "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 558
    return-object v0

    .line 536
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_1
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isSessionRemoteOriginated()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_1
    goto :goto_0

    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    goto :goto_1

    .line 540
    :pswitch_2
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 543
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_3
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 546
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_4
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->CANCELLED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 558
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "rcsChatSessionId":Ljava/lang/String;
    .end local v3    # "rcsChatSessionState":I
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to determine the state of rcs chat session \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 534
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 7
    .param p1, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 571
    .local v2, "rcsFileTransferSessionId":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "rcsFileTransferSessionId":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionState()I

    move-result v3

    .line 573
    .local v3, "rcsFileTransferState":I
    packed-switch v3, :pswitch_data_0

    .line 593
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to determine the state of rcs file transfer session \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 596
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v1, "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v4, "Rcs file transfer session \'"

    .line 598
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' rcs file transfer session state = "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " -> file session state = "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 601
    return-object v1

    .line 575
    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_1
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->isSessionRemoteOriginated()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_1
    goto :goto_0

    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :cond_0
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    goto :goto_1

    .line 579
    :pswitch_2
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 582
    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_3
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 585
    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_4
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->CANCELLED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 588
    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_5
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_UPLOADED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 601
    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "rcsFileTransferSessionId":Ljava/lang/String;
    .end local v3    # "rcsFileTransferState":I
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to determine the state of rcs file transfer session \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 573
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 3
    .param p1, "rcsChatSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2745
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2748
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    return-object v1

    .line 2746
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getChatID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2748
    :catch_0
    move-exception v0

    .line 2751
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v2, "Unable to determine session id!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private getImFileConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 6
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v4

    .line 470
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 472
    .local v2, "rcsFileTransferSessionId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 479
    :try_start_1
    invoke-direct {p0, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v1

    .line 480
    .local v1, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    monitor-exit v4

    return-object v3

    .end local v1    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    const-string/jumbo v3, "ImConversation \'"

    .line 473
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, "\' rcs file transfer session null file session state "

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 476
    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    monitor-exit v4

    return-object v3

    .line 480
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v3, "ImConversation \'"

    .line 483
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, "\' rcs file transfer session "

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, " file session state "

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v3, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 487
    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    monitor-exit v4

    return-object v3

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v2    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 489
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private getImSAndFConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 439
    .local v3, "rcsSAndFSessionId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v5

    .line 441
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/conversation/Session;->getChatSAndFSessionId()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "rcsSAndFSessionId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v2

    .line 443
    .local v2, "rcsSAndFSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    monitor-exit v5

    return-object v4

    .end local v2    # "rcsSAndFSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v3    # "rcsSAndFSessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const-string/jumbo v4, "ImConversation \'"

    .line 446
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v6, "\' S&F chat session state = "

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    sget-object v6, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 449
    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    monitor-exit v5

    return-object v4

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v4, "ImConversation \'"

    .line 452
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v6, "\' S&F chat session state = "

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    sget-object v6, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 455
    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    monitor-exit v5

    return-object v4

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catchall_0
    move-exception v4

    .line 457
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getImTextConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 403
    .local v4, "rcsChatSessionId":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6

    .line 405
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v3

    .line 407
    .local v3, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    monitor-exit v6

    return-object v5

    .end local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v4    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v5

    if-nez v5, :cond_1

    .line 415
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v5, "ImConversation \'"

    .line 417
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' chat session state = "

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 419
    monitor-exit v6

    return-object v0

    .line 411
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :cond_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 413
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 419
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v5, "ImConversation \'"

    .line 422
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' chat session state = "

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 425
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    monitor-exit v6

    return-object v5

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catchall_0
    move-exception v5

    .line 427
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private getNrOfAvailableChatSessions()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2495
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sub-int/2addr v1, v2

    return v1

    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v2, "Unable to determine nr of available chat sessions!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private getNrOfAvailableFileSessions()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2519
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfFileSessions()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sub-int/2addr v1, v2

    return v1

    :catch_0
    move-exception v0

    .line 2522
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v2, "Unable to determine nr of available file sessions!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 5
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "Get from stack \'"

    .line 170
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 173
    .local v0, "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v0, :cond_0

    .line 178
    return-object v0

    .line 174
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The rcs chat session with chat session id  \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' does no longer exists in stack!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "chatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get rcs chat session with id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' from stack!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 5
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "Get from stack \'"

    .line 188
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v1

    .line 192
    .local v1, "fileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-eqz v1, :cond_0

    .line 197
    return-object v1

    .line 193
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get a file transfer session \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' from stack!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1    # "fileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get the file transfer session \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' from stack!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private isNrOfAllowedOngoingOutgoingRcsFileTransferSessionsReached()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 361
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSessions()Ljava/util/List;

    move-result-object v6

    .local v6, "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v4, 0x0

    .line 363
    .local v4, "nrOfOngoingOutgoingRcsFileTransferSessions":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 379
    if-gtz v4, :cond_2

    .line 383
    :goto_1
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v8}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxConcurrentOutgoingRcsFileTransfers()I

    move-result v8

    if-ge v4, v8, :cond_3

    :goto_2
    return v7

    .line 363
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 364
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v5

    .line 366
    .local v5, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    sget-object v8, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 368
    :pswitch_0
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->isSessionRemoteOriginated()Z

    move-result v8

    if-nez v8, :cond_0

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v5    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_2
    const-string/jumbo v8, "Found "

    .line 380
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, " ongoing outgoing rcs file transfer sessions."

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 383
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "nrOfOngoingOutgoingRcsFileTransferSessions":I
    .end local v6    # "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Unable to determine nr of ongoing file transfer sessions!"

    invoke-direct {v7, v8, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .end local v2    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "nrOfOngoingOutgoingRcsFileTransferSessions":I
    .restart local v6    # "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_3
    const/4 v7, 0x1

    .line 383
    goto :goto_2

    .line 386
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "nrOfOngoingOutgoingRcsFileTransferSessions":I
    .end local v6    # "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_1
    move-exception v1

    .line 389
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Unable to determine if session was remote originated!"

    invoke-direct {v7, v8, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private leaveImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v7, "ImConversation \'"

    .line 2989
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v4, 0x0

    .line 2991
    .local v4, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v8

    .line 2994
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->leaveRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3001
    .end local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v6

    .line 3002
    .local v6, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionIds()Ljava/util/List;

    move-result-object v3

    .line 3003
    .local v3, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v5, v4

    .local v5, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3012
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3013
    if-nez v5, :cond_2

    .line 3017
    return-void

    .line 2999
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    .restart local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_0
    move-exception v0

    .line 2996
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :try_start_3
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to leave rcs chat session connected to session \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\'!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    move-object v4, v5

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .local v4, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .line 3003
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_0
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3005
    .local v2, "msgId":Ljava/lang/String;
    :try_start_5
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->leaveRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v5

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_2
    move-object v5, v4

    .line 3011
    .end local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_1

    .line 3010
    :catch_1
    move-exception v0

    .line 3007
    .restart local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :try_start_6
    new-instance v4, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to leave rcs file transfer session \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\' connected to imConversation \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\'!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v7

    if-nez v5, :cond_1

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_3
    :try_start_7
    invoke-direct {v4, v7, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_2

    .end local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_1
    move-object v0, v5

    goto :goto_3

    .line 3012
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "msgId":Ljava/lang/String;
    .end local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v7

    :goto_4
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    .line 3014
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_2
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Something went wrong when leaving the imConversation \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\', see wrapped exception for details!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 3012
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_4

    .end local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v2    # "msgId":Ljava/lang/String;
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v4    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_4
.end method

.method private leaveRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v7, "ImConversation \'"

    .line 3111
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v6, 0x0

    .line 3114
    .local v6, "rcsChatSessionId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v6

    .line 3115
    .local v6, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v5

    .line 3116
    .local v5, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v0

    .line 3117
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 3145
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ImConversation \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' rcs chat imConversation \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' was found in unsupported state! ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3151
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3187
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v6    # "rcsChatSessionId":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v7, "ImConversation \'"

    .line 3120
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' Canceling "

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, " rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3123
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->cancelSession()V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 3186
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3157
    .local v3, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3159
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->addGroupChatSessionTerminatedByUserSystemMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3164
    :catch_1
    move-exception v4

    .line 3162
    .local v4, "e1":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Failed to addGroupChatSessionTerminatedByUserSystemMessage()"

    invoke-direct {v7, v8, v4}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .end local v3    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v4    # "e1":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v6    # "rcsChatSessionId":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    const-string/jumbo v7, "ImConversation \'"

    .line 3126
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' Rejecting "

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, " rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3129
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->rejectSession()V
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 3186
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 3169
    .local v2, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3178
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto/16 :goto_1

    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v6    # "rcsChatSessionId":Ljava/lang/String;
    :pswitch_2
    :try_start_3
    const-string/jumbo v7, "ImConversation \'"

    .line 3139
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' -> No need to leave rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' since it is in state "

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, " state!"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 3186
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 3184
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to leave rcs chat session \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' connected to imConversation \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 3171
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->addGroupChatSessionTerminatedByUserSystemMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 3176
    :catch_4
    move-exception v4

    .line 3174
    .restart local v4    # "e1":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Failed to addGroupChatSessionTerminatedByUserSystemMessage()"

    invoke-direct {v7, v8, v4}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 3117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private leaveRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 3035
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' msg \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3037
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3040
    .local v4, "rcsFileTransferSessionId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v3

    .line 3041
    .local v3, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v2

    .line 3042
    .local v2, "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3072
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ImConversation \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' rcs file transfer imConversation \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' was found in unsupported state! ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3080
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 3097
    .end local v2    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v3    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :goto_1
    return-void

    .restart local v2    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v3    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :pswitch_1
    const-string/jumbo v5, "ImConversation \'"

    .line 3045
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' Canceling "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " rcs file transfer session \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3048
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->cancelSession()V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3096
    .end local v2    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v3    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v1

    .line 3087
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .restart local v2    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v3    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :pswitch_2
    :try_start_1
    const-string/jumbo v5, "ImConversation \'"

    .line 3051
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' Rejecting "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " rcs file transfer session \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3054
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->rejectSession()V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3096
    .end local v2    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v3    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_1
    move-exception v0

    .line 3093
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to leave rcs file transfer session \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' connected to imConversation \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "fileTransferState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v3    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :pswitch_3
    :try_start_2
    const-string/jumbo v5, "ImConversation \'"

    .line 3064
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' -> No need to leave rcs file transfer session \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' since it is in state "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " state!"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3042
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onFirstRcsApiConnection()V
    .locals 4

    .prologue
    :try_start_0
    const-string/jumbo v2, "Register RcsMessageDeliveryListener."

    .line 2675
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2676
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageDeliveryListener:Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->addMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V

    const-string/jumbo v2, "Register RcsFileTransferSetupListener."

    .line 2677
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2678
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsFileTransferSetupListener:Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->addFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v3
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2692
    :try_start_2
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->repopulateAllActiveRcsChatSessions()V

    .line 2693
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->repopulateAllActiveRcsFileTransferSessions()V

    .line 2694
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2698
    :goto_1
    return-void

    .line 2684
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v2, "Failed to register RcsMessageDeliveryListener or RcsFileTransferSetupListener!"

    .line 2680
    invoke-static {v2, v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 2694
    .end local v1    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2697
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v2, "Failed to repopulate all the established/pending rcs chat/filetransfer sessions!"

    .line 2696
    invoke-static {v2, v0}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private reSendTextMessageAsNewOne2OneChatInvitation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;)V
    .locals 6
    .param p1, "conversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
        }
    .end annotation

    .prologue
    .line 1132
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getNrOfAvailableChatSessions()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const-string/jumbo v3, "ImConversation \'"

    .line 1140
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' - Resending one2one text message \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1144
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveTextMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v1

    .line 1145
    .local v1, "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->resendChatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v2

    .line 1147
    .local v2, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v2, :cond_1

    .line 1151
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 1152
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v4, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v3, p1, v1, v4}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 1166
    return-void

    .line 1133
    .end local v1    # "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v2    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsQueued(Ljava/lang/String;)V

    .line 1134
    return-void

    .line 1148
    .restart local v1    # "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    .restart local v2    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_1
    new-instance v3, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to resend one2one text message \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .end local v1    # "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v2    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v3, "Max chat sessions achieved"

    .line 1155
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1163
    new-instance v3, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to send text message on imConversation \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1156
    :cond_2
    new-instance v3, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to send text message on imConversation \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' right now. Max nr of active rcs chat sessions ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v5}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") has been reached!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private rejoinGroupChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 5
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 2528
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2530
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    .line 2536
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v1

    .line 2538
    .local v1, "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v1, :cond_0

    .line 2542
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 2555
    return-void

    .line 2539
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to rejoin group chat session (groupChatId \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\')!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    .end local v1    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2552
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to rejoin imGroupConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2546
    :cond_1
    new-instance v2, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to rejoin imGroupConversation \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. Max nr of active rcs chat sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v7, "ImConversation \'"

    .line 216
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v0, 0x0

    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    const/4 v4, 0x0

    .line 220
    .local v4, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v6

    .line 221
    .local v6, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "rcsChatSessionId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v7, v5}, Lcom/sonymobile/jms/conversation/SessionRepository;->removeReferencesToRcsSession(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->removeChatEventListener()Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    move-result-object v0

    .line 224
    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->removeChatSession()V

    .line 225
    if-nez v0, :cond_1

    .line 238
    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .end local v4    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    .end local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    :goto_0
    if-nez v0, :cond_2

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 226
    .restart local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v4    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v5    # "rcsChatSessionId":Ljava/lang/String;
    .restart local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_1
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .local v4, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    goto :goto_0

    .line 237
    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    .end local v6    # "session":Lcom/sonymobile/jms/conversation/Session;
    .local v4, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v3

    .line 228
    .local v3, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    goto :goto_0

    .line 237
    .end local v3    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v2

    .line 231
    .local v2, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    goto :goto_0

    .line 237
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_2
    move-exception v1

    .line 234
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .line 238
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v4    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_2
    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v0, v4}, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->disconnect(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    goto :goto_1
.end method

.method private repopulateAllActiveRcsChatSessions()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v10, "enter"

    .line 2866
    invoke-static {v10}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v8, 0x0

    .line 2869
    .local v8, "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSessions()Ljava/util/List;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v5, 0x0

    .line 2874
    .local v5, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2889
    if-nez v5, :cond_3

    .line 2894
    return-void

    .line 2872
    .end local v4    # "i$":Ljava/util/Iterator;
    .local v8, "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v3

    .line 2871
    .local v3, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v10, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v11, "Could not get rcs chat sessions from stack!"

    invoke-direct {v10, v11, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 2874
    .end local v3    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .local v8, "rcsChatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2875
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v7

    .local v7, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    const/4 v9, 0x0

    .line 2878
    .local v9, "rcsSessionId":Ljava/lang/String;
    :try_start_1
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    .line 2879
    .local v9, "rcsSessionId":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->repopulateRcsChatSessionIfItsActive(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2887
    .end local v9    # "rcsSessionId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2881
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to retrieve rcs session id from stack for found rcs chat session!"

    if-nez v5, :cond_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {v6, v10, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .local v6, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    move-object v5, v6

    .line 2887
    .end local v6    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .local v5, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    move-object v1, v5

    .line 2881
    goto :goto_1

    .line 2887
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 2885
    .local v2, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to repopulate found rcs chat session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v5, :cond_2

    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_2
    invoke-direct {v6, v10, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .restart local v6    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    move-object v5, v6

    .end local v6    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_2
    move-object v2, v5

    goto :goto_2

    .line 2890
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_3
    new-instance v10, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v11, "Something went wrong when trying to repopulate the active rcs chat sessions, see wrapped exception for details!"

    invoke-direct {v10, v11, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method

.method private repopulateAllActiveRcsFileTransferSessions()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v10, "enter"

    .line 2910
    invoke-static {v10}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v8, 0x0

    .line 2913
    .local v8, "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSessions()Ljava/util/List;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v5, 0x0

    .line 2918
    .local v5, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2935
    if-nez v5, :cond_3

    .line 2940
    return-void

    .line 2916
    .end local v4    # "i$":Ljava/util/Iterator;
    .local v8, "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v3

    .line 2915
    .local v3, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v10, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v11, "Could not get rcs file transfer sessions from stack!"

    invoke-direct {v10, v11, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 2918
    .end local v3    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .local v8, "rcsFileTransferSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2919
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v7

    .local v7, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    const/4 v9, 0x0

    .line 2923
    .local v9, "rcsSessionId":Ljava/lang/String;
    :try_start_1
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    .line 2924
    .local v9, "rcsSessionId":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->repopulateRcsFileTransferSessionIfItsActive(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2933
    .end local v9    # "rcsSessionId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2926
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to retrieve rcs session id from stack for found rcs file transfer session!"

    if-nez v5, :cond_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {v6, v10, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .local v6, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    move-object v5, v6

    .line 2933
    .end local v6    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .local v5, "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    move-object v1, v5

    .line 2926
    goto :goto_1

    .line 2933
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 2930
    .local v2, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to repopulate found rcs file transfer session \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v5, :cond_2

    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_2
    invoke-direct {v6, v10, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .restart local v6    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    move-object v5, v6

    .end local v6    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .end local v5    # "pe":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_2
    move-object v2, v5

    goto :goto_2

    .line 2936
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v7    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_3
    new-instance v10, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v11, "Something went wrong when trying to repopulate the active rcs file transfer sessions, see wrapped exception for details!"

    invoke-direct {v10, v11, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method

.method private repopulateRcsChatSessionIfItsActive(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    .locals 6
    .param p1, "rcsChatSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2787
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    .line 2788
    .local v3, "rcsSessionId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 2789
    .local v2, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v0

    .line 2790
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "Rcs "

    .line 2802
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "one2one"

    :goto_0
    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " chat session \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' beloning to imConversation \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' is in state "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " so ignoring it."

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 2812
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v4, "Rcs "

    .line 2794
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "one2one"

    :goto_2
    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " chat session \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' beloning to imConversation \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' is in state "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " so adding a listener and storing it."

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2799
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2811
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v3    # "rcsSessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2810
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v5, "Unable to retrieve rcs session info from stack!"

    invoke-direct {v4, v5, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v2    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v3    # "rcsSessionId":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "group"

    goto :goto_2

    :cond_1
    const-string/jumbo v4, "group"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private repopulateRcsFileTransferSessionIfItsActive(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 6
    .param p1, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2825
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    .line 2826
    .local v3, "rcsSessionId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 2827
    .local v2, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v1

    .line 2828
    .local v1, "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "Rcs "

    .line 2841
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "one2one"

    :goto_0
    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " file transfer session \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' beloning to imConversation \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' is in state "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " so ignoring it."

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 2851
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v4, "Rcs "

    .line 2832
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "one2one"

    :goto_2
    invoke-virtual {v5, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " file transfer session \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' beloning to imConversation \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' is in state "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " so adding a listener and storing it."

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v4, 0x0

    .line 2837
    invoke-virtual {p0, v2, p1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2850
    .end local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v3    # "rcsSessionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2849
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v5, "Unable to retrieve rcs session info from stack!"

    invoke-direct {v4, v5, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v2    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v3    # "rcsSessionId":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "group"

    goto :goto_2

    :cond_1
    const-string/jumbo v4, "group"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 8
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 2000
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2001
    .local v3, "msgId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v5}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v1

    .line 2002
    .local v1, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2019
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->isNrOfAllowedOngoingOutgoingRcsFileTransferSessionsReached()Z

    move-result v2

    .line 2021
    .local v2, "isSequentialFileLimitReached":Z
    if-nez v2, :cond_0

    .line 2030
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v0

    .line 2033
    .local v0, "attachFileIcon":Z
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableFileSession()V

    const-string/jumbo v5, "ImConversation \'"

    .line 2038
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' - Resending one2one file message \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    if-nez v0, :cond_1

    const-string/jumbo v5, "without"

    :goto_1
    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " fileicon."

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2041
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v5, v3, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->resendFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v4

    .line 2043
    .local v4, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-eqz v4, :cond_2

    .line 2046
    invoke-virtual {p0, p1, v4, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 2048
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v6, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v5, p1, p2, v6}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 2050
    return-void

    .end local v0    # "attachFileIcon":Z
    .end local v2    # "isSequentialFileLimitReached":Z
    .end local v4    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :pswitch_1
    const-string/jumbo v5, "ImConversation \'"

    .line 2006
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' - Unable to resend one2one file message right now! (imApisConnectionStatus "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, ")."

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 2010
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ImApis is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_2
    const-string/jumbo v5, "ImConversation \'"

    .line 2012
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' - Blocking resending of one2one file message! (imApisConnectionStatus "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, ")."

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 2016
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ImApis is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v2    # "isSequentialFileLimitReached":Z
    :cond_0
    const-string/jumbo v5, "ImConversationId \'"

    .line 2022
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' - Unable to resend one2one file message \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' right now! (imApisConnectionStatus "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " isSequentialFileLimitReached "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2027
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v5, v3}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsQueued(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0    # "attachFileIcon":Z
    :cond_1
    const-string/jumbo v5, "with"

    goto/16 :goto_1

    .line 2044
    .restart local v4    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_2
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to resend one2one file message \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 12
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 1940
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1941
    .local v4, "msgId":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v9}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v3

    .line 1942
    .local v3, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    invoke-virtual {v3}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1959
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v8

    .line 1961
    .local v8, "session":Lcom/sonymobile/jms/conversation/Session;
    :try_start_0
    invoke-virtual {v8}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v6

    .line 1962
    .local v6, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v5

    .line 1963
    .local v5, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionState()I

    move-result v7

    .line 1964
    .local v7, "rcsSessionState":I
    packed-switch v7, :pswitch_data_1

    .line 1978
    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ImConversation \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' rcs text message msgId \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' was found in unsupported state! ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1985
    :goto_0
    return-void

    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    .end local v7    # "rcsSessionState":I
    .end local v8    # "session":Lcom/sonymobile/jms/conversation/Session;
    :pswitch_2
    const-string/jumbo v9, "ImConversation \'"

    .line 1946
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Unable to resend one2one text message right now! (imApisConnectionStatus "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ")."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 1950
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ImApis is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_3
    const-string/jumbo v9, "ImConversation \'"

    .line 1952
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Blocking resending of one2one text message! (imApisConnectionStatus "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ")."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 1956
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ImApis is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1966
    .restart local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v6    # "rcsChatSessionId":Ljava/lang/String;
    .restart local v7    # "rcsSessionState":I
    .restart local v8    # "session":Lcom/sonymobile/jms/conversation/Session;
    :pswitch_4
    :try_start_1
    invoke-interface {v5, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->resendMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1985
    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    .end local v7    # "rcsSessionState":I
    :catch_0
    move-exception v1

    .line 1989
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct {p0, p1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->reSendTextMessageAsNewOne2OneChatInvitation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;)V

    .line 1995
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :goto_1
    return-void

    .line 1973
    .restart local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v6    # "rcsChatSessionId":Ljava/lang/String;
    .restart local v7    # "rcsSessionState":I
    :pswitch_5
    :try_start_2
    invoke-direct {p0, p1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->reSendTextMessageAsNewOne2OneChatInvitation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1994
    .end local v5    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsChatSessionId":Ljava/lang/String;
    .end local v7    # "rcsSessionState":I
    :catch_1
    move-exception v2

    .line 1990
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    goto :goto_1

    .line 1994
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_2
    move-exception v0

    .line 1992
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1942
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1964
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private resurrectActiveRcsFileTransferSessions(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 9
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 1025
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSessions()Ljava/util/List;

    move-result-object v4

    .line 1026
    .local v4, "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1065
    return-void

    .line 1026
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1027
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v6

    .line 1029
    .local v6, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->isGroupTransfer()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1035
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getChatID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1042
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v3

    .line 1043
    .local v3, "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v3}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const-string/jumbo v7, "Found a matching old rcs group file transfer session \'"

    .line 1051
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' for \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' but in a dead state ("

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "). Ignoring it."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1064
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v1

    .line 1059
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Unable to retrieve states of old rcs file transfer sessions from stack!"

    invoke-direct {v7, v8, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v3    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :pswitch_0
    const/4 v7, 0x0

    .line 1047
    :try_start_1
    invoke-virtual {p0, p1, v6, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1059
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_1
    move-exception v2

    .line 1062
    .local v2, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Unable to retrieve old rcs file transfer sessions from stack!"

    invoke-direct {v7, v8, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resurrectActiveRcsFileTransferSessions(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 10
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 931
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 933
    .local v4, "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 966
    return-void

    .line 933
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 934
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v6

    .line 936
    .local v6, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    .line 937
    .local v7, "rcsFileTransferSessionId":Ljava/lang/String;
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->isGroupTransfer()Z

    move-result v8

    if-nez v8, :cond_1

    .line 943
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v3

    .line 944
    .local v3, "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v8, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v3}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v8, "Found a matching old rcs one2one file transfer session \'"

    .line 952
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\' for \'"

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\' but in a dead state ("

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "). Ignoring it."

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 965
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .end local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v8, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v9, "Unable to retrieve states of old rcs file transfer sessions from stack!"

    invoke-direct {v8, v9, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .restart local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "Found a rcs group file transfer session \'"

    .line 938
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\' matching \'"

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\'?? Ignoring it."

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 960
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .end local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 963
    .local v2, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v8, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v9, "Unable to retrieve old rcs file transfer sessions from stack!"

    invoke-direct {v8, v9, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .end local v2    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v3    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v4    # "fileSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .restart local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :pswitch_0
    const/4 v8, 0x0

    .line 948
    :try_start_2
    invoke-virtual {p0, p1, v6, v8}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resurrectMostRecentActiveRcsChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 11
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 971
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    .line 974
    .local v6, "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1010
    if-nez v6, :cond_3

    .line 1020
    :goto_1
    return-void

    .line 974
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 975
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v7

    .line 976
    .local v7, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    .line 977
    .local v8, "rcsChatSessionId":Ljava/lang/String;
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isGroupChat()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 983
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v1

    .line 984
    .local v1, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    const-string/jumbo v9, "Found a matching old rcs group chat session \'"

    .line 1003
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' for \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' but in a dead state ("

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "). Ignoring it."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1019
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1015
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to retrieve states of old rcs chat sessions from stack!"

    invoke-direct {v9, v10, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v8    # "rcsChatSessionId":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v9, "Found a rcs group chat session \'"

    .line 978
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' matching \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'?? Ignoring it."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1015
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1018
    .local v4, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to retrieve old rcs chat sessions from stack!"

    invoke-direct {v9, v10, v4}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 988
    .end local v4    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v8    # "rcsChatSessionId":Ljava/lang/String;
    :pswitch_0
    if-eqz v6, :cond_2

    :try_start_2
    const-string/jumbo v9, "Found ANOTHER old still active rcs group chat session \'"

    .line 994
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' for \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' in state "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ". Keeping only this most recent one."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 1000
    :goto_2
    move-object v6, v7

    .local v6, "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    goto/16 :goto_0

    .end local v6    # "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_2
    const-string/jumbo v9, "Found an old still active rcs group chat session \'"

    .line 989
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' for \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' in state "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ". Keeping it."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_2

    .line 1011
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsChatSessionId":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 984
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resurrectMostRecentActiveRcsChatSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 11
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 877
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    .line 880
    .local v6, "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 916
    if-nez v6, :cond_3

    .line 926
    :goto_1
    return-void

    .line 880
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 881
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v7

    .line 882
    .local v7, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    .line 883
    .local v8, "rcsChatSessionId":Ljava/lang/String;
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isGroupChat()Z

    move-result v9

    if-nez v9, :cond_1

    .line 889
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v1

    .line 890
    .local v1, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    const-string/jumbo v9, "Found a matching old rcs one2one chat session \'"

    .line 909
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' for \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' but in a dead state ("

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "). Ignoring it."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 925
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 921
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to retrieve states of old rcs chat sessions from stack!"

    invoke-direct {v9, v10, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v8    # "rcsChatSessionId":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v9, "Found a rcs group chat session \'"

    .line 884
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' matching \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'?? Ignoring it."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 921
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 924
    .local v4, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to retrieve old chat rcs sessions from stack!"

    invoke-direct {v9, v10, v4}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 894
    .end local v4    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v2    # "chatSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v8    # "rcsChatSessionId":Ljava/lang/String;
    :pswitch_0
    if-eqz v6, :cond_2

    :try_start_2
    const-string/jumbo v9, "Found ANOTHER old still active rcs one2one chat session \'"

    .line 900
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' for \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' in state "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ". Keeping only this most recent one."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 906
    :goto_2
    move-object v6, v7

    .local v6, "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    goto/16 :goto_0

    .end local v6    # "mostRecentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_2
    const-string/jumbo v9, "Found an old still active rcs one2one chat session \'"

    .line 895
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' for \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' in state "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ". Keeping it."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_2

    .line 917
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v7    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsChatSessionId":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 18
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v15, "ImConversation \'"

    .line 1835
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' file uri \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' file name \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, " file size "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v14, 0x0

    .local v14, "rcsGroupChatSessionId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1842
    .local v13, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v9

    .line 1844
    .local v9, "groupSession":Lcom/sonymobile/jms/conversation/Session;
    :try_start_0
    invoke-virtual {v9}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v14

    .line 1845
    .local v14, "rcsGroupChatSessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v13

    .line 1846
    .local v13, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .end local v13    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v14    # "rcsGroupChatSessionId":Ljava/lang/String;
    .local v8, "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v15, "ImConversation \'"

    .line 1853
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' chat session state "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' file session state "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    sget-object v16, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1860
    :try_start_1
    sget-object v15, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v8}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v16

    aget v15, v15, v16

    sparse-switch v15, :sswitch_data_0

    .line 1925
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ImConversation \'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' - Group chat session found to be in unsupported state "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1935
    :goto_1
    return-void

    .line 1852
    .end local v8    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_0
    move-exception v7

    .line 1848
    .local v7, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    sget-object v8, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v8    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 1852
    .end local v7    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v8    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_1
    move-exception v6

    .line 1850
    .local v6, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 1851
    sget-object v8, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v8    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .end local v6    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :sswitch_0
    :try_start_2
    const-string/jumbo v15, "ImConversation \'"

    .line 1862
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Queuing group file message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' ("

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1865
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v11

    .line 1866
    .local v11, "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1867
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1934
    .end local v11    # "msgId":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 1931
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to get message id for rcs group file transfer session \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v15

    .end local v5    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_3
    const-string/jumbo v15, "ImConversation \'"

    .line 1870
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Queuing group file message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' ("

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1873
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v11

    .line 1874
    .restart local v11    # "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v11    # "msgId":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v15, "ImConversation \'"

    .line 1877
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Queuing group file message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' ("

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1880
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v11

    .line 1881
    .restart local v11    # "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1882
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/sonymobile/jms/conversation/Session;->setRestartGcOnNextFailedRejoinAttempt(Z)V

    .line 1883
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->tryToRejoinGroupChatSessionAsPartOfASendMessageOperation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    goto/16 :goto_1

    .line 1886
    .end local v11    # "msgId":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v4

    .line 1889
    .local v4, "attachFileIcon":Z
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->isNrOfAllowedOngoingOutgoingRcsFileTransferSessionsReached()Z

    move-result v10

    .line 1890
    .local v10, "isSequentialFileLimitReached":Z
    if-nez v10, :cond_0

    .line 1900
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableFileSession()V

    const-string/jumbo v15, "ImConversation \'"

    .line 1906
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Sending group file message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' size "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v16

    if-nez v4, :cond_1

    const-string/jumbo v15, " without"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, " fileicon.\'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v12

    .line 1913
    .local v12, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-eqz v12, :cond_2

    .line 1917
    invoke-interface {v12}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v11

    .line 1918
    .restart local v11    # "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v16, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto/16 :goto_1

    .end local v11    # "msgId":Ljava/lang/String;
    .end local v12    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    const-string/jumbo v15, "ImConversation \'"

    .line 1891
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Queuing group file message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' (isSequentialFileLimitReached "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1895
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v11

    .line 1896
    .restart local v11    # "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v11    # "msgId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v15, " with"

    goto/16 :goto_2

    .line 1914
    .restart local v12    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_2
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v16, "Unable to initiate a new rcs group file transfer session!"

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1860
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method private sendMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 9
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v7, "ImConversation \'"

    .line 1700
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v6, 0x0

    .local v6, "rcsGroupChatSessionId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1705
    .local v5, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v3

    .line 1707
    .local v3, "groupSession":Lcom/sonymobile/jms/conversation/Session;
    :try_start_0
    invoke-virtual {v3}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v6

    .line 1708
    .local v6, "rcsGroupChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v5

    .line 1709
    .local v5, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .end local v5    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsGroupChatSessionId":Ljava/lang/String;
    .local v2, "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v7, "ImConversation \'"

    .line 1716
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' chat session state "

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1720
    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 1754
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ImConversation \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' - Group chat session found to be in unsupported state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1759
    :goto_1
    return-void

    .line 1715
    .end local v2    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_0
    move-exception v1

    .line 1711
    .local v1, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v2    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 1715
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v2    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_1
    move-exception v0

    .line 1713
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 1714
    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v2    # "groupChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :sswitch_0
    const-string/jumbo v7, "ImConversation \'"

    .line 1722
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' - Queuing group text message. ("

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1725
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)Ljava/lang/String;

    move-result-object v4

    .line 1726
    .local v4, "msgId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1727
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_1

    .end local v4    # "msgId":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v7, "ImConversation \'"

    .line 1730
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' - Queuing group text message. ("

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1733
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)Ljava/lang/String;

    move-result-object v4

    .line 1734
    .restart local v4    # "msgId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    goto :goto_1

    .end local v4    # "msgId":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v7, "Session \'"

    .line 1737
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' - Queuing group text message. ("

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1740
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)Ljava/lang/String;

    move-result-object v4

    .line 1741
    .restart local v4    # "msgId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1742
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/sonymobile/jms/conversation/Session;->setRestartGcOnNextFailedRejoinAttempt(Z)V

    .line 1743
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->tryToRejoinGroupChatSessionAsPartOfASendMessageOperation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    goto/16 :goto_1

    .end local v4    # "msgId":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v7, "ImConversation \'"

    .line 1746
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' - Sending group text message."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1748
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1749
    .restart local v4    # "msgId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v7, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1750
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v8, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v7, p1, p2, v8}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto/16 :goto_1

    .line 1720
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method private sendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 10
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v6, "ImConversation \'"

    .line 1764
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' file uri \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' file name \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, " file size "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const-string/jumbo v6, "ImConversation \'"

    .line 1767
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' file session state "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1769
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v0

    .line 1773
    .local v0, "attachFileIcon":Z
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v6}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v3

    .line 1774
    .local v3, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    sget-object v6, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    invoke-virtual {v3}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1807
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableFileSession()V

    const-string/jumbo v6, "ImConversation \'"

    .line 1813
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' - Sending one2one file message \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' size "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    if-nez v0, :cond_4

    const-string/jumbo v6, " without"

    :goto_1
    invoke-virtual {v7, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, " fileicon.\'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1817
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->transferFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v5

    .line 1819
    .local v5, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-eqz v5, :cond_5

    .line 1823
    :try_start_0
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v4

    .line 1824
    .local v4, "msgId":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    return-void

    .line 1776
    .end local v4    # "msgId":Ljava/lang/String;
    .end local v5    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getNrOfAvailableFileSessions()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1777
    .local v1, "availableFileSessionExists":Z
    :goto_2
    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v6, "ImConversation \'"

    .line 1779
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' - Queuing one2one file message due to "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    if-nez v1, :cond_3

    const-string/jumbo v6, "NoAvailableFileSessionExists"

    :goto_3
    invoke-virtual {v7, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, " \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' (imApisConnectionStatus "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, ")."

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1786
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v4

    .line 1787
    .restart local v4    # "msgId":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1788
    return-void

    .end local v1    # "availableFileSessionExists":Z
    .end local v4    # "msgId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 1776
    goto :goto_2

    .line 1777
    .restart local v1    # "availableFileSessionExists":Z
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->isNrOfAllowedOngoingOutgoingRcsFileTransferSessionsReached()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v6, "SequentialFileLimitReached"

    goto :goto_3

    .end local v1    # "availableFileSessionExists":Z
    :pswitch_1
    const-string/jumbo v6, "ImConversation \'"

    .line 1792
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' - Queuing one2one file message \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' (imApisConnectionStatus "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, ")."

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1796
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v4

    .line 1797
    .restart local v4    # "msgId":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, p2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1798
    return-void

    .end local v4    # "msgId":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v6, "ImConversation \'"

    .line 1800
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' - Blocking sending of one2one file message (imApisConnectionStatus "

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, ")."

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 1804
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ImApis is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    const-string/jumbo v6, " with"

    goto/16 :goto_1

    .line 1820
    .restart local v5    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_5
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v7, "Unable to initiate a rcs one2one file transfer session!"

    invoke-direct {v6, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1829
    :catch_0
    move-exception v2

    .line 1826
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to get message id of rcs one2one file transfer session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

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

    .line 1774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 12
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v9, "ImConversation \'"

    .line 1590
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1593
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v9}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v4

    .line 1594
    .local v4, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    invoke-virtual {v4}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const/4 v8, 0x0

    .local v8, "rcsOne2OneChatSessionId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1616
    .local v7, "rcsOne2OneChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v8

    .line 1617
    .local v8, "rcsOne2OneChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v7

    .line 1618
    .local v7, "rcsOne2OneChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .end local v7    # "rcsOne2OneChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "rcsOne2OneChatSessionId":Ljava/lang/String;
    .local v6, "one2oneChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v9, "ImConversation \'"

    .line 1625
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' one2one chat session state "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1629
    :try_start_1
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 1687
    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ImConversation \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' - One2one chat session found to be in unsupported state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1695
    :goto_1
    return-void

    .end local v6    # "one2oneChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_2
    const-string/jumbo v9, "ImConversation \'"

    .line 1598
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Queuing one2one text message (imApisConnectionStatus "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ")."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1601
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)Ljava/lang/String;

    move-result-object v5

    .line 1602
    .local v5, "msgId":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1603
    return-void

    .end local v5    # "msgId":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v9, "ImConversation \'"

    .line 1605
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Blocking sending of one2one text message (imApisConnectionStatus "

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ")."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 1609
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ImApis is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1624
    :catch_0
    move-exception v2

    .line 1620
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    sget-object v6, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v6    # "one2oneChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto/16 :goto_0

    .line 1624
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v6    # "one2oneChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_1
    move-exception v1

    .line 1622
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 1623
    sget-object v6, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v6    # "one2oneChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto/16 :goto_0

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :pswitch_4
    :try_start_2
    const-string/jumbo v9, "ImConversation \'"

    .line 1631
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Queuing one2one text message. ("

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1634
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)Ljava/lang/String;

    move-result-object v5

    .line 1635
    .restart local v5    # "msgId":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1636
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1694
    .end local v5    # "msgId":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1693
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to send message on rcs one2one chat session!"

    invoke-direct {v9, v10, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 1648
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_5
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 1651
    :pswitch_6
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    const-string/jumbo v9, "ImConversation \'"

    .line 1657
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Initiating rcs one2one chat session with recipient \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1660
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v7

    .line 1662
    .restart local v7    # "rcsOne2OneChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v7, :cond_0

    .line 1666
    invoke-direct {p0, p1, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 1668
    invoke-interface {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v3

    .line 1669
    .local v3, "iMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-static {v3}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertInstantMessageNotNull(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 1670
    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    .line 1671
    .restart local v5    # "msgId":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1672
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v10, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v9, p1, p2, v10}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto/16 :goto_1

    .line 1663
    .end local v3    # "iMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .end local v5    # "msgId":Ljava/lang/String;
    :cond_0
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v10, "Unable to initiate a new rcs one2one chat session!"

    invoke-direct {v9, v10}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v7    # "rcsOne2OneChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :pswitch_7
    const-string/jumbo v9, "ImConversation \'"

    .line 1676
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' - Sending one2one text message."

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1678
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1679
    .restart local v5    # "msgId":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1680
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v10, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v9, p1, p2, v10}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1629
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 18
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    const-string/jumbo v15, "ImConversation \'"

    .line 3890
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v12, 0x0

    .local v12, "rcsGroupChatSessionId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3896
    .local v10, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v12

    .line 3897
    .local v12, "rcsGroupChatSessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 3898
    .local v10, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .end local v10    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v12    # "rcsGroupChatSessionId":Ljava/lang/String;
    .local v5, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v15, "ImConversation \'"

    .line 3906
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' chat session state "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, " file session state "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    sget-object v16, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3910
    sget-object v15, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 4000
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ImConversation \'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' - Rcs chat session found to be in unsupported state "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 4005
    :goto_1
    return-void

    .line 3905
    .end local v5    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_0
    move-exception v7

    .line 3900
    .local v7, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v5    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_2
    goto :goto_0

    .end local v5    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :cond_0
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    goto :goto_2

    .line 3905
    .end local v7    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v6

    .line 3903
    .local v6, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3904
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v5    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 3912
    .end local v6    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3914
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to send queued file message \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' right now!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3921
    :pswitch_1
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to send queued file message \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' right now!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15

    :pswitch_2
    const-string/jumbo v15, "ImConversation \'"

    .line 3924
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Attempting to rejoin rcs group chat session."

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3926
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->tryToRejoinGroupChatSessionAsPartOfASendMessageOperation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 3931
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to send queued file message \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' right now!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3939
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3942
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;

    move-result-object v14

    .line 3943
    .local v14, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 3944
    .local v9, "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 3952
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    .line 3958
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v15, v9}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->initiateAdhocGroupChatSession(Ljava/util/List;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 3959
    .restart local v10    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v10, :cond_2

    .line 3963
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 3964
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to send queued file message \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' right now!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3944
    .end local v10    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 3945
    .local v13, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v13}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "ImConversation \'"

    .line 3946
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Initiating rcs group chat session with recipient \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' from queued text message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_3

    .line 3960
    .end local v13    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v10    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_2
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v16, "Unable to initiate a new rcs group file session!"

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3967
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v14    # "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v4

    .line 3970
    .local v4, "attachFileIcon":Z
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->isNrOfAllowedOngoingOutgoingRcsFileTransferSessionsReached()Z

    move-result v15

    if-nez v15, :cond_3

    .line 3977
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableFileSession()V

    const-string/jumbo v15, "ImConversation \'"

    .line 3983
    invoke-static {v15}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' - Sending queued group file message \'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, "\' size "

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v16

    if-nez v4, :cond_4

    const-string/jumbo v15, " without"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    const-string/jumbo v16, " fileicon.\'"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3988
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendQueuedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v11

    .line 3990
    .local v11, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-eqz v11, :cond_5

    .line 3994
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 3996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v16, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto/16 :goto_1

    .line 3971
    .end local v11    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_3
    new-instance v15, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not send queued group file message \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' on imConversationId \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' right now!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_4
    const-string/jumbo v15, " with"

    goto :goto_4

    .line 3991
    .restart local v11    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_5
    new-instance v15, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to send queued group file message \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3910
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 13
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    const-string/jumbo v9, "ImConversation \'"

    .line 3753
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v6, 0x0

    .local v6, "rcsGroupChatSessionId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3758
    .local v5, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    iget-object v10, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v10

    .line 3759
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3761
    .local v3, "groupSession":Lcom/sonymobile/jms/conversation/Session;
    :try_start_1
    invoke-virtual {v3}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v6

    .line 3762
    .local v6, "rcsGroupChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v5

    .line 3763
    .local v5, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .end local v5    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v6    # "rcsGroupChatSessionId":Ljava/lang/String;
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    :try_start_2
    const-string/jumbo v9, "ImConversation \'"

    .line 3771
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\' chat session state "

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3774
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    .line 3842
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ImConversation \'"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "\' - Rcs chat session found to be in unsupported state "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3847
    :goto_1
    monitor-exit v10

    .line 3848
    return-void

    .line 3770
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_0
    move-exception v2

    .line 3765
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_2
    goto :goto_0

    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    goto :goto_2

    .line 3770
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v1

    .line 3768
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3769
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 3776
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3779
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to send queued text message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' right now!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3847
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v3    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 3786
    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v3    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    :pswitch_1
    :try_start_3
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to send queued text message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' right now!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_2
    const-string/jumbo v9, "ImConversation \'"

    .line 3794
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\' - Attempting to rejoin rcs group chat session."

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3796
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/sonymobile/jms/conversation/Session;->setRestartGcOnNextFailedRejoinAttempt(Z)V

    .line 3797
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->tryToRejoinGroupChatSessionAsPartOfASendMessageOperation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 3798
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to send queued text message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' right now!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3806
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3809
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;

    move-result-object v8

    .line 3810
    .local v8, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3817
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    .line 3824
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->initiateQueuedAdhocGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v5

    .line 3826
    .restart local v5    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v5, :cond_2

    .line 3830
    invoke-direct {p0, p1, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    goto/16 :goto_1

    .line 3810
    .end local v5    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/jms/contact/ImContactNumber;

    .local v7, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    const-string/jumbo v9, "ImConversation \'"

    .line 3811
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\' - Initiating rcs group chat session with recipient \'"

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\' from queued text message \'"

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\'"

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_3

    .line 3827
    .end local v7    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v5    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_2
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v11, "Unable to initiate a new rcs group chat session!"

    invoke-direct {v9, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v8    # "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :pswitch_5
    const-string/jumbo v9, "ImConversation \'"

    .line 3834
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\' - Sending queued group text message \'"

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v11, "\'"

    invoke-virtual {v9, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3837
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendQueuedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v11, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v9, p1, p2, v11}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 6
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 3853
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' file session state "

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    .line 3856
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->isAllowedToAttachFileIconToImFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v0

    .line 3859
    .local v0, "attachFileIcon":Z
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->isNrOfAllowedOngoingOutgoingRcsFileTransferSessionsReached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3866
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableFileSession()V

    const-string/jumbo v2, "ImConversation \'"

    .line 3871
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' - Sending queued one2one file message \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' size "

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    if-nez v0, :cond_1

    const-string/jumbo v2, " without"

    :goto_0
    invoke-virtual {v3, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, " fileicon.\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3875
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendQueuedFile(ZLjava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v1

    .line 3877
    .local v1, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    if-eqz v1, :cond_2

    .line 3881
    invoke-virtual {p0, p1, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 3883
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v2, p1, p2, v3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 3885
    return-void

    .line 3860
    .end local v1    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not send queued one2one file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' on session \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' right now!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, " with"

    goto :goto_0

    .line 3878
    .restart local v1    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_2
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to send queued one2one file message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 9
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 3669
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v4, 0x0

    .local v4, "rcsOne2OneChatSessionId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3674
    .local v3, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6

    .line 3676
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v4

    .line 3678
    .local v4, "rcsOne2OneChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v3

    .line 3679
    .local v3, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v4    # "rcsOne2OneChatSessionId":Ljava/lang/String;
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    :try_start_1
    const-string/jumbo v5, "ImConversation \'"

    .line 3686
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' chat session state "

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3689
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 3742
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ImConversation \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\' - Rcs chat session found to be in unsupported state "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3747
    :goto_1
    monitor-exit v6

    .line 3748
    return-void

    .line 3685
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catch_0
    move-exception v2

    .line 3681
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 3685
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v1

    .line 3683
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3684
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 3691
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptRcsChatSessionIfSettingIsAcceptOnSendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3694
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to send queued text message \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' right now!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3747
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3706
    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    :pswitch_3
    const-string/jumbo v5, "ImConversation \'"

    .line 3709
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' - Initiating rcs one2one chat session with recipient \'"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' from queued text message \'"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\'"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3714
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    .line 3721
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->initiateQueuedOne2OneChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v3

    .line 3722
    .restart local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v3, :cond_0

    .line 3726
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 3728
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v7, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v5, p1, p2, v7}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto/16 :goto_1

    .line 3723
    :cond_0
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v7, "Unable to initiate a new rcs one2one chat session!"

    invoke-direct {v5, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :pswitch_4
    const-string/jumbo v5, "ImConversation \'"

    .line 3732
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' - Sending queued one2one text message \'"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\'"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3735
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->sendQueuedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v7, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v5, p1, p2, v7}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 3689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private tryToAutoRejoinAutoRejoinRcsGroupChatSessions()V
    .locals 10

    .prologue
    const-string/jumbo v8, "enter"

    .line 2628
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2631
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getGroupChatSessionsForAutoRejoin()Ljava/util/List;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2636
    .local v7, "rcsGroupChatSessions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    .line 2645
    const/4 v3, 0x0

    .line 2646
    .local v3, "exceptionOccurredDuringAutoRejoin":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2663
    if-eqz v3, :cond_2

    .line 2670
    :goto_1
    return-void

    .line 2635
    .end local v3    # "exceptionOccurredDuringAutoRejoin":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "rcsGroupChatSessions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .local v2, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v8, "Unable to get group chat sessions to auto rejoin!"

    .line 2633
    invoke-static {v8, v2}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2634
    return-void

    .end local v2    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v7    # "rcsGroupChatSessions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v8, "Got null when trying to get group chat sessions marked for auto rejoin from stack."

    .line 2641
    invoke-static {v8}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 2643
    return-void

    .line 2646
    .restart local v3    # "exceptionOccurredDuringAutoRejoin":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2648
    .local v6, "rcsGroupChatId":Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v5

    .line 2650
    .local v5, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->rejoinGroupChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2661
    .end local v5    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :catch_1
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    const-string/jumbo v8, "Not able to auto rejoin rcs group chat id \'"

    .line 2653
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\'!"

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 2655
    const/4 v3, 0x1

    goto :goto_0

    .line 2661
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :catch_2
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v8, "Not able to auto rejoin rcs group chat id \'"

    .line 2658
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\'!"

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 2660
    const/4 v3, 0x1

    goto :goto_0

    .line 2665
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v6    # "rcsGroupChatId":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->clearGroupChatSessions()V
    :try_end_2
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 2668
    :catch_3
    move-exception v2

    .restart local v2    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v8, "Unable to clear auto rejoin group chat session after rejoin!"

    .line 2667
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private tryToRejoinGroupChatSessionAsPartOfASendMessageOperation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    .line 2560
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->rejoinGroupChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2580
    :goto_0
    return-void

    .line 2579
    :catch_0
    move-exception v0

    .line 2575
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 2579
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v1

    .line 2578
    .local v1, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "rcsChatSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    const/4 v2, 0x0

    .line 671
    .local v2, "currentRcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v6

    .line 673
    .local v6, "session":Lcom/sonymobile/jms/conversation/Session;
    :try_start_0
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isStoreAndForward()Z
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_1

    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .end local v2    # "currentRcsChatSessionId":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v1, v0

    .local v1, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    :try_start_1
    const-string/jumbo v7, "ImConversation \'"

    .line 721
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' add rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 723
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isGroupChat()Z

    move-result v7

    if-nez v7, :cond_3

    .line 728
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isStoreAndForwardNotif()Z

    move-result v7

    if-nez v7, :cond_4

    .line 731
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isStoreAndForward()Z

    move-result v7

    if-nez v7, :cond_5

    .line 736
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/conversation/Session;->setRcsOne2OneChatSession(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 741
    :goto_1
    if-eqz v1, :cond_6

    move-object v0, v1

    .end local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    :goto_2
    :try_start_2
    const-string/jumbo v7, "ImConversation \'"

    .line 747
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' connect listener to rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 751
    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->connect(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 752
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isStoreAndForwardNotif()Z

    move-result v7

    if-nez v7, :cond_7

    .line 756
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isStoreAndForward()Z

    move-result v7

    if-nez v7, :cond_8

    .line 761
    invoke-virtual {v6, v0}, Lcom/sonymobile/jms/conversation/Session;->setChatEventListener(Lcom/sonymobile/jms/conversation/RcsChatEventListener;)V

    :goto_3
    const-string/jumbo v7, "ImConversation \'"

    .line 764
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' store a reference to this rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 767
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sonymobile/jms/conversation/SessionRepository;->addRcsSession(Lcom/sonymobile/jms/conversation/Session;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 772
    return-void

    .line 675
    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v2    # "currentRcsChatSessionId":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "currentRcsChatSessionId":Ljava/lang/String;
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "ImConversation \'"

    .line 686
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' remove reference to this rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 689
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/conversation/SessionRepository;->removeReferencesToRcsSession(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->removeChatEventListener()Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    move-result-object v0

    .line 692
    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    if-eqz v0, :cond_0

    const-string/jumbo v7, "ImConversation \'"

    .line 694
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' disconnecting listener to rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 699
    invoke-direct {p0, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonymobile/jms/conversation/RcsChatEventListener;->disconnect(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 716
    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .end local v2    # "currentRcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v7, "ImConversation \'"

    .line 703
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' No need to disconnect current rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' since it no longer exist in stack!"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_0

    .end local v4    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v2    # "currentRcsChatSessionId":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v7, "ImConversation \'"

    .line 679
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' already holds rcs chat session \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_4
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 682
    return-void

    .line 716
    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .end local v2    # "currentRcsChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v5

    .local v5, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const-string/jumbo v7, "ImConversation \'"

    .line 710
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' does not hold any rcs chat session!"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_0

    .line 716
    .end local v5    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_2
    move-exception v3

    .line 714
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v8, "Unable handle removing/disconnecting of the old rcs chat session"

    invoke-direct {v7, v8, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 725
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    :cond_3
    :try_start_5
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getChatID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/jms/conversation/Session;->setRcsGroupChatSession(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 771
    :catch_3
    move-exception v3

    move-object v0, v1

    .line 769
    .end local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .local v0, "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to set rcs chat session to session \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 730
    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    :cond_4
    :try_start_6
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/conversation/Session;->setRcsOne2OneChatSAndFNotificationSession(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 733
    :cond_5
    invoke-interface {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/conversation/Session;->setRcsOne2OneChatSAndFSession(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :cond_6
    :try_start_7
    const-string/jumbo v7, "ImConversation \'"

    .line 742
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' create new chat event listener."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 744
    new-instance v0, Lcom/sonymobile/jms/conversation/RcsChatEventListener;

    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-direct {v0, v7, p1}, Lcom/sonymobile/jms/conversation/RcsChatEventListener;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .end local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    goto/16 :goto_2

    .line 755
    :cond_7
    :try_start_8
    invoke-virtual {v6, v0}, Lcom/sonymobile/jms/conversation/Session;->setSAndFNotificationEventListener(Lcom/sonymobile/jms/conversation/RcsChatEventListener;)V

    goto/16 :goto_3

    .line 771
    :catch_4
    move-exception v3

    goto :goto_4

    .line 758
    :cond_8
    invoke-virtual {v6, v0}, Lcom/sonymobile/jms/conversation/Session;->setSAndFChatEventListener(Lcom/sonymobile/jms/conversation/RcsChatEventListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 771
    .end local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    .restart local v0    # "chatEventListener":Lcom/sonymobile/jms/conversation/RcsChatEventListener;
    goto :goto_4
.end method


# virtual methods
.method public acceptImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 1451
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' accept msg \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1453
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6

    .line 1454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v4

    .line 1455
    .local v4, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1457
    .local v3, "rcsFileTransferSessionId":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v2

    .line 1458
    .local v2, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-direct {p0, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v5

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-ne v5, v7, :cond_0

    .line 1465
    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->acceptSession()V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1476
    return-void

    .line 1459
    :cond_0
    :try_start_3
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to accept held rcs file transfer session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' inside session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' since it is not in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1474
    .end local v2    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v1

    .line 1467
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_4
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to accept held rcs file transfer session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' inside session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' since it is no longer present in stack!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 1475
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v3    # "rcsFileTransferSessionId":Ljava/lang/String;
    .end local v4    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1467
    .restart local v3    # "rcsFileTransferSessionId":Ljava/lang/String;
    .restart local v4    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catch_1
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to accept held rcs chat session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' inside session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public cancelFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 13
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v9, "ImConversation \'"

    .line 2308
    invoke-static {v9}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\' msg \'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v7, 0x0

    .line 2311
    .local v7, "rcsFileTransferSessionId":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v10

    .line 2313
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2315
    .local v7, "rcsFileTransferSessionId":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v6

    .line 2316
    .local v6, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImFileConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v4

    .line 2318
    .local v4, "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v4}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    .line 2324
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to cancel file message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' because rcs file transfer session \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' is in file session state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    .end local v4    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .end local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2331
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :try_start_1
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getFileMessageStatus(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v8

    .line 2333
    .local v8, "status":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    sget-object v9, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

    invoke-virtual {v8}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_1

    .line 2340
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to cancel file message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' because it has status \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2346
    .end local v8    # "status":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    :catch_1
    move-exception v3

    .line 2344
    .local v3, "e1":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :try_start_2
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to cancel file message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' because it could not be retrieved from stack!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 2357
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v3    # "e1":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 2321
    .restart local v4    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .restart local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->cancelSession()V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2357
    .end local v4    # "fileSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v6    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .end local v7    # "rcsFileTransferSessionId":Ljava/lang/String;
    :goto_0
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2358
    return-void

    .line 2335
    .restart local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .restart local v8    # "status":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    :pswitch_1
    :try_start_5
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v5

    .line 2336
    .local v5, "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v9, p1, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsCanceled(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    :try_end_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2356
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v5    # "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v8    # "status":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    :catch_2
    move-exception v1

    .line 2350
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_6
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to cancel file message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' because rcs file transfer session \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' is not present in stack!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_3
    move-exception v0

    .line 2354
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v9, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to cancel file message \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' on rcs file transfer session \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2333
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageDeliveryListener:Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->removeMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V

    .line 126
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsFileTransferSetupListener:Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->removeFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageDeliveryListener:Lcom/sonymobile/jms/conversation/RcsMessageDeliveryListener;

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsFileTransferSetupListener:Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 134
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    .line 135
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    .line 136
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 137
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    .line 138
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 139
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 140
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    .line 141
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 142
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 143
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/SessionRepository;->cleanup()V

    .line 144
    iput-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    .line 145
    iput-boolean v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstImApiConnection:Z

    .line 146
    iput-boolean v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstRcsApiConnection:Z

    .line 147
    return-void

    .line 132
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v1, "Failed to unregister im-message delivery listener!"

    .line 130
    invoke-static {v1, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public deleteImConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 4333
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->leaveImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4340
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ensureFileIconRemoved(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 4341
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->ensureResizedFilesRemoved(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 4342
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->deleteImConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 4343
    return-void

    .line 4339
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v1, "Could not leave conversation before deleting it for ImGroupConversationId \'"

    .line 4335
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' message \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method public deleteImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 3
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 4317
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->leaveImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4324
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ensureFileIconRemoved(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 4325
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->ensureResizedFilesRemoved(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 4326
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->deleteImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 4327
    return-void

    .line 4323
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v1, "Could not leave conversation before deleting it for ImOne2OneConversationId \'"

    .line 4319
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' message \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method public deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 4203
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v0

    .line 4204
    .local v0, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    instance-of v1, v0, Lcom/sonymobile/jms/message/ImFileMessage;

    if-nez v1, :cond_0

    .line 4206
    instance-of v1, v0, Lcom/sonymobile/jms/message/ImTextMessage;

    if-nez v1, :cond_1

    .line 4210
    :goto_0
    return-void

    .line 4205
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->deleteImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_0

    .line 4207
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->deleteImTextMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method ensureListenerToRcsChatSessionInImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;)V
    .locals 5
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "rcsChatSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 2945
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' rcs chat session \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2947
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v3

    .line 2949
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v1

    .line 2950
    .local v1, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    .end local v1    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 2958
    return-void

    .line 2956
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v2, "Unable to get rcs chat session \'"

    .line 2954
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v4, "\' from stack!"

    invoke-virtual {v2, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0

    .line 2957
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v3, "("

    .line 3653
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 3654
    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    monitor-enter v4

    .line 3655
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3656
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3661
    monitor-exit v4

    return-object v2

    .line 3656
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3657
    .local v1, "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3658
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3661
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Ljava/lang/Object;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v3

    .line 3662
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 3
    .param p1, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2765
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->isGroupTransfer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2768
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    return-object v1

    .line 2766
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getChatID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2768
    :catch_0
    move-exception v0

    .line 2772
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v2, "Unable to determine session id!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getMaxChatRecipientsToBeAdded(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)I
    .locals 7
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 1241
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1242
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v4

    .line 1244
    .local v4, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v3

    .line 1245
    .local v3, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getMaxParticipantsToBeAdded()I

    move-result v5

    monitor-exit v6

    return v5

    .end local v3    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v4    # "rcsChatSessionId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 1246
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v2

    .line 1248
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v5}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxGroupConversationParticipants()I

    move-result v5

    return v5

    .end local v2    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_1
    move-exception v1

    .line 1250
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v5}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxGroupConversationParticipants()I

    move-result v5

    return v5

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_2
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v6, "Failed to get number of group chat recipients that can be added"

    invoke-direct {v5, v6, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public getParticipants(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;
    .locals 14
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const-string/jumbo v10, "ImConversation \'"

    .line 267
    invoke-static {v10}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v9, 0x0

    .line 270
    .local v9, "rcsChatSessionId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v9

    .line 271
    .local v9, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v8

    .line 273
    .local v8, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0, v8}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v0

    .line 275
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v10, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-eq v0, v10, :cond_0

    .line 287
    new-instance v10, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ImConversation \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' is not ESTABLISHED so we can not know active participants on that!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v8    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v9    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v13}, Ljava/util/HashSet;-><init>(I)V

    return-object v10

    .line 276
    .end local v3    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .restart local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v8    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v9    # "rcsChatSessionId":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 279
    .local v5, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getParticipants()Ljava/util/List;

    move-result-object v7

    .line 280
    .local v7, "rcsChatParticipantNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 283
    return-object v5

    .line 280
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 281
    .local v6, "rcsChatParticipantNumber":Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 297
    .end local v0    # "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    .end local v6    # "rcsChatParticipantNumber":Ljava/lang/String;
    .end local v7    # "rcsChatParticipantNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v9    # "rcsChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v10, "Rcs chat session \'"

    .line 302
    invoke-static {v10}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "\' held by session \'"

    invoke-virtual {v10, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "\' is no longer present in stack!"

    invoke-virtual {v10, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 304
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v13}, Ljava/util/HashSet;-><init>(I)V

    return-object v10

    .end local v2    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_2
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v10, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to get participant numbers of rcs chat session \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method

.method public getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 315
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 317
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v5}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v5, v6, :cond_1

    .line 322
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    move-result-object v3

    .line 324
    .local v3, "rcsGroupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->getAllParticipants()Ljava/util/List;

    move-result-object v2

    .line 330
    .local v2, "rcsChatRecipientNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 332
    .local v4, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 335
    return-object v4

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rcsChatRecipientNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rcsGroupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .end local v4    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImTextConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-ne v5, v6, :cond_0

    .line 319
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/Session;->getRecipientNumbers()Ljava/util/Set;

    move-result-object v5

    return-object v5

    .line 325
    .restart local v3    # "rcsGroupChatInfo":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :cond_2
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get GroupChatInfo for session \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' due to rcs group chat info was null!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 332
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "rcsChatRecipientNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, "rcsChatRecipientNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleRcsChatSessionInitiationError(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-static {v0, p1}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkQueuedImUserMessagesAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 4153
    return-void
.end method

.method handleRcsChatSessionRejoinFailed(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 4
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 4132
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4133
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v3

    .line 4134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v1

    .line 4135
    .local v1, "groupSession":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/Session;->isRestartGcOnNextFailedRejoinAttempt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4146
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4147
    return-void

    .line 4137
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->restartGroupChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4144
    :catch_0
    move-exception v0

    .line 4138
    .local v0, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    goto :goto_0

    .line 4144
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 4146
    .end local v1    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public inviteImContacts(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)V
    .locals 17
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
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .local p2, "invitees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    const-string/jumbo v13, "ImConversation \'"

    .line 1176
    invoke-static {v13}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    const-string/jumbo v14, "\' nr of invitees "

    invoke-virtual {v13, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v14

    .line 1179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToSendGroupTextInvitationTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)V

    .line 1181
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v12

    .local v12, "session":Lcom/sonymobile/jms/conversation/Session;
    const/4 v10, 0x0

    .line 1183
    .local v10, "rcsChatSessionId":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1184
    .local v7, "inviteNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_0

    .line 1188
    :try_start_1
    invoke-virtual {v12}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v10

    .line 1189
    .local v10, "rcsChatSessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v9

    .local v9, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    const/4 v13, 0x0

    .line 1190
    invoke-interface {v9, v7, v13}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->addParticipants(Ljava/util/List;Ljava/lang/String;)V

    .line 1191
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_1

    .line 1234
    .end local v9    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v10    # "rcsChatSessionId":Ljava/lang/String;
    :goto_2
    :try_start_2
    monitor-exit v14

    .line 1235
    return-void

    .line 1184
    .local v10, "rcsChatSessionId":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 1185
    .local v8, "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v8}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1234
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "inviteNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v10    # "rcsChatSessionId":Ljava/lang/String;
    .end local v12    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 1191
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "inviteNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .local v10, "rcsChatSessionId":Ljava/lang/String;
    .restart local v12    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 1192
    .restart local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v12, v8}, Lcom/sonymobile/jms/conversation/Session;->addRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1233
    .end local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v10    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1202
    .local v4, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v7, v15}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v11

    .line 1207
    .local v11, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_4
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1212
    .end local v11    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_1
    move-exception v5

    .line 1210
    .local v5, "ex":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_5
    new-instance v13, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to send invitations to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " invitees for ImConversation \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1202
    .end local v5    # "ex":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_2
    :try_start_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 1203
    .restart local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v12, v8}, Lcom/sonymobile/jms/conversation/Session;->addRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    :try_end_6
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1233
    .end local v4    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    :catch_2
    move-exception v3

    .line 1218
    .local v3, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v7, v15}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v11

    .line 1223
    .restart local v11    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_7
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1228
    .end local v11    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_3
    move-exception v5

    .line 1226
    .restart local v5    # "ex":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_8
    new-instance v13, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to send invitations to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " invitees for ImConversation \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1218
    .end local v5    # "ex":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_3
    :try_start_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 1219
    .restart local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v12, v8}, Lcom/sonymobile/jms/conversation/Session;->addRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    :try_end_9
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 1233
    .end local v3    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v8    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    :catch_4
    move-exception v2

    .line 1230
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_a
    new-instance v13, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to send invitations to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " invitees to on rcs chat session \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' for ImConversation \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public isFileMessagePendingLocalInvitationResponse(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)Z
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1291
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6

    .line 1292
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v4

    .line 1293
    .local v4, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1295
    .local v3, "rcsFileTransferSessionId":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v2

    .line 1297
    .local v2, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionState()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    .line 1300
    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->isSessionRemoteOriginated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1303
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$Session$InvitationState:[I

    invoke-virtual {v4, v3}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionInvitationState(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$InvitationState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ordinal()I

    move-result v7

    aget v5, v5, v7
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v5, :pswitch_data_0

    .line 1308
    :try_start_2
    monitor-exit v6

    const/4 v5, 0x1

    return v5

    .line 1298
    :cond_0
    monitor-exit v6

    return v8

    .line 1301
    :cond_1
    monitor-exit v6

    return v8

    .line 1306
    :pswitch_0
    monitor-exit v6

    return v8

    .line 1308
    .end local v2    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v1

    .line 1311
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    monitor-exit v6

    return v8

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v6

    return v8

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "rcsFileTransferSessionId":Ljava/lang/String;
    .end local v4    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v5

    .line 1315
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isLeftByLocalUser(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->isLeftByLocalUser(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v0

    return v0
.end method

.method public leaveImGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 2985
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->leaveImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 2986
    return-void
.end method

.method public markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 4304
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 4305
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-static {p0, v0}, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil;->tryToSetDeliveryStatusDisplayedToReadMsgsWithReportRequested(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;)V

    .line 4307
    return-void
.end method

.method public onImApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 2
    .param p1, "imApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 2717
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 2720
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    monitor-enter v1

    .line 2721
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstImApiConnection:Z

    if-eqz v0, :cond_1

    .line 2726
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->isDisplayedNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2730
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-static {p0, v0}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueOne2OneMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V

    .line 2731
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->tryToAutoRejoinAutoRejoinRcsGroupChatSessions()V

    .line 2732
    monitor-exit v1

    .line 2733
    return-void

    .line 2718
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "First imApi connection achieved."

    .line 2722
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstImApiConnection:Z

    .line 2724
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v0}, Lcom/sonymobile/jms/ApiStatusReader;->getRcsApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onRcsApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    goto :goto_0

    .line 2732
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2727
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-static {p0, v0}, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil;->tryToSetDeliveryStatusDisplayedToReadMsgsWithReportRequested(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onImConversationOpened(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImTextConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-ne v0, v1, :cond_1

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->getManualAcceptModeForImTextConversation()Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_CONVERSATION_OPEN:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "Trying to accept chat invitation referenced by imConversation \'"

    .line 1331
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'!"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1333
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 1334
    return-void

    .line 1321
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImSAndFConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-eq v0, v1, :cond_0

    .line 1325
    return-void

    .line 1329
    :cond_2
    return-void
.end method

.method onImFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 4
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 4178
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' msg \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4180
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v3

    .line 4181
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v1

    .line 4182
    .local v1, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4183
    .local v0, "rcsFileTransferSessionId":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/jms/conversation/Session;->setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V

    .line 4185
    monitor-exit v3

    .line 4186
    return-void

    .line 4185
    .end local v0    # "rcsFileTransferSessionId":Ljava/lang/String;
    .end local v1    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onImFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 4
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 4190
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' msg \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4192
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v3

    .line 4193
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v1

    .line 4194
    .local v1, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4195
    .local v0, "rcsFileTransferSessionId":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/jms/conversation/Session$InvitationState;->REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/jms/conversation/Session;->setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V

    .line 4197
    monitor-exit v3

    .line 4198
    return-void

    .line 4197
    .end local v0    # "rcsFileTransferSessionId":Ljava/lang/String;
    .end local v1    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onRcsApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 2
    .param p1, "rcsApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 2701
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 2704
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2707
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    monitor-enter v1

    .line 2708
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstRcsApiConnection:Z

    if-eqz v0, :cond_2

    .line 2713
    :goto_0
    monitor-exit v1

    .line 2714
    return-void

    .line 2702
    :cond_0
    return-void

    .line 2705
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "First rcsApi connection achieved."

    .line 2709
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mAchievedFirstRcsApiConnection:Z

    .line 2711
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onFirstRcsApiConnection()V

    goto :goto_0

    .line 2713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onRcsChatSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    .locals 22
    .param p1, "newRcsChatSessionId"    # Ljava/lang/String;
    .param p2, "replacedRcsChatSessionId"    # Ljava/lang/String;
    .param p3, "isNewRcsChatSessionGroupChat"    # Z
    .param p4, "invitationStatus"    # Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .param p5, "inviter"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v18, "invitation status "

    .line 3336
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v19, " rcs chat session \'"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v19, "\' replaced rcs chat session \'"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v19, "\'"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v19, " is group "

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v19, " inviter number \'"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v19, "\'"

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    move-object/from16 v19, v0

    monitor-enter v19

    const/4 v15, 0x0

    .local v15, "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    const/4 v14, 0x0

    .line 3346
    .local v14, "newImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const/16 v17, 0x1

    .line 3349
    .local v17, "wasUnprocessedSession":Z
    if-nez p3, :cond_3

    .line 3379
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v14

    .end local v14    # "newImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v15    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :goto_0
    const/16 v16, 0x0

    .line 3384
    .local v16, "session":Lcom/sonymobile/jms/conversation/Session;
    if-nez v14, :cond_4

    .line 3391
    .end local v16    # "session":Lcom/sonymobile/jms/conversation/Session;
    .end local v17    # "wasUnprocessedSession":Z
    :goto_1
    if-eqz p3, :cond_6

    .line 3413
    :goto_2
    if-nez p2, :cond_7

    .line 3439
    :goto_3
    if-nez v16, :cond_8

    .line 3440
    :cond_0
    sget-object v18, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v20

    aget v18, v18, v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v18, :pswitch_data_0

    .line 3451
    :goto_4
    const/4 v13, 0x0

    .line 3453
    .local v13, "isStoreAndForwardSession":Z
    :try_start_1
    invoke-interface {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->isStoreAndForward()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 3454
    .local v13, "isStoreAndForwardSession":Z
    if-nez v13, :cond_9

    .line 3470
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionInvitationState()Lcom/sonymobile/jms/conversation/Session$InvitationState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 3472
    .local v5, "currentInvitationState":Lcom/sonymobile/jms/conversation/Session$InvitationState;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v7

    .line 3473
    .local v7, "currentRcsChatSessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v6

    .line 3474
    .local v6, "currentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v4

    .local v4, "currentChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    const-string/jumbo v18, "ImConversation \'"

    .line 3475
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' currentRcsChatSession "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' currentChatSessionState "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3483
    if-eqz p3, :cond_a

    .line 3507
    :cond_1
    if-eqz p3, :cond_b

    .line 3511
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 3515
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sonymobile/jms/conversation/Session;->setChatSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3532
    .end local v4    # "currentChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v6    # "currentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v7    # "currentRcsChatSessionId":Ljava/lang/String;
    :goto_6
    :try_start_4
    sget-object v18, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 3537
    if-nez v17, :cond_d

    .line 3541
    :goto_7
    sget-object v18, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$Session$InvitationState:[I

    invoke-virtual {v5}, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ordinal()I

    move-result v20

    aget v18, v18, v20

    packed-switch v18, :pswitch_data_1

    .line 3572
    :goto_8
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v18

    .line 3351
    .end local v5    # "currentInvitationState":Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .end local v13    # "isStoreAndForwardSession":Z
    .restart local v14    # "newImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v15    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v17    # "wasUnprocessedSession":Z
    :cond_3
    :try_start_5
    sget-object v18, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v20

    aget v18, v18, v20

    packed-switch v18, :pswitch_data_2

    goto/16 :goto_0

    .line 3354
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v15

    .line 3355
    .local v15, "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-interface {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->getChatID()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_end_5
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .local v14, "newImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    goto/16 :goto_0

    .line 3377
    .end local v15    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .local v14, "newImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :catch_0
    move-exception v10

    .local v10, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_6
    const-string/jumbo v18, "ImConversation \'"

    .line 3365
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\'- Just received an invitation on rcs chat session \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' but when trying to get it from stack it was not present!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 3370
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    .line 3346
    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 3370
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V

    monitor-exit v19

    return-object v18

    .end local v10    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_1
    move-exception v8

    .line 3374
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to determine group chat id of rcs chat session \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\'!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 3572
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v14    # "newImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v17    # "wasUnprocessedSession":Z
    :catchall_0
    move-exception v18

    .line 3574
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v18

    .line 3385
    .restart local v16    # "session":Lcom/sonymobile/jms/conversation/Session;
    .restart local v17    # "wasUnprocessedSession":Z
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v16

    .line 3386
    .local v16, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionInvitationState()Lcom/sonymobile/jms/conversation/Session$InvitationState;

    move-result-object v18

    sget-object v20, Lcom/sonymobile/jms/conversation/Session$InvitationState;->UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v17, 0x0

    .local v17, "wasUnprocessedSession":Z
    :goto_9
    goto/16 :goto_1

    .local v17, "wasUnprocessedSession":Z
    :cond_5
    const/16 v17, 0x1

    goto :goto_9

    .line 3392
    .end local v16    # "session":Lcom/sonymobile/jms/conversation/Session;
    .end local v17    # "wasUnprocessedSession":Z
    :cond_6
    :try_start_8
    sget-object v18, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v20

    aget v18, v18, v20

    packed-switch v18, :pswitch_data_3

    goto/16 :goto_2

    .line 3395
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :try_end_8
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v15

    .restart local v15    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    goto/16 :goto_2

    .line 3409
    .end local v15    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_2
    move-exception v10

    .restart local v10    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_9
    const-string/jumbo v18, "ImConversation \'"

    .line 3402
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\'- Just received an invitation on rcs chat session \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' but when trying to get it from stack it was not present!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 3407
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V

    monitor-exit v19

    return-object v18

    .end local v10    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :cond_7
    const-string/jumbo v18, "ImConversation \'"

    .line 3414
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\'- The rcs chat session \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' was replaced with \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' so no we must handle that."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3422
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/conversation/SessionRepository;->getSessionByRcsSessionId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/conversation/Session;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_a
    .catch Lcom/sonymobile/jms/conversation/SessionNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 3434
    :catch_3
    move-exception v12

    .line 3424
    .local v12, "e":Lcom/sonymobile/jms/conversation/SessionNotFoundException;
    goto/16 :goto_3

    .line 3434
    .end local v12    # "e":Lcom/sonymobile/jms/conversation/SessionNotFoundException;
    :catch_4
    move-exception v9

    .local v9, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :try_start_b
    const-string/jumbo v18, "ImConversation \'"

    .line 3431
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\'- Not possible to remove the replaced rcs chat session \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\'!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto/16 :goto_3

    .line 3439
    .end local v9    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_8
    if-eqz v15, :cond_0

    goto/16 :goto_4

    .line 3444
    :pswitch_2
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V

    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-object v18

    .line 3455
    .restart local v13    # "isStoreAndForwardSession":Z
    :cond_9
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 3457
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    monitor-exit v19

    return-object v18

    .line 3467
    .end local v13    # "isStoreAndForwardSession":Z
    :catch_5
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string/jumbo v18, "ImConversation \'"

    .line 3461
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' failed to retrieve store and forward session info\'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 3464
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "imConversation \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\'- Not able to retrieve rcs chat session info \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\'!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 3483
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v4    # "currentChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v5    # "currentInvitationState":Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .restart local v6    # "currentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v7    # "currentRcsChatSessionId":Ljava/lang/String;
    .restart local v13    # "isStoreAndForwardSession":Z
    :cond_a
    if-nez v13, :cond_1

    :try_start_e
    sget-object v18, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_e
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_1

    .line 3489
    :try_start_f
    invoke-interface {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->rejectSession()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 3498
    :goto_a
    :try_start_10
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    sget-object v20, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V
    :try_end_10
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    monitor-exit v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    return-object v18

    .line 3494
    :catch_6
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_12
    const-string/jumbo v18, "ImConversation \'"

    .line 3491
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\' failed to reject new rcs chat session \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_12
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_a

    .line 3530
    .end local v4    # "currentChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v6    # "currentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v7    # "currentRcsChatSessionId":Ljava/lang/String;
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_7
    move-exception v11

    .line 3521
    .local v11, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_6

    .line 3507
    .end local v11    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .restart local v4    # "currentChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .restart local v6    # "currentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v7    # "currentRcsChatSessionId":Ljava/lang/String;
    :cond_b
    if-nez v13, :cond_2

    :try_start_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 3509
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/jms/conversation/ImConversationManager;->leaveRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_14
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_5

    .line 3530
    .end local v4    # "currentChatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v6    # "currentRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v7    # "currentRcsChatSessionId":Ljava/lang/String;
    :catch_8
    move-exception v10

    .line 3527
    .restart local v10    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsChatSession(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 3529
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    goto/16 :goto_6

    .line 3533
    .end local v10    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :cond_c
    sget-object v18, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/conversation/Session;->setChatSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;)V

    .line 3534
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V

    monitor-exit v19

    return-object v18

    .line 3538
    :cond_d
    sget-object v18, Lcom/sonymobile/jms/conversation/Session$InvitationState;->PROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/conversation/Session;->setChatSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_7

    .line 3548
    :pswitch_3
    :try_start_16
    invoke-interface {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->acceptSession()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_8

    .line 3553
    :catch_9
    move-exception v8

    .line 3550
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_17
    new-instance v18, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "imConversation \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\'- Not able to accept rcs chat session \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\'!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 3561
    .end local v8    # "e":Landroid/os/RemoteException;
    :pswitch_4
    :try_start_18
    invoke-interface {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->rejectSession()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_8

    .line 3567
    :catch_a
    move-exception v8

    .line 3563
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_19
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "imConversation \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "\'- Not able to reject rcs chat session \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    const-string/jumbo v20, "\'!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_8

    .line 3440
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3541
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3351
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3392
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method onRcsFileTransferSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    .locals 7
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatSessionId"    # Ljava/lang/String;
    .param p3, "rcsChatId"    # Ljava/lang/String;
    .param p4, "isGroupFile"    # Z
    .param p5, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p6, "invitationStatus"    # Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .param p7, "inviter"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v4, "invitation status "

    .line 3581
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " rcs file transfer session \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' rcs chat session id \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' rcs chat id \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\'  is group file "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " inviter number \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3586
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v5

    .line 3587
    if-nez p4, :cond_1

    :try_start_0
    invoke-static {p7}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    .line 3589
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :goto_0
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v2

    .line 3591
    .local v2, "session":Lcom/sonymobile/jms/conversation/Session;
    if-nez p2, :cond_2

    .line 3605
    :goto_1
    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionInvitationState(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$InvitationState;

    move-result-object v4

    sget-object v6, Lcom/sonymobile/jms/conversation/Session$InvitationState;->UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v6, :cond_3

    .line 3608
    .local v3, "wasUnprocessedSession":Z
    :goto_2
    :try_start_1
    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    invoke-virtual {p6}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 3631
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Detected unsupported file transfer invitation status "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3646
    :cond_0
    :goto_3
    :try_start_2
    new-instance v4, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    invoke-direct {v4, v1, p6, v3}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V

    monitor-exit v5

    return-object v4

    .line 3587
    .end local v1    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v2    # "session":Lcom/sonymobile/jms/conversation/Session;
    .end local v3    # "wasUnprocessedSession":Z
    :cond_1
    invoke-static {p3}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 3593
    .restart local v1    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v2    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_2
    :try_start_3
    invoke-direct {p0, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3602
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_4
    const-string/jumbo v4, "Just received an invitation on rcs file transfer session \'"

    .line 3596
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v6, "\' that had a reference to rcs chat session \'"

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v6, "\' but when trying to get that rcs chat session from stack it was not present anymore!"

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_1

    .line 3646
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v1    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v2    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v4

    .line 3648
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v1    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v2    # "session":Lcom/sonymobile/jms/conversation/Session;
    :cond_3
    const/4 v3, 0x1

    .line 3605
    goto :goto_2

    .line 3610
    .restart local v3    # "wasUnprocessedSession":Z
    :pswitch_1
    :try_start_5
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v4

    invoke-virtual {p0, v1, v4, p5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 3612
    sget-object v4, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v2, v4, p1}, Lcom/sonymobile/jms/conversation/Session;->setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 3644
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_6
    const-string/jumbo v4, "Just received an invitation on rcs file transfer session \'"

    .line 3637
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v6, "\' but when trying to get that rcs file transfer session from stack it was not present anymore!"

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 3641
    sget-object v4, Lcom/sonymobile/jms/conversation/Session$InvitationState;->REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v2, v4, p1}, Lcom/sonymobile/jms/conversation/Session;->setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V

    .line 3643
    sget-object p6, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3616
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :pswitch_2
    :try_start_7
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v4

    invoke-virtual {p0, v1, v4, p5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 3618
    if-eqz v3, :cond_0

    .line 3619
    sget-object v4, Lcom/sonymobile/jms/conversation/Session$InvitationState;->PROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v2, v4, p1}, Lcom/sonymobile/jms/conversation/Session;->setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V

    goto :goto_3

    .line 3627
    :pswitch_3
    sget-object v4, Lcom/sonymobile/jms/conversation/Session$InvitationState;->REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v2, v4, p1}, Lcom/sonymobile/jms/conversation/Session;->setFileTransferSessionInvitationState(Lcom/sonymobile/jms/conversation/Session$InvitationState;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 3608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public registerImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/jms/conversation/ImConversationEventListener;

    .prologue
    const-string/jumbo v0, "("

    .line 1259
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, ") \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1261
    if-eqz p1, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 1266
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1267
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    return-void

    :cond_0
    const-string/jumbo v0, "Listener is not allowed to be null!"

    .line 1262
    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1263
    return-void

    .line 1267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerImConversationObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "imConversationObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->registerImConversationObserver(Landroid/database/ContentObserver;)V

    .line 1354
    return-void
.end method

.method public rejectImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 1481
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' reject msg \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1483
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6

    .line 1484
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v4

    .line 1485
    .local v4, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v4, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1487
    .local v3, "rcsFileTransferSessionId":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v2

    .line 1488
    .local v2, "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-direct {p0, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getFileSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v5

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    if-ne v5, v7, :cond_0

    .line 1495
    invoke-interface {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->rejectSession()V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1506
    return-void

    .line 1489
    :cond_0
    :try_start_3
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to reject held rcs file transfer session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' inside session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' since it is not in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1504
    .end local v2    # "rcsFileTransferSession":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :catch_0
    move-exception v1

    .line 1497
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :try_start_4
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to reject held rcs file transfer session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' inside session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' since it is no longer present in stack!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 1505
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v3    # "rcsFileTransferSessionId":Ljava/lang/String;
    .end local v4    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1497
    .restart local v3    # "rcsFileTransferSessionId":Ljava/lang/String;
    .restart local v4    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catch_1
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to reject held rcs chat session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' inside session \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method removeRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "ImConversation \'"

    .line 246
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' msg \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 248
    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v4

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 251
    .local v2, "session":Lcom/sonymobile/jms/conversation/Session;
    :try_start_1
    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "rcsFileTransferSessionId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/conversation/SessionRepository;->removeReferencesToRcsSession(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/conversation/Session;->removeFileEventListener(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;

    .line 254
    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/conversation/Session;->removeFileTransferSession(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v1    # "rcsFileTransferSessionId":Ljava/lang/String;
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 262
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    goto :goto_0

    .line 261
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v2    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public replaceRcsChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session;
    .locals 4
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "replacedRcsChatSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;,
            Lcom/sonymobile/jms/conversation/SessionNotFoundException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "The new rcs chat session \'"

    .line 4158
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' replaced rcs chat session \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4161
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v3

    .line 4163
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v0

    .line 4167
    .local v0, "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/conversation/SessionRepository;->removeSessionByRcsSessionId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v1

    .line 4170
    .local v1, "session":Lcom/sonymobile/jms/conversation/Session;
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/Session;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 4172
    monitor-exit v3

    return-object v1

    .end local v0    # "rcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .end local v1    # "session":Lcom/sonymobile/jms/conversation/Session;
    :catchall_0
    move-exception v2

    .line 4173
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method restartGroupChatSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 5
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 2584
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v1, 0x0

    .line 2587
    .local v1, "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    .line 2593
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->getGroupChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v1

    .line 2595
    .local v1, "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v1, :cond_0

    .line 2599
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/conversation/Session;->setRestartGcOnNextFailedRejoinAttempt(Z)V

    .line 2600
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 2613
    return-void

    .line 2596
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to restart imGroupConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2612
    .end local v1    # "newRcsChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_0
    move-exception v0

    .line 2603
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2610
    new-instance v2, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to restart imGroupConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2604
    :cond_1
    new-instance v2, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to restart imGroupConversation \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'). Max nr of active rcs chat sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public retrieveImConversations()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->retrieveImConversations()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/file/ImFileManager;->assertFileExists(Landroid/net/Uri;)V

    .line 2198
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/jms/file/ImFileManager;->assertFileIsNotTooBig(J)V

    .line 2200
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v2

    .line 2202
    :try_start_0
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2210
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2214
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->resendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 2217
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->updateImUserMessageTimestamp(Lcom/sonymobile/jms/message/AbstractImUserMessage;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2274
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getFileTransferSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v3, " of "

    invoke-virtual {v1, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v3}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfFileSessions()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v3, " rcs file transfer sessions allocated."

    invoke-virtual {v1, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2280
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2281
    return-void

    .line 2203
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setAuthorAndRecipient(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/AbstractImUserMessage;)V

    .line 2204
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2207
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2271
    :catch_0
    move-exception v0

    .line 2220
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_4
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2230
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxFileSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2238
    invoke-static {v0}, Lcom/sonymobile/jms/file/FileTooBigException;->isFileExceedsMaxSizeException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "Unsupported URI scheme"

    .line 2245
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "Error in retrieving file URI from msg ID"

    .line 2251
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "Error in retrieving file name from the URI"

    .line 2257
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "Error in retrieving file size form the URI"

    .line 2263
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2269
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' on imConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2280
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 2205
    :cond_1
    :try_start_5
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    goto/16 :goto_0

    .line 2211
    :cond_2
    new-instance v1, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;

    const-string/jumbo v3, "Resend file message is not supported for group sessions!"

    invoke-direct {v1, v3}, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2223
    .restart local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_3
    :try_start_6
    new-instance v1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' on imConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' right now. Max nr of active rcs chat sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2231
    :cond_4
    new-instance v1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' on imConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' right now. Max nr of active rcs file transfer sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfFileSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2239
    :cond_5
    new-instance v1, Lcom/sonymobile/jms/file/FileTooBigException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File exceeds max size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getFileMaxSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/FileTooBigException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2246
    :cond_6
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2252
    :cond_7
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2258
    :cond_8
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File name not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2264
    :cond_9
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File size not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2279
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public sendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 2130
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v2

    .line 2132
    :try_start_0
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2140
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2144
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->resendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V

    .line 2147
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->updateImUserMessageTimestamp(Lcom/sonymobile/jms/message/AbstractImUserMessage;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v3, " of "

    invoke-virtual {v1, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v3}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v3, " rcs chat sessions allocated."

    invoke-virtual {v1, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2170
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2171
    return-void

    .line 2133
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setAuthorAndRecipient(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/AbstractImUserMessage;)V

    .line 2134
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2137
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2160
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_4
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2158
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to send text message on imConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2170
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 2135
    :cond_1
    :try_start_5
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V

    goto :goto_0

    .line 2141
    :cond_2
    new-instance v1, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;

    const-string/jumbo v3, "Resend text message is not supported for group sessions!"

    invoke-direct {v1, v3}, Lcom/sonymobile/jms/conversation/ImIncompatibeConversationTypeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2151
    .restart local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_3
    :try_start_6
    new-instance v1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send text message on imConversation \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' right now. Max nr of active rcs chat sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2168
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 6
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 4057
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msg \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4059
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v2

    .line 4060
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertIsAllowedToDequeueFileMessageTo(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4062
    :try_start_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4065
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 4067
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->updateImUserMessageTimestamp(Lcom/sonymobile/jms/message/AbstractImUserMessage;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4119
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4120
    return-void

    .line 4063
    :cond_0
    :try_start_3
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4118
    :catch_0
    move-exception v0

    .line 4070
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_4
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4079
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxFileSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4086
    invoke-static {v0}, Lcom/sonymobile/jms/file/FileTooBigException;->isFileExceedsMaxSizeException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Unsupported URI scheme"

    .line 4092
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "Error in retrieving file URI from msg ID"

    .line 4098
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "Error in retrieving file name from the URI"

    .line 4104
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "Error in retrieving file size form the URI"

    .line 4110
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4116
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to send queued file message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' on imConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4119
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 4073
    .restart local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_1
    :try_start_5
    new-instance v1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send queued file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. Max nr of active rcs chat sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4080
    :cond_2
    new-instance v1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to send queued file message \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'. Max nr of active rcs file transfer sessions ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfFileSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4087
    :cond_3
    new-instance v1, Lcom/sonymobile/jms/file/FileTooBigException;

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to send queued file message \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'. File exceeds max size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getFileMaxSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/FileTooBigException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4093
    :cond_4
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send queued file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4099
    :cond_5
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send queued file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4105
    :cond_6
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send queued file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File name not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4111
    :cond_7
    new-instance v1, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send queued file message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. File size not possible to retreive from file uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 4018
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msg \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4020
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v2

    .line 4021
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertIsAllowedToDequeueTextMessageTo(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4023
    :try_start_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4026
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V

    .line 4028
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->updateImUserMessageTimestamp(Lcom/sonymobile/jms/message/AbstractImUserMessage;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4041
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4042
    return-void

    .line 4024
    :cond_0
    :try_start_3
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4040
    :catch_0
    move-exception v0

    .line 4031
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_4
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4038
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to send queued text message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4041
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 4032
    .restart local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_1
    :try_start_5
    new-instance v1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to send queud text message\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. Max nr of active rcs chat sessions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") has been reached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setComposingStatus(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;)V
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "state"    # Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3260
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v6

    .line 3261
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImTextConversationState(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v2

    .line 3263
    .local v2, "imConversationState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 3322
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ImConversation \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\' was found in unsupported state! ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3327
    :goto_0
    monitor-exit v6

    .line 3328
    return-void

    .line 3265
    :pswitch_0
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v5}, Lcom/sonymobile/jms/setting/ImSettingManager;->getManualAcceptModeForImTextConversation()Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    move-result-object v3

    .line 3267
    .local v3, "manualAcceptModeForImTextConversation":Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I

    invoke-virtual {v3}, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "Trying to accept chat invitation referenced by imConversation \'"

    .line 3270
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\'!"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 3273
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->acceptImConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 3327
    .end local v2    # "imConversationState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .end local v3    # "manualAcceptModeForImTextConversation":Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3280
    .restart local v2    # "imConversationState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v4

    .line 3282
    .local v4, "rcsChatSessionId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    sget-object v8, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    if-eq p2, v8, :cond_0

    :goto_1
    invoke-virtual {v7, v4, v5}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->setIsComposingStatus(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3291
    .end local v4    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :try_start_2
    const-string/jumbo v5, "No rcs chat session is connected to imConversation \'"

    .line 3285
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v7, "\' so no composing status to send!"

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .restart local v4    # "rcsChatSessionId":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    .line 3282
    goto :goto_1

    .line 3291
    .end local v4    # "rcsChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3289
    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v5, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ImConversation \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' - Unable to set composing state to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 3302
    .end local v1    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :pswitch_3
    sget-object v5, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    if-ne p2, v5, :cond_1

    .line 3305
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3308
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v5}, Lcom/sonymobile/jms/setting/ImSettingManager;->isImAlwaysOn()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3311
    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v7}, Lcom/sonymobile/jms/setting/ImSettingManager;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_0

    .line 3314
    :pswitch_4
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sonymobile/jms/permission/ImPermissionManager;->tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    goto/16 :goto_0

    .line 3303
    :cond_1
    monitor-exit v6

    return-void

    .line 3306
    :cond_2
    monitor-exit v6

    return-void

    .line 3309
    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 3263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 3267
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3311
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setMessageDeliveryStatusDisplayed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "imUserMsg"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 3192
    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    .line 3193
    .local v3, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v4

    .local v4, "msgId":Ljava/lang/String;
    const-string/jumbo v6, "ImConversationId \'"

    .line 3194
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' imContactNumber \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' msg \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v5, 0x0

    .line 3201
    .local v5, "rcsChatSessionId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->getChatSessionId()Ljava/lang/String;

    move-result-object v5

    .line 3202
    .local v5, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v6, v7, :cond_1

    .line 3213
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_2

    .line 3230
    :cond_0
    :goto_1
    if-nez v5, :cond_3

    :try_start_1
    const-string/jumbo v6, "ImConversationId \'"

    .line 3239
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' imContactNumber \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' msg \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 3243
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "displayed"

    invoke-virtual {v6, v7, v4, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3251
    :goto_2
    return-void

    .restart local v5    # "rcsChatSessionId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 3203
    .local v5, "rcsChatSessionId":Ljava/lang/String;
    goto :goto_0

    .line 3211
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const/4 v5, 0x0

    .line 3208
    .restart local v5    # "rcsChatSessionId":Ljava/lang/String;
    goto :goto_0

    .line 3211
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const/4 v5, 0x0

    .line 3210
    .restart local v5    # "rcsChatSessionId":Ljava/lang/String;
    goto :goto_0

    .line 3215
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/Session;->getChatSAndFSessionId()Ljava/lang/String;

    move-result-object v5

    .line 3216
    .local v5, "rcsChatSessionId":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getChatSessionState(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_2 .. :try_end_2} :catch_3

    if-eq v6, v7, :cond_0

    const/4 v5, 0x0

    .line 3218
    .local v5, "rcsChatSessionId":Ljava/lang/String;
    goto :goto_1

    .line 3226
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const/4 v5, 0x0

    .line 3223
    .restart local v5    # "rcsChatSessionId":Ljava/lang/String;
    goto :goto_1

    .line 3226
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const/4 v5, 0x0

    .line 3225
    .restart local v5    # "rcsChatSessionId":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    .end local v5    # "rcsChatSessionId":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v6, "ImConversationId \'"

    .line 3231
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' imContactNumber \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' msg \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' rcsChatSessionId \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 3236
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    const-string/jumbo v7, "displayed"

    invoke-virtual {v6, v5, v4, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->setMessageDeliveryStatusWithSessionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 3250
    :catch_4
    move-exception v2

    .line 3247
    .local v2, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v6, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ImConversationId \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' Failed to send delivery report to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' for msg \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method setRestartOnNextFailedRejoinAttempt(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 3
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 4124
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 4125
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v1

    .line 4126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/Session;->setRestartGcOnNextFailedRejoinAttempt(Z)V

    .line 4127
    monitor-exit v1

    .line 4128
    return-void

    .line 4127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startImGroupConversation(Ljava/util/Collection;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .locals 11
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 2058
    .local p1, "invitees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    monitor-enter v8

    .line 2059
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v7, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->assertIsAllowedToSendGroupTextMessageTo(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2062
    .local v5, "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2068
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->assertAvailableChatSession()V

    .line 2074
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v7, v5, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v6

    .line 2076
    .local v6, "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    if-eqz v6, :cond_1

    .line 2080
    invoke-direct {p0, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v3

    .line 2082
    .local v3, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    invoke-direct {p0, v3, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsChatSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;)V

    .line 2083
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v1

    .line 2084
    .local v1, "groupSession":Lcom/sonymobile/jms/conversation/Session;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 2100
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->getChatSessions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v9, " of "

    invoke-virtual {v7, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    iget-object v9, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v9}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v9, " rcs chat sessions allocated."

    invoke-virtual {v7, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_2
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2107
    :goto_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    .line 2062
    .end local v1    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    .end local v3    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .end local v6    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_0
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 2063
    .local v4, "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "Initiating rcs group chat session with recipient \'"

    .line 2064
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v9, "\'"

    invoke-virtual {v7, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_4
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2097
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v5    # "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :try_start_5
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;->isMaxChatSessionsAchievedException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2096
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v9, "Unable to start group conversation!"

    invoke-direct {v7, v9, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 2107
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v7

    .line 2108
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 2077
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :cond_1
    :try_start_6
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v9, "Unable to initiate a new rcs group chat session!"

    invoke-direct {v7, v9}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2084
    .restart local v1    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    .restart local v3    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 2085
    .restart local v4    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v1, v4}, Lcom/sonymobile/jms/conversation/Session;->addRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    :try_end_6
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2090
    .end local v1    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .end local v4    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v5    # "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .restart local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :cond_3
    :try_start_7
    new-instance v7, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unable to start group conversation right now. Max nr of active rcs chat sessions ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v10}, Lcom/sonymobile/jms/setting/ImSettingManager;->getMaxNrOfChatSessions()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") has been reached!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v0}, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2105
    .end local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v1    # "groupSession":Lcom/sonymobile/jms/conversation/Session;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .restart local v5    # "inviteeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "rcsGroupChatSession":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :catch_1
    move-exception v0

    .line 2103
    .restart local v0    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    goto :goto_2
.end method

.method public unregisterImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/jms/conversation/ImConversationEventListener;

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "("

    .line 1275
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationEventListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, ") \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1277
    return-void

    .line 1274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterImConversationObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "imConversationObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->unregisterImConversationObserver(Landroid/database/ContentObserver;)V

    .line 1359
    return-void
.end method

.method updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 14
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .param p3, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .local v6, "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    const/4 v1, 0x0

    .line 797
    .local v1, "currentRcsFileTransferSessionId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getAssuredSession(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/Session;

    move-result-object v10

    .line 799
    .local v10, "session":Lcom/sonymobile/jms/conversation/Session;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v8

    .line 800
    .local v8, "msgId":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertMsgIdNotNull(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v10, v8}, Lcom/sonymobile/jms/conversation/Session;->getFileTransferSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "currentRcsFileTransferSessionId":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "ImConversation \'"

    .line 812
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' remove reference to this rcs file transfer session \'"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\'."

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 815
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v11, v1}, Lcom/sonymobile/jms/conversation/SessionRepository;->removeReferencesToRcsSession(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v10, v1}, Lcom/sonymobile/jms/conversation/Session;->removeFileEventListener(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 818
    .local v6, "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    if-nez v6, :cond_1

    .end local v1    # "currentRcsFileTransferSessionId":Ljava/lang/String;
    .end local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .end local v8    # "msgId":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 848
    .local v8, "msgId":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "msgId":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertMsgIdNotNull(Ljava/lang/String;)V

    .line 850
    invoke-interface/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    .line 851
    .local v9, "rcsFileTransferSessionId":Ljava/lang/String;
    invoke-virtual {v10, v9, v8}, Lcom/sonymobile/jms/conversation/Session;->addFileTransferSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    if-eqz p3, :cond_2

    .line 855
    :goto_1
    new-instance v7, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;

    iget-object v11, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, v11, p1, v0}, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_4

    .line 857
    .local v7, "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :try_start_2
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->connect(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_2 .. :try_end_2} :catch_5

    .line 858
    :try_start_3
    invoke-virtual {v10, v8, v7}, Lcom/sonymobile/jms/conversation/Session;->setFileEventListener(Ljava/lang/String;Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;)V

    const-string/jumbo v11, "ImConversation \'"

    .line 859
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' store a reference to this rcs file transfer session \'"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\'."

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 862
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mSessionRepository:Lcom/sonymobile/jms/conversation/SessionRepository;

    invoke-virtual {v11, v10, v9}, Lcom/sonymobile/jms/conversation/SessionRepository;->addRcsSession(Lcom/sonymobile/jms/conversation/Session;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_3 .. :try_end_3} :catch_6

    .line 872
    return-void

    .end local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .end local v9    # "rcsFileTransferSessionId":Ljava/lang/String;
    .restart local v1    # "currentRcsFileTransferSessionId":Ljava/lang/String;
    .local v6, "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :cond_0
    :try_start_4
    const-string/jumbo v11, "ImConversation \'"

    .line 806
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' already holds rcs file transfer session \'"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 809
    return-void

    .local v6, "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :cond_1
    const-string/jumbo v11, "ImConversation \'"

    .line 820
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' disconnecting listener to rcs file transfer session \'"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 825
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getRcsFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;->disconnect(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    :try_end_4
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 842
    .end local v1    # "currentRcsFileTransferSessionId":Ljava/lang/String;
    .end local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .end local v8    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    const-string/jumbo v11, "ImConversation \'"

    .line 829
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' No need to disconnect current rcs file transfer session \'"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' since it no longer exist in stack!"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_0

    .line 842
    .end local v3    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_1
    move-exception v4

    .local v4, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const-string/jumbo v11, "ImConversation \'"

    .line 836
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' does not hold any rcs file transfer session!"

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_0

    .line 842
    .end local v4    # "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    :catch_2
    move-exception v2

    .line 840
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v11, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v12, "Unable to get the session id of rcs file transfer session"

    invoke-direct {v11, v12, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .line 853
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v8    # "msgId":Ljava/lang/String;
    .restart local v9    # "rcsFileTransferSessionId":Ljava/lang/String;
    :cond_2
    :try_start_5
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/ImConversationManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v11, v8}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object p3

    goto/16 :goto_1

    .line 871
    .end local v8    # "msgId":Ljava/lang/String;
    .end local v9    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 864
    .restart local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v11, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to get session id of rcs file transfer session to session \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\'!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v5

    .line 868
    .local v5, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :goto_3
    new-instance v11, Lcom/sonymobile/jms/conversation/RcsSessionException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to create rcs file transfer session listener for message id \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' to session \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\'!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v5}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .line 864
    .end local v5    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v8    # "msgId":Ljava/lang/String;
    .restart local v9    # "rcsFileTransferSessionId":Ljava/lang/String;
    :catch_5
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    goto :goto_3

    .end local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :catch_6
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    goto :goto_3

    .line 871
    .end local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    goto :goto_2

    .end local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    .restart local v6    # "fileEventListener":Lcom/sonymobile/jms/conversation/RcsFileTransferEventListener;
    goto :goto_2
.end method
