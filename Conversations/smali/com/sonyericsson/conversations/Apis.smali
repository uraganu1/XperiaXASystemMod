.class public interface abstract Lcom/sonyericsson/conversations/Apis;
.super Ljava/lang/Object;
.source "Apis.java"

# interfaces
.implements Lcom/sonymobile/jms/ImApis;


# virtual methods
.method public abstract getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;
.end method

.method public abstract getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
.end method

.method public abstract getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;
.end method

.method public abstract getConversationPropertiesManager()Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;
.end method

.method public abstract getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;
.end method

.method public abstract getNetworkApi()Lcom/sonymobile/network/NetworkApi;
.end method

.method public abstract getNotificationManager()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
.end method

.method public abstract getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
.end method

.method public abstract getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;
.end method

.method public abstract getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;
.end method

.method public abstract getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
.end method

.method public abstract getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
.end method

.method public abstract getXmsManager()Lcom/sonyericsson/conversations/sms/XmsManager;
.end method

.method public abstract getXmsResendManager()Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;
.end method
