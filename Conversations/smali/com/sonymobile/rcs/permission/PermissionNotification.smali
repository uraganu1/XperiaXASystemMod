.class public Lcom/sonymobile/rcs/permission/PermissionNotification;
.super Ljava/lang/Object;
.source "PermissionNotification.java"


# static fields
.field public static final PERMISSION_REMINDER_ID:I

.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "PermissionNotification"

    .line 24
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionNotification;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v0, "rcs_reminder_notification"

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/permission/PermissionNotification;->PERMISSION_REMINDER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v6, 0x0

    .line 47
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f020001

    .line 50
    .local v1, "icon":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 59
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .end local v1    # "icon":I
    :cond_0
    const v1, 0x7f020002

    .line 48
    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v1, "notification"

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 70
    .local v0, "notifyManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/sonymobile/rcs/permission/PermissionNotification;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    sget v1, Lcom/sonymobile/rcs/permission/PermissionNotification;->PERMISSION_REMINDER_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    return-void

    .line 71
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/permission/PermissionNotification;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Cancelling any previous notification"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createPermissionNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 35
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionNotification;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    const/high16 v3, 0x8000000

    .line 38
    invoke-static {p0, v5, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 40
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    invoke-static {p0, v2}, Lcom/sonymobile/rcs/permission/PermissionNotification;->buildNotification(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .local v0, "notification":Landroid/app/Notification;
    const-string/jumbo v3, "notification"

    .line 41
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 43
    .local v1, "notifyManager":Landroid/app/NotificationManager;
    sget v3, Lcom/sonymobile/rcs/permission/PermissionNotification;->PERMISSION_REMINDER_ID:I

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 44
    return-void

    .line 36
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "notifyManager":Landroid/app/NotificationManager;
    .end local v2    # "pendIntent":Landroid/app/PendingIntent;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionNotification;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Missing permission in RCS stack.. Inform user with notification"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
