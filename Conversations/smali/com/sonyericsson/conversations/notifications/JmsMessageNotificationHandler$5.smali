.class Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;
.super Ljava/lang/Object;
.source "JmsMessageNotificationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

.field final synthetic val$imNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

.field final synthetic val$isSilent:Z

.field final synthetic val$type:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;
    .param p2, "val$imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p3, "val$type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p4, "val$isSilent"    # Z

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$imNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iput-object p3, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$type:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    iput-boolean p4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$isSilent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get4(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-set1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;J)J

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$imNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$type:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$isSilent:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;-><init>(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-wrap0(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get0(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get3(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-wrap1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    .line 140
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-wrap2(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$imNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$type:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 155
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$isSilent:Z

    .line 154
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$ImNotificationHolder;-><init>(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-wrap1(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->this$0:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->-get2(Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;)Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$imNotification:Lcom/sonyericsson/conversations/notifications/ImNotification;

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$type:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler$5;->val$isSilent:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0
.end method
