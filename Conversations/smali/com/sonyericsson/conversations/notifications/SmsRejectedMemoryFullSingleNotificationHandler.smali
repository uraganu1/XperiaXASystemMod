.class public Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;
.super Ljava/lang/Object;
.source "SmsRejectedMemoryFullSingleNotificationHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;


# static fields
.field private static final TYPE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SMS_REJECTED_MEMORY_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 25
    sput-object v0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->TYPE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private getContentIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->TYPE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v2

    .line 76
    const/high16 v3, 0x10000000

    .line 75
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 54
    const v3, 0x7f020062

    .line 55
    .local v3, "icon":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    .line 56
    const v5, 0x7f0b004c

    .line 55
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .local v2, "contentTitle":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    .line 58
    const v5, 0x7f0b004d

    .line 57
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "contentText":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f080000

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->resIdToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getActionsToAddItem()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 37
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->getNotification()Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->TYPE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 38
    return-object v0
.end method

.method public getActionsToAddItem(Landroid/os/Bundle;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->getActionsToAddItem()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    return-object v0
.end method

.method public getActionsToRemoveNotification()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 49
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;->TYPE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 50
    return-object v0
.end method
