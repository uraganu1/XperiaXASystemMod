.class public abstract Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;
.super Ljava/lang/Object;
.source "BaseAggregateHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/notifications/NotificationItemApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    .line 21
    return-void
.end method

.method private addItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isSilent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->createNotificationItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v1

    .line 307
    .local v1, "newItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    if-eqz v1, :cond_0

    .line 308
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->createBundle(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 309
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setBundle(Landroid/os/Bundle;)V

    .line 311
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->removeItem(Landroid/net/Uri;)V

    .line 312
    if-eqz v1, :cond_1

    .line 314
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string/jumbo v2, "Could not create the new notification."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)V
    .locals 3
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "isSilent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->createNotificationItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v1

    .line 322
    .local v1, "newItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0, v2, v2, p1, p2}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->createBundle(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setBundle(Landroid/os/Bundle;)V

    .line 326
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->removeItem(Lcom/sonyericsson/conversations/notifications/ImNotification;)V

    .line 327
    if-eqz v1, :cond_1

    .line 329
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string/jumbo v2, "Could not create the new notification."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createBundle(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p4, "isSilent"    # Z

    .prologue
    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    const-string/jumbo v1, "conversation-id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 285
    const-string/jumbo v1, "im-notification"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 286
    const-string/jumbo v1, "is-silent"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    return-object v0
.end method

.method private mergeNotificationActionsAfterRemove(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V
    .locals 2
    .param p1, "actions"    # Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationIdsToCancel()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->merge(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 103
    :cond_0
    return-void
.end method

.method private removeItem(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 261
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 264
    .local v0, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->contains(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 260
    .end local v0    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    return-void
.end method

.method private removeItem(Lcom/sonyericsson/conversations/notifications/ImNotification;)V
    .locals 3
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;

    .prologue
    .line 271
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 272
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 274
    .local v0, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/ImNotification;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 270
    .end local v0    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    return-void
.end method

.method private restoreNotificationItem(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 291
    const-string/jumbo v4, "uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 293
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "conversation-id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 295
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    const-string/jumbo v4, "im-notification"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/ImNotification;

    .line 296
    .local v1, "imNotification":Lcom/sonyericsson/conversations/notifications/ImNotification;
    const-string/jumbo v4, "is-silent"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 298
    .local v2, "isSilent":Z
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0, v3, v0, v2}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->addItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    if-eqz v1, :cond_0

    .line 301
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)V

    goto :goto_0
.end method


# virtual methods
.method public convertToBundle()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 120
    .local v2, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    return-object v0
.end method

.method protected abstract createNotificationItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
.end method

.method protected abstract createNotificationItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
.end method

.method protected abstract getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
.end method

.method public getActionsToAddItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isSilent"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->addItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)V

    .line 36
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 1
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "isSilent"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)V

    .line 43
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActionsToRemoveAllNotifications()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 49
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 50
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    goto :goto_0

    .line 52
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 53
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 54
    return-object v0
.end method

.method public getActionsToRemoveNotificationsForConversation(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 4
    .param p1, "conversationIdKey"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 61
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 64
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getConversationIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 69
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mergeNotificationActionsAfterRemove(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 70
    return-object v0
.end method

.method public getActionsToRemoveSpecificNotification(Landroid/net/Uri;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 91
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActions;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 94
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->contains(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationActions;->addNotificationIdToCancel(I)V

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 99
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mergeNotificationActionsAfterRemove(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 100
    return-object v0
.end method

.method public getActionsToRemoveSpecificNotification(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 76
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 79
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationIdToCancel(I)V

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 84
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mergeNotificationActionsAfterRemove(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 85
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    return-object v0
.end method

.method protected getLastItemsInConversations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/notifications/NotificationItemApi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 200
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v2, "lastItemConversationKeyIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, "lastItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 203
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 204
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getConversationIdKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getConversationIdKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    return-object v3
.end method

.method protected getNumberOfConversations()I
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v0, "conversations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 157
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getConversationIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    return v3
.end method

.method protected getNumberOfItems()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getNumberOfItems(Ljava/lang/String;)I
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "itemCount":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 170
    .local v0, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getConversationIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    return v2
.end method

.method protected abstract getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
.end method

.method public restoreFromBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "originalBundle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->restoreNotificationItem(Landroid/os/Bundle;)V

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 126
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method
