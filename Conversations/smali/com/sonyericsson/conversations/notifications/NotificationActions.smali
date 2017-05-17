.class public Lcom/sonyericsson/conversations/notifications/NotificationActions;
.super Ljava/lang/Object;
.source "NotificationActions.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;


# instance fields
.field private mIdsToCancel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIdsToShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifications:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToCancel:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToShow:Ljava/util/List;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mNotifications:Landroid/util/SparseArray;

    .line 14
    return-void
.end method


# virtual methods
.method public addNotificationIdToCancel(I)V
    .locals 2
    .param p1, "notificationId"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToCancel:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public addNotificationToShow(Landroid/app/Notification;I)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "notificationId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToShow:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mNotifications:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public getNotificationIdsToCancel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToCancel:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationIdsToShow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToShow:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationToShowFromId(I)Landroid/app/Notification;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mNotifications:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    return-object v0
.end method

.method public merge(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V
    .locals 4
    .param p1, "notificationActions"    # Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    .prologue
    .line 34
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/NotificationActions;->mIdsToCancel:Ljava/util/List;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationIdsToCancel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationIdsToShow()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 36
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationToShowFromId(I)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationActions;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_0

    .line 33
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
