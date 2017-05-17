.class public Lcom/sonymobile/settings/notifications/AllNotifications;
.super Lcom/sonymobile/settings/notifications/NotificationListFragment;
.source "AllNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/notifications/AllNotifications$1;,
        Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;
    }
.end annotation


# instance fields
.field private mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    .line 32
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->onPause()V

    .line 28
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    invoke-virtual {v0}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->cancel(Z)Z

    .line 30
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-super {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->onResume()V

    .line 20
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/notifications/AllNotifications;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    new-instance v0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;-><init>(Lcom/sonymobile/settings/notifications/AllNotifications;Lcom/sonymobile/settings/notifications/AllNotifications$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    .line 22
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method
