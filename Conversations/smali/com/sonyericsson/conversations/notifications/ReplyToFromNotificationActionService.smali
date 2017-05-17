.class public Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;
.super Landroid/app/IntentService;
.source "ReplyToFromNotificationActionService.java"


# static fields
.field public static final EXTRA_VOICE_REPLY:Ljava/lang/String;

.field public static final INTENT_ACTION_WEARABLE_REPLYTO_JOYN:Ljava/lang/String;

.field public static final INTENT_ACTION_WEARABLE_REPLYTO_XMS:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

.field public static final INTENT_REPLY_MESSAGE_URI:Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".intent_action_wearable_replyto_xms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_ACTION_WEARABLE_REPLYTO_XMS:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".intent_action_wearable_replyto_joyn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_ACTION_WEARABLE_REPLYTO_JOYN:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".intent_reply_message_uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_REPLY_MESSAGE_URI:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".extra_voice_reply"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->EXTRA_VOICE_REPLY:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, ".intent_extra_message_im_conversation_id"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    const-string/jumbo v1, ".intent_extra_message_message_id"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->SERVICE_NAME:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private getAddress(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "addresses":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 134
    .local v4, "threadId":J
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 136
    .local v2, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 139
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .end local v1    # "addresses":[Ljava/lang/String;
    aput-object v0, v1, v6

    .line 146
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 144
    .restart local v1    # "addresses":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "Could not reply.Conversation/Participants are null/0"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAddress(Lcom/sonymobile/jms/conversation/ImConversationId;)[Ljava/lang/String;
    .locals 3
    .param p1, "conversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "addresses":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 152
    instance-of v1, p1, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    if-eqz v1, :cond_1

    .line 153
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "addresses":[Ljava/lang/String;
    check-cast p1, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .end local p1    # "conversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 156
    .restart local v0    # "addresses":[Ljava/lang/String;
    .restart local p1    # "conversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :cond_1
    const-string/jumbo v1, "Reply on group chat is not supported"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getReplyTextFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "replyText":Ljava/lang/String;
    invoke-static {p1}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 165
    .local v0, "remoteInputResults":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 166
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->EXTRA_VOICE_REPLY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 167
    .local v1, "replySeq":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .end local v1    # "replySeq":Ljava/lang/CharSequence;
    .end local v2    # "replyText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 167
    .restart local v1    # "replySeq":Ljava/lang/CharSequence;
    .restart local v2    # "replyText":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private replyForJoyn(Landroid/net/Uri;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "replyText"    # Ljava/lang/String;

    .prologue
    .line 112
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 113
    :cond_0
    const-string/jumbo v2, "Got reply but conversationId or messageId = null "

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 114
    return-void

    .line 116
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->getAddress(Lcom/sonymobile/jms/conversation/ImConversationId;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "addresses":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 118
    const-string/jumbo v2, "Address empty. No message sent"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 119
    return-void

    .line 121
    :cond_2
    invoke-direct {p0, p1, p4, v0}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->sendSmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 111
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v2, "Failed to mark joyn message as read."

    invoke-static {v2, v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private replyForXms(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "replyText"    # Ljava/lang/String;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string/jumbo v1, "Got reply but uri = null "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 99
    return-void

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->getAddress(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "addresses":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 103
    const-string/jumbo v1, "Address empty. No message sent"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 104
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->sendSmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->markMessageAsRead(Landroid/net/Uri;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private sendSmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    const-wide/16 v4, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getValidSubscriptionIdForMessage(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    move-object v2, p3

    move-object v3, p2

    .line 175
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 177
    .local v0, "sender":Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->prepareForSendMessage()Landroid/net/Uri;

    .line 178
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending SMS (for XMS) reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "sender":Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v7

    .line 181
    .local v7, "me":Lcom/google/android/mms/MmsException;
    const-string/jumbo v1, "Failed to send reply message!"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->getReplyTextFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "replyText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string/jumbo v3, "Message empty. No message sent"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 82
    return-void

    .line 84
    :cond_0
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_REPLY_MESSAGE_URI:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 85
    .local v1, "messageUri":Landroid/net/Uri;
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_ACTION_WEARABLE_REPLYTO_XMS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->replyForXms(Landroid/net/Uri;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_ACTION_WEARABLE_REPLYTO_JOYN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 90
    sget-object v4, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->replyForJoyn(Landroid/net/Uri;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not supported intent action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
