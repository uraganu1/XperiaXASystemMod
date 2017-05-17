.class public interface abstract Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
.super Ljava/lang/Object;
.source "AggregateHandlerApi.java"


# virtual methods
.method public abstract convertToBundle()Landroid/os/Bundle;
.end method

.method public abstract getActionsToAddItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public abstract getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public abstract getActionsToRemoveAllNotifications()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public abstract getActionsToRemoveNotificationsForConversation(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public abstract getActionsToRemoveSpecificNotification(Landroid/net/Uri;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public abstract getActionsToRemoveSpecificNotification(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public abstract restoreFromBundle(Landroid/os/Bundle;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
