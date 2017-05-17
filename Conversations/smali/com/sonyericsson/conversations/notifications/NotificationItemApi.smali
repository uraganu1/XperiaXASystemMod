.class interface abstract Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
.super Ljava/lang/Object;
.source "NotificationItemApi.java"


# virtual methods
.method public abstract contains(Landroid/net/Uri;)Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getBundle()Landroid/os/Bundle;
.end method

.method public abstract getContentIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getContentText()Ljava/lang/CharSequence;
.end method

.method public abstract getConversationIdKey()Ljava/lang/String;
.end method

.method public abstract getLargeIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getNotificationId()I
.end method

.method public abstract getSingleNotification(Z)Landroid/app/Notification;
.end method

.method public abstract getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
.end method

.method public abstract getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;
.end method

.method public abstract getWearableNotification()Landroid/app/Notification;
.end method

.method public abstract setBundle(Landroid/os/Bundle;)V
.end method

.method public abstract setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
.end method
