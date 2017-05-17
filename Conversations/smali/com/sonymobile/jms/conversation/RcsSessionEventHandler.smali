.class public Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
.super Ljava/lang/Object;
.source "RcsSessionEventHandler.java"

# interfaces
.implements Lcom/sonymobile/jms/intent/RcsIntentServiceApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/RcsSessionEventHandler$1;
    }
.end annotation


# instance fields
.field private mApiConnectionStatusChanger:Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;

.field private mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

.field private mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

.field private mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

.field private mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mRcsIntentProcessor:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

.field private mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/ApiStatusReader;)V
    .locals 1
    .param p1, "imPersistedMessageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p2, "imContactManager"    # Lcom/sonymobile/jms/contact/ImContactManager;
    .param p3, "imPermissionManager"    # Lcom/sonymobile/jms/permission/ImPermissionManager;
    .param p4, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;
    .param p5, "rcsMessageEventHandler"    # Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    .param p6, "imApiStatusReader"    # Lcom/sonymobile/jms/ApiStatusReader;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 74
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 75
    iput-object p3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    .line 76
    iput-object p4, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 77
    iput-object p5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    .line 78
    new-instance v0, Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    invoke-direct {v0, p0, p6}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;-><init>(Lcom/sonymobile/jms/intent/RcsIntentServiceApi;Lcom/sonymobile/jms/ApiStatusReader;)V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsIntentProcessor:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    .line 79
    return-void
.end method

.method private asImGroupConversationState(Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;
    .locals 2
    .param p1, "imConversationState"    # Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .prologue
    .line 121
    sget-object v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unsupported imConversationState -> ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->FAILED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0

    .line 123
    :pswitch_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->STARTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0

    .line 125
    :pswitch_1
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0

    .line 127
    :pswitch_2
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0

    .line 129
    :pswitch_3
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_TIME_OUT:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0

    .line 131
    :pswitch_4
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private asImInvitationStatus(ZZI)Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1
    .param p1, "autoAccept"    # Z
    .param p2, "autoReject"    # Z
    .param p3, "rcsAutoRejectReason"    # I

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 101
    if-nez p2, :cond_1

    .line 116
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 102
    :cond_1
    sparse-switch p3, :sswitch_data_0

    .line 113
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 104
    :sswitch_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 106
    :sswitch_1
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 108
    :sswitch_2
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 111
    :sswitch_3
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x24 -> :sswitch_3
        0x25 -> :sswitch_2
        0x26 -> :sswitch_3
    .end sparse-switch
.end method

.method private getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1
    .param p1, "rcsChatId"    # Ljava/lang/String;
    .param p2, "isGroupChat"    # Z
    .param p3, "rcsNumber"    # Ljava/lang/String;

    .prologue
    .line 626
    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v0

    goto :goto_0
.end method

.method private onRcsChatSessionAborted(Lcom/sonymobile/jms/conversation/ImConversationId;I)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "rcsSessionAbortReason"    # I

    .prologue
    const/4 v0, 0x0

    .line 457
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    packed-switch p2, :pswitch_data_0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImConversation \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' - Unknown rcs chat session abort reason detected -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :goto_0
    const-string/jumbo v1, "ImConversation \'"

    .line 477
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs chat session abort reason ("

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, ") -> chat session state "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    .line 481
    return-void

    .line 459
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 462
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_1
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_TIMEOUT:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 465
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_2
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 468
    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    :pswitch_3
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .local v0, "chatSessionState":Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onRcsChatSessionError(Lcom/sonymobile/jms/conversation/ImConversationId;I)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "rcsErrorCode"    # I

    .prologue
    .line 517
    sparse-switch p2, :sswitch_data_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImConversation \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' - Unable to handle rcsErrorCode -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 561
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 526
    :sswitch_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->handleRcsChatSessionRejoinFailed(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    goto :goto_0

    .line 532
    :sswitch_2
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->handleRcsChatSessionInitiationError(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 538
    :sswitch_3
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->handleRcsChatSessionInitiationError(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 544
    :sswitch_4
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->handleRcsChatSessionInitiationError(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 550
    :sswitch_5
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->handleRcsChatSessionInitiationError(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 517
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_1
        0x72 -> :sswitch_0
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private onRcsChatSessionReceivedTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "instantMessage"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImMessageReceived(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 452
    return-void
.end method

.method private onRcsFileTransferSessionAborted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;I)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "rcsSessionAbortReason"    # I

    .prologue
    .line 485
    packed-switch p3, :pswitch_data_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImConversation \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' - Unknown rcs file transfer session abort reason detected -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 491
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    goto :goto_0

    .line 497
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 499
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_TIMEOUT:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 505
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onRcsFileTransferSessionError(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;I)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "rcsErrorCode"    # I

    .prologue
    .line 565
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 566
    .local v0, "imFileMessageError":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    sparse-switch p3, :sswitch_data_0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImConversation \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' - Unable to handle rcsErrorCode -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    const-string/jumbo v1, "ImConversation \'"

    .line 613
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " file message error "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 616
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 620
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-static {v1, v2}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueFileMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V

    .line 622
    return-void

    .line 568
    :sswitch_1
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 571
    :sswitch_2
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 574
    :sswitch_3
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 577
    :sswitch_4
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 580
    :sswitch_5
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 585
    :sswitch_6
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 588
    :sswitch_7
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 591
    :sswitch_8
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 594
    :sswitch_9
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 597
    :sswitch_a
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 600
    :sswitch_b
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 603
    :sswitch_c
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    goto :goto_0

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x79 -> :sswitch_1
        0x7a -> :sswitch_2
        0x7b -> :sswitch_3
        0x7c -> :sswitch_4
        0x7d -> :sswitch_5
        0x7f -> :sswitch_0
        0x80 -> :sswitch_6
        0x81 -> :sswitch_7
        0x82 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    .line 89
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mApiConnectionStatusChanger:Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;

    .line 90
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    .line 91
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 92
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    .line 93
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 94
    iput-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsIntentProcessor:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    .line 95
    return-void
.end method

.method public init(Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;Lcom/sonymobile/jms/conversation/ImConversationManager;)V
    .locals 0
    .param p1, "apiConnectionStatusChanger"    # Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;
    .param p2, "imConversationActionManager"    # Lcom/sonymobile/jms/conversation/ImConversationManager;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mApiConnectionStatusChanger:Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;

    .line 84
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    .line 85
    return-void
.end method

.method public onImApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 1
    .param p1, "imApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    const-string/jumbo v0, "imApiConnectionStatus "

    .line 673
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 674
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->onImApisConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    .line 675
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onImApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    .line 676
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsIntentProcessor:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    invoke-virtual {v0}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessPushedRcsIntents()V

    .line 677
    return-void
.end method

.method public onImsConnectionStatusChanged(ZI)V
    .locals 2
    .param p1, "imsConnectionStatus"    # Z
    .param p2, "rcsImsDisconnectReason"    # I

    .prologue
    const-string/jumbo v0, "isImsConnected "

    .line 681
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, " rcsImsDisconnectReason "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 683
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mApiConnectionStatusChanger:Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;

    invoke-interface {v0}, Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;->onPossibleApiConnectionStatusChange()V

    .line 684
    return-void
.end method

.method public onImsProvisioningChange()V
    .locals 1

    .prologue
    const-string/jumbo v0, "enter"

    .line 694
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->onImsProvisioningChange()V

    .line 696
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/contact/ImContactManager;->onImsProvisioningChange()V

    .line 697
    return-void
.end method

.method public onRcsApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 1
    .param p1, "rcsApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    const-string/jumbo v0, "rcsApiConnectionStatus "

    .line 667
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 668
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onRcsApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    .line 669
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsIntentProcessor:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    invoke-virtual {v0}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessPushedRcsIntents()V

    .line 670
    return-void
.end method

.method public onRcsChatSessionAborted(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "rcsErrorCode"    # I
    .param p4, "isGroupChat"    # Z
    .param p5, "rcsNumber"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v1, "rcsChatSessionId \'"

    .line 965
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsChatId \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsErrorCode "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " isGroupChat "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " rcsNumber \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 968
    invoke-direct {p0, p2, p4, p5}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 969
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-direct {p0, v0, p3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionAborted(Lcom/sonymobile/jms/conversation/ImConversationId;I)V

    .line 970
    return-void
.end method

.method onRcsChatSessionComposingEvent(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "rcsContactNumber"    # Ljava/lang/String;
    .param p3, "isTyping"    # Z

    .prologue
    .line 141
    if-nez p3, :cond_0

    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_NOT_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    .local v1, "imComposingEvent":Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    :goto_0
    const-string/jumbo v5, "ImConversation \'"

    .line 143
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' rcsContactNumber \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' imComposingEvent "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 146
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const-class v6, Lcom/sonymobile/jms/conversation/ImComposeEventListener;

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 148
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImComposeEventListener;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v2

    .line 152
    .local v2, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    return-void

    .line 141
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "imComposingEvent":Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    .end local v2    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImComposeEventListener;>;"
    :cond_0
    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    goto :goto_0

    .line 149
    .restart local v1    # "imComposingEvent":Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    .restart local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImComposeEventListener;>;"
    :cond_1
    return-void

    .line 152
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/conversation/ImComposeEventListener;

    .line 153
    .local v3, "listener":Lcom/sonymobile/jms/conversation/ImComposeEventListener;
    invoke-interface {v3, p1, v2, v1}, Lcom/sonymobile/jms/conversation/ImComposeEventListener;->onComposingEventUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;)V

    goto :goto_1
.end method

.method onRcsChatSessionConferenceEvent(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "rcsContactNumber"    # Ljava/lang/String;
    .param p3, "rcsContactDisplayName"    # Ljava/lang/String;
    .param p4, "rcsConferenceEvent"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 159
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' rcsContactNumber \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' rcsContactDisplayName \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' rcsConferenceEvent \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 162
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const-class v6, Lcom/sonymobile/jms/conversation/ImConferenceEventListener;

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 164
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConferenceEventListener;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v2

    .line 175
    .local v2, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    const-string/jumbo v5, "pending"

    .line 180
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "connected"

    .line 182
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "disconnected"

    .line 184
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "departed"

    .line 186
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "booted"

    .line 188
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "failed"

    .line 190
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "busy"

    .line 192
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "declined"

    .line 194
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "unknown"

    .line 196
    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ImConversation \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' - Unsupported rcs conference event detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->UNKNOWN:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .line 205
    .local v0, "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    .line 208
    return-void

    .line 165
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_0
    return-void

    .line 176
    .restart local v2    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v5, v2, p3}, Lcom/sonymobile/jms/contact/ImContactManager;->storeDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_2
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->PENDING:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 183
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_3
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->CONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 185
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_4
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DISCONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 187
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_5
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DEPARTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 189
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_6
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->BOOTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 191
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_7
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->FAILED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 193
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_8
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->BUSY:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 195
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_9
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DECLINED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 197
    .end local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    :cond_a
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->UNKNOWN:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .restart local v0    # "conferenceState":Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    goto :goto_1

    .line 205
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/conversation/ImConferenceEventListener;

    .line 206
    .local v3, "listener":Lcom/sonymobile/jms/conversation/ImConferenceEventListener;
    invoke-interface {v3, p1, v2, v0}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener;->onConferenceEventUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;)V

    goto :goto_2
.end method

.method onRcsChatSessionDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "rcsMsgDeliveryStatus"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 435
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

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v1

    .line 439
    .local v1, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v2, p1, v1, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v2, "ImConversation \'"

    .line 442
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' - Unable to get message with id \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' from storage manager, message \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method public onRcsChatSessionImError(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "rcsErrorCode"    # I
    .param p4, "isGroupChat"    # Z
    .param p5, "rcsNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "rcsChatSessionId \'"

    .line 975
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsChatId \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsErrorCode "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " isGroupChat "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " rcsNumber \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 978
    invoke-direct {p0, p2, p4, p5}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 979
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-direct {p0, v0, p3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionError(Lcom/sonymobile/jms/conversation/ImConversationId;I)V

    .line 980
    return-void
.end method

.method public onRcsChatSessionReceivedTextMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 3
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "isGroupChat"    # Z
    .param p4, "rcsNumber"    # Ljava/lang/String;
    .param p5, "rcsInstantMessage"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "rcsChatSessionId \'"

    .line 945
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsChatId \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsIsGroupChat "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " rcsNumber \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msg \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {p5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 948
    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 949
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-direct {p0, v0, p5}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionReceivedTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 950
    return-void
.end method

.method public onRcsChatSessionReplaced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "replacedRcsChatSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "rcsChatSessionId \'"

    .line 856
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' replacedRcsChatSessionId \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 859
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->replaceRcsChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 871
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Received a replacement rcs chat session \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' that is not present in stack!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 870
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionNotPresentInStackException;
    :catch_1
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/SessionNotFoundException;
    const-string/jumbo v2, "The replaced rcs chat session "

    .line 867
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' was not found in session repository so nothing to replace!"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_0
.end method

.method onRcsChatSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "imConversationState"    # Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .prologue
    const-string/jumbo v5, "ImConversation \'"

    .line 212
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' imConversationState "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 214
    sget-object v5, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {p2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ImConversation \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' - Unable to handle rcs chat session state changed -> ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 245
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v5

    if-nez v5, :cond_2

    .line 254
    :cond_0
    return-void

    .line 220
    :pswitch_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueTextMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->setRestartOnNextFailedRejoinAttempt(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 223
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    .line 247
    .local v1, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    invoke-direct {p0, p2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->asImGroupConversationState(Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    move-result-object v2

    .line 248
    .local v2, "imGroupConversationState":Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;
    iget-object v5, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const-class v6, Lcom/sonymobile/jms/conversation/ImGroupConversationStateChangeListener;

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImGroupConversationStateChangeListener;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/conversation/ImGroupConversationStateChangeListener;

    .line 251
    .local v3, "listener":Lcom/sonymobile/jms/conversation/ImGroupConversationStateChangeListener;
    invoke-interface {v3, v1, v2}, Lcom/sonymobile/jms/conversation/ImGroupConversationStateChangeListener;->onImConversationStateChange(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;)V

    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onRcsChatSessionTerminatedByRemote(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "isGroupChat"    # Z
    .param p4, "rcsNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "rcsChatSessionId \'"

    .line 955
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsChatId \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcsIsGroupChat "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " rcsNumber \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 958
    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 959
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsChatSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    .line 960
    return-void
.end method

.method onRcsFileTransferAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 993
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 995
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onImFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 997
    return-void
.end method

.method public onRcsFileTransferError(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "rcsErrorCode"    # I
    .param p4, "isGroupTransfer"    # Z
    .param p5, "rcsMessageId"    # Ljava/lang/String;
    .param p6, "rcsNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "rcsFileTransferSessionId \'"

    .line 923
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsChatId \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsErrorCode "

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, " isGroupTransfer "

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, " rcsMessageId \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsNumber \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 927
    invoke-direct {p0, p2, p4, p6}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 930
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v2

    .line 932
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-direct {p0, v1, v2, p3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionError(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;I)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v2    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    :goto_0
    return-void

    .line 938
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "ImConversation \'"

    .line 934
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' - Unable to get message with id \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' from storage manager, message \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method public onRcsFileTransferInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BLjava/lang/String;JJ)V
    .locals 24
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatSessionId"    # Ljava/lang/String;
    .param p3, "rcsChatId"    # Ljava/lang/String;
    .param p4, "isGroupFileTransfer"    # Z
    .param p5, "autoAcceptByStack"    # Z
    .param p6, "autoRejectByStack"    # Z
    .param p7, "rcsAutoRejectByStackReason"    # I
    .param p8, "inviterRcsNumber"    # Ljava/lang/String;
    .param p9, "inviterRcsDisplayName"    # Ljava/lang/String;
    .param p10, "filename"    # Ljava/lang/String;
    .param p11, "fileSize"    # J
    .param p13, "mimeType"    # Ljava/lang/String;
    .param p14, "thumbnail"    # [B
    .param p15, "msgId"    # Ljava/lang/String;
    .param p16, "localTimestamp"    # J
    .param p18, "sentTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "inviterRcsNumber \'"

    .line 807
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' inviterRcsDisplayName \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' autoAcceptByStack "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " autoRejectByStack "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " rcsAutoRejectReason \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " isGroupFileTransfer "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " filename \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' fileSize "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " mimeType \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p13

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' hasThumbnail "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    if-nez p14, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " msgId "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p15

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " localTimestamp "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-wide/from16 v0, p16

    invoke-virtual {v5, v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " sentTimestamp "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-wide/from16 v0, p18

    invoke-virtual {v5, v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(J)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, " rcsChatId \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' rcsFileTransferSessionId \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' rcsChatSessionId \'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 818
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v10

    .line 819
    .local v10, "inviter":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p9

    invoke-virtual {v5, v10, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->storeDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 822
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->asImInvitationStatus(ZZI)Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v17

    .line 827
    .local v17, "invitationStatus":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-wide/from16 v6, p16

    move-wide/from16 v8, p18

    move-object/from16 v11, p15

    move-object/from16 v12, p13

    move-wide/from16 v13, p11

    move-object/from16 v15, p10

    invoke-virtual/range {v5 .. v15}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asRemoteMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v16

    .line 830
    .local v16, "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onRcsFileTransferSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-result-object v22

    .local v22, "rcsSessionInvitationInfo":Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    const/16 v23, 0x0

    .line 836
    .local v23, "thumbnailBitmap":Landroid/graphics/Bitmap;
    if-nez p14, :cond_1

    .line 840
    .end local v23    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v19, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;Lcom/sonymobile/jms/message/ImFileMessage;Landroid/graphics/Bitmap;)V

    .line 843
    .local v19, "invitation":Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const-class v6, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v21

    .line 848
    .local v21, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 851
    return-void

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "inviter":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v16    # "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v17    # "invitationStatus":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .end local v19    # "invitation":Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;
    .end local v21    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    .end local v22    # "rcsSessionInvitationInfo":Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    :cond_0
    const/4 v5, 0x1

    .line 807
    goto/16 :goto_0

    .restart local v10    # "inviter":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v16    # "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    .restart local v17    # "invitationStatus":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .restart local v22    # "rcsSessionInvitationInfo":Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    .restart local v23    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v5, 0x0

    .line 837
    move-object/from16 v0, p14

    array-length v6, v0

    move-object/from16 v0, p14

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v23

    .local v23, "thumbnailBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 848
    .end local v23    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v19    # "invitation":Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;
    .restart local v21    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;

    .line 849
    .local v20, "listener":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;->onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V

    goto :goto_2
.end method

.method onRcsFileTransferPaused(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 425
    return-void
.end method

.method onRcsFileTransferProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 418
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onFileMessageProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V

    .line 419
    return-void
.end method

.method onRcsFileTransferRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 1001
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1003
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onImFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 1005
    return-void
.end method

.method onRcsFileTransferResumed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 431
    return-void
.end method

.method onRcsFileTransferResumed(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 8
    .param p1, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    .prologue
    const/4 v3, 0x0

    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const/4 v5, 0x0

    .line 291
    .local v5, "msgId":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 293
    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "msgId":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertMsgIdNotNull(Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v4

    .local v4, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    const-string/jumbo v6, "ImConversation \'"

    .line 296
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' msg \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 298
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v6, v3, p1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 300
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v7, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v6, v3, v4, v7}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 315
    .end local v3    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v4    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v5    # "msgId":Ljava/lang/String;
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v6, "ImConversation - Unable to handle file transfer started"

    .line 303
    invoke-static {v6, v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 314
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v2

    .local v2, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v6, "ImConversation \'"

    .line 306
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' - Unable to get message with id \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' from storage manager, message \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0

    .line 314
    .end local v2    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_2
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ImConversation \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' - Unable to get message id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onRcsFileTransferSessionAborted(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "rcsSessionAbortReason"    # I
    .param p4, "isGroupTransfer"    # Z
    .param p5, "rcsMessageId"    # Ljava/lang/String;
    .param p6, "rcsNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "rcsFileTransferSessionId \'"

    .line 877
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsChatId \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsSessionAbortReason "

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, " isGroupTransfer "

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, " rcsMessageId \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsNumber \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 882
    invoke-direct {p0, p2, p4, p6}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 885
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v2

    .line 887
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-direct {p0, v1, v2, p3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionAborted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;I)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v2    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "ImConversation \'"

    .line 889
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' - Unable to get message with id \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' from storage manager, message \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "imConversationState"    # Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 355
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

    const-string/jumbo v2, "\' file session state "

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 358
    sget-object v1, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {p3}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 375
    :goto_0
    sget-object v1, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    invoke-virtual {p3}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImConversation \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' - Unable to handle rcs file message \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' file session state changed -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 412
    :goto_1
    :pswitch_0
    return-void

    .line 360
    :sswitch_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 364
    :sswitch_1
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 368
    :sswitch_2
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0

    .line 392
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager;->removeRcsFileTransferSession(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v2, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-static {v1, v2}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueFileMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V

    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImConversationId \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' - Unable to remove rcs file transfer session connected to msg \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_2
    .end sparse-switch

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onRcsFileTransferSessionTerminatedByRemote(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rcsFileTransferSessionId"    # Ljava/lang/String;
    .param p2, "rcsChatId"    # Ljava/lang/String;
    .param p3, "isGroupTransfer"    # Z
    .param p4, "rcsMessageId"    # Ljava/lang/String;
    .param p5, "rcsNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "rcsFileTransferSessionId \'"

    .line 900
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsChatId \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' isGroupTransfer "

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, " rcsMessageId \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsNumber \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 904
    invoke-direct {p0, p2, p3, p5}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->getImConversationId(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 907
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v2

    .line 909
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    sget-object v3, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v2    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "ImConversation \'"

    .line 912
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' - Unable to get message with id \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' from storage manager, message \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method onRcsFileTransferStarted(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 8
    .param p1, "rcsFileTransferSession"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    .prologue
    const/4 v3, 0x0

    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const/4 v5, 0x0

    .line 260
    .local v5, "msgId":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v6, p1}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationIdFromRcsSession(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 262
    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {p1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->getMessageID()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "msgId":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertMsgIdNotNull(Ljava/lang/String;)V

    .line 264
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v4

    .local v4, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    const-string/jumbo v6, "ImConversation \'"

    .line 265
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' msg \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 267
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v6, v3, p1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager;->updateRcsFileTransferSessionAndEnsureItsListener(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 269
    iget-object v6, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v7, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v6, v3, v4, v7}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    .end local v3    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v4    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v5    # "msgId":Ljava/lang/String;
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v6, "ImConversation - Unable to handle file transfer started"

    .line 272
    invoke-static {v6, v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 283
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v2

    .local v2, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v6, "ImConversation \'"

    .line 275
    invoke-static {v6}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' - Unable to get message with id \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' from storage manager, message \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0

    .line 283
    .end local v2    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_2
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ImConversation \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' - Unable to get message id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method onRcsFileTransfered(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Landroid/net/Uri;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "receivedFileUri"    # Landroid/net/Uri;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 339
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msg \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' file session state "

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_TRANSFERED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 342
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageReceived(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Landroid/net/Uri;)V

    .line 348
    :goto_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_TRANSFERED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    .line 350
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    goto :goto_0
.end method

.method onRcsFileUploaded(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Ljava/lang/String;)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "rcsChatSessionId"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 319
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' msg \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " rcsChatSessionId \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 321
    if-nez p3, :cond_1

    .line 333
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_UPLOADED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferSessionStateChange(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;)V

    .line 335
    return-void

    .line 321
    :cond_1
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-ne v1, v2, :cond_0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/sonymobile/jms/conversation/ImConversationManager;->ensureListenerToRcsChatSessionInImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImConversationId \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' - Unable to ensure rcs chat session linked to msg \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onRcsGroupChatInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 25
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "replacedRcsChatSessionId"    # Ljava/lang/String;
    .param p3, "autoAcceptByStack"    # Z
    .param p4, "autoRejectByStack"    # Z
    .param p5, "rcsAutoRejectByStackReason"    # I
    .param p6, "inviterRcsNumber"    # Ljava/lang/String;
    .param p7, "inviterRcsDisplayName"    # Ljava/lang/String;
    .param p8, "subject"    # Ljava/lang/String;
    .param p9, "isRestart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "inviterRcsNumber \'"

    .line 762
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' inviterRcsDisplayName \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' autoAcceptByStack "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " autoRejectByStack "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " rcsAutoRejectReason \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " rcsChatSessionId \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' replacedRcsChatSessionId \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' isRestart "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v9

    .line 770
    .local v9, "inviter":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p7

    invoke-virtual {v4, v9, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->storeDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->asImInvitationStatus(ZZI)Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v8

    .line 776
    .local v8, "invitationStatus":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const/4 v7, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onRcsChatSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-result-object v23

    .line 782
    .local v23, "rcsSessionInvitationInfo":Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string/jumbo v18, "text/plain"

    const/16 v17, 0x0

    move-object/from16 v16, v9

    move-object/from16 v19, p8

    invoke-virtual/range {v11 .. v19}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v24

    .line 787
    .local v24, "subjectMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    new-instance v20, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;Lcom/sonymobile/jms/message/ImTextMessage;)V

    .line 790
    .local v20, "invitation":Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;
    if-eqz p9, :cond_1

    .line 797
    :cond_0
    return-void

    .line 791
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const-class v5, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v22

    .line 793
    .local v22, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;

    .line 794
    .local v21, "listener":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;->onImConversationInvitationReceived(Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;)V

    goto :goto_0
.end method

.method onRcsGroupMessageDeliveryStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rcsGroupChatId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "rcsMsgDeliveryStatus"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "rcsGroupChatId \'"

    .line 650
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' msg \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsMsgDeliveryStatus \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 652
    invoke-static {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    .line 655
    .local v1, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v2

    .line 656
    .local v2, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v3, v1, v2, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "ImGroupConversation \'"

    .line 659
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' - Unable to get message with id \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' from storage manager, message \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method public onRcsOne2OneChatSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 25
    .param p1, "rcsChatSessionId"    # Ljava/lang/String;
    .param p2, "replacedRcsChatSessionId"    # Ljava/lang/String;
    .param p3, "autoAcceptByStack"    # Z
    .param p4, "autoRejectByStack"    # Z
    .param p5, "rcsAutoRejectByStackReason"    # I
    .param p6, "inviterRcsNumber"    # Ljava/lang/String;
    .param p7, "inviterRcsDisplayName"    # Ljava/lang/String;
    .param p8, "firstMessage"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "inviterRcsNumber \'"

    .line 705
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' inviterRcsDisplayName \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' autoAcceptByStack "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " autoRejectByStack "

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Z)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " rcsAutoRejectReason \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " rcsChatSessionId \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' replacedRcsChatSessionId \'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v9

    .line 713
    .local v9, "inviter":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p7

    invoke-virtual {v4, v9, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->storeDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->asImInvitationStatus(ZZI)Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v8

    .line 718
    .local v8, "invitationStatus":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sonymobile/jms/conversation/ImConversationManager;->onRcsChatSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;

    move-result-object v24

    .line 722
    .local v24, "rcsSessionInvitationInfo":Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    invoke-static/range {p8 .. p8}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertInstantMessageNotNull(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 723
    invoke-virtual/range {p8 .. p8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v17

    .line 724
    .local v17, "msgId":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertMsgIdNotNull(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p8 .. p8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 726
    .local v12, "localTimestamp":J
    invoke-virtual/range {p8 .. p8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 727
    .local v14, "sentTimeStamp":J
    invoke-virtual/range {p8 .. p8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v19

    .line 728
    .local v19, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    const-string/jumbo v18, "text/plain"

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v19}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v21

    .line 731
    .local v21, "invitationMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->wasUnprocessedSession()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    new-instance v20, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;-><init>(Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;Lcom/sonymobile/jms/message/ImTextMessage;)V

    .line 749
    .local v20, "invitation":Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    const-class v5, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->getImConversationEventListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v23

    .line 751
    .local v23, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 754
    return-void

    .line 740
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v20    # "invitation":Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;
    .end local v23    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 743
    return-void

    .line 751
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v20    # "invitation":Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;
    .restart local v23    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;

    .line 752
    .local v22, "listener":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;->onImConversationInvitationReceived(Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;)V

    goto :goto_0
.end method

.method onRcsOne2OneMessageDeliveryStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rcsContactNumber"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "rcsMsgDeliveryStatus"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "rcsContactNumber \'"

    .line 632
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' msg \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' rcsMsgDeliveryStatus \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 634
    invoke-static {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    .line 637
    .local v1, "imOne2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v2

    .line 638
    .local v2, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v3, v1, v2, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .end local v2    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "ImOne2OneConversationId \'"

    .line 641
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' - Unable to get message with id \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\' from storage manager, message \'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method

.method public onUndeliveredMessageTimeout(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImContactNumber \'"

    .line 985
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' msgId \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 987
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-static {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageDeliveryTimeOut(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public pushRcsIntentForProcessing(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rcsIntent"    # Landroid/content/Intent;

    .prologue
    const-string/jumbo v0, "action \'"

    .line 688
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 689
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->mRcsIntentProcessor:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->pushRcsIntentForProcessing(Landroid/content/Intent;)V

    .line 690
    return-void
.end method
