.class public Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;
.super Ljava/lang/Object;
.source "SwitchDefaultAppReminderNotificationHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SWITCH_DEFAULT_SMS_APP_REMINDER:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v0

    .line 24
    iput v0, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mId:I

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getContentIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 77
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "clickIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mId:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 79
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 56
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mContext:Landroid/content/Context;

    .line 57
    const v4, 0x7f0b0234

    .line 56
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "contentTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mContext:Landroid/content/Context;

    .line 60
    const v4, 0x7f0b0235

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 66
    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    .line 73
    return-object v2
.end method


# virtual methods
.method public getActionsToAddItem()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 36
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mId:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 37
    return-object v0
.end method

.method public getActionsToAddItem(Landroid/os/Bundle;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionsToRemoveNotification()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 50
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget v1, p0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;->mId:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 51
    return-object v0
.end method
