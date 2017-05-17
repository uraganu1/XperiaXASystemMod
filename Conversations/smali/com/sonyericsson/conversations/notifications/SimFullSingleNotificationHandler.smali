.class public Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;
.super Ljava/lang/Object;
.source "SimFullSingleNotificationHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    if-eq p2, v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported by SimFullSingleNotificationHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 32
    return-void
.end method

.method private getContentIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    if-ne v2, v3, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "simCardSlotIndex":I
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->addSimCardSlotIndexToIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v3

    .line 99
    const/high16 v4, 0x10000000

    .line 98
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 96
    .end local v1    # "simCardSlotIndex":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "simCardSlotIndex":I
    goto :goto_0
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 62
    const v3, 0x7f020061

    .line 63
    .local v3, "icon":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v2, "contentTitle":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    .line 65
    const v5, 0x7f0b004b

    .line 64
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "contentText":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f080000

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->resIdToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method private getTitle()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 81
    const v0, 0x7f0b004f

    .line 82
    .local v0, "titleResId":I
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    sget-object v2, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    if-ne v1, v2, :cond_1

    .line 84
    const v0, 0x7f0b0050

    .line 89
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :cond_1
    const v0, 0x7f0b0051

    goto :goto_0
.end method


# virtual methods
.method public getActionsToAddItem()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 44
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 45
    return-object v0
.end method

.method public getActionsToAddItem(Landroid/os/Bundle;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->getActionsToAddItem()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    return-object v0
.end method

.method public getActionsToRemoveNotification()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 56
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 57
    return-object v0
.end method
