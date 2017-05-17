.class public Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;
.super Landroid/app/IntentService;
.source "MarkAsReadNotificationActionService.java"


# static fields
.field public static final INTENT_ACTION_MARK_JOYN_AS_READ:Ljava/lang/String;

.field public static final INTENT_ACTION_MARK_XMS_AS_READ:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const-string/jumbo v1, ".intent_extra_message_uri"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->SERVICE_NAME:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mark_xms_as_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_XMS_AS_READ:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const-string/jumbo v1, ".mark_joyn_as_read"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_JOYN_AS_READ:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, ".intent_extra_message_im_conversation_id"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v1, ".intent_extra_message_message_id"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private markJoynAsRead(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    sget-object v4, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 110
    check-cast v1, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 112
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    sget-object v4, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "messageId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v3

    .line 125
    .local v3, "notificationManager":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    invoke-interface {v3, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 126
    invoke-interface {v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 109
    return-void

    .line 118
    .end local v3    # "notificationManager":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v4, "Failed to mark joyn message as read."

    invoke-static {v4, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private markXmsAsRead(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 95
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v1, "Message uri was null. Not able to mark message as read."

    .line 96
    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 98
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->markMessageAsRead(Landroid/net/Uri;Landroid/content/Context;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_XMS_AS_READ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->markXmsAsRead(Landroid/content/Intent;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_JOYN_AS_READ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->markJoynAsRead(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :cond_2
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v1, "Mark as read called without proper action on intent, need to define if SMS/MMS or Joyn message should be read."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
