.class public Lcom/sonyericsson/conversations/notifications/MessageActionService;
.super Landroid/app/IntentService;
.source "MessageActionService.java"


# static fields
.field private static final DEBUG:Z

.field public static final INTENT_ACTION_FILE_TRANSFER_ACCEPT:Ljava/lang/String;

.field public static final INTENT_ACTION_FILE_TRANSFER_ALWAYS_ACCEPT:Ljava/lang/String;

.field public static final INTENT_EXTRA_IM_CONVERSATION_ID:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->DEBUG:Z

    .line 27
    const-class v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->PACKAGE_NAME:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MessageActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    const-string/jumbo v1, ".action_file_transfer_accept"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_ACTION_FILE_TRANSFER_ACCEPT:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MessageActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    const-string/jumbo v1, ".action_file_transfer_always_accept"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_ACTION_FILE_TRANSFER_ALWAYS_ACCEPT:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MessageActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".intent_extra_message_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MessageActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string/jumbo v1, ".intent_extra_im_conversation_id"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 21
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "MessageActionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 48
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v4

    .line 50
    .local v4, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    sget-boolean v7, Lcom/sonyericsson/conversations/notifications/MessageActionService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 54
    :cond_0
    if-nez v4, :cond_1

    .line 55
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 56
    const-string/jumbo v8, "Required managers was not available to complete action"

    .line 55
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 59
    .local v3, "extras":Landroid/os/Bundle;
    sget-object v7, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "messageId":Ljava/lang/String;
    sget-object v7, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 62
    .local v5, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 65
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Must provide a message id by parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 66
    sget-object v9, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String;

    .line 65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 67
    :cond_2
    if-nez v5, :cond_3

    .line 68
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Must provide a conversation id by parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 69
    sget-object v9, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 73
    :cond_3
    :try_start_0
    sget-object v7, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_ACTION_FILE_TRANSFER_ACCEPT:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 74
    invoke-interface {v4, v5, v6}, Lcom/sonymobile/jms/conversation/ImConversationApi;->acceptImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 75
    sget-boolean v7, Lcom/sonyericsson/conversations/notifications/MessageActionService;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 76
    const-string/jumbo v7, "FileMessage "

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, " accepted"

    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 47
    :cond_4
    :goto_0
    return-void

    .line 79
    :cond_5
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v7, "Failed to perform \'"

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' on conversation \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    .line 83
    const-string/jumbo v8, "\' for message id \'"

    .line 82
    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    .line 83
    const-string/jumbo v8, "\'"

    .line 82
    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    const-string/jumbo v7, "Failed to perform \'"

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' on conversation \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    .line 87
    const-string/jumbo v8, "\' for message id \'"

    .line 86
    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    .line 87
    const-string/jumbo v8, "\'"

    .line 86
    invoke-virtual {v7, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
