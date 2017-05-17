.class Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;
.super Ljava/lang/Object;
.source "JmsMessageNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImNotificationHolder"
.end annotation


# instance fields
.field mIsSilent:Z

.field mNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

.field mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 0
    .param p1, "notification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 59
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;->mIsSilent:Z

    .line 56
    return-void
.end method
