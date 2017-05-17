.class public interface abstract Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
.super Ljava/lang/Object;
.source "NotificationManagerApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_CLEAR_TYPE_EXTRA:Ljava/lang/String;

.field public static final UNREAD_MESSAGE_THREADS:Ljava/lang/String;

.field public static final UNREAD_MESSAGE_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    const-string/jumbo v1, ".type"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->ACTION_NOTIFICATION_CLEAR_TYPE_EXTRA:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "unReadMessageThreads"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_THREADS:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    const-string/jumbo v1, ".unReadMessageUri"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_URI:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
.end method

.method public abstract add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
.end method

.method public abstract add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
.end method

.method public abstract add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Landroid/os/Bundle;)V
.end method

.method public abstract removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
.end method

.method public abstract removeNotificationsForConversation(Ljava/lang/String;)V
.end method

.method public abstract removeSpecificNotification(Landroid/net/Uri;)V
.end method

.method public abstract removeSpecificNotification(Ljava/lang/String;)V
.end method

.method public abstract updateBadgeIcon()V
.end method
