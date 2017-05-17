.class public interface abstract Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.super Ljava/lang/Object;
.source "NotificationActionsApi.java"


# virtual methods
.method public abstract addNotificationIdToCancel(I)V
.end method

.method public abstract addNotificationToShow(Landroid/app/Notification;I)V
.end method

.method public abstract getNotificationIdsToCancel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationIdsToShow()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationToShowFromId(I)Landroid/app/Notification;
.end method

.method public abstract merge(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V
.end method
