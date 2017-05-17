.class public Lcom/sonymobile/settings/notifications/DownloadedNotifications;
.super Lcom/sonymobile/settings/notifications/NotificationListFragment;
.source "DownloadedNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/notifications/DownloadedNotifications$1;,
        Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;
    }
.end annotation


# instance fields
.field private mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    .line 33
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->onPause()V

    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    invoke-virtual {v0}, Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;->cancel(Z)Z

    .line 31
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-super {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->onResume()V

    .line 21
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    new-instance v0, Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;-><init>(Lcom/sonymobile/settings/notifications/DownloadedNotifications;Lcom/sonymobile/settings/notifications/DownloadedNotifications$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    .line 23
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/DownloadedNotifications;->mCreateListTask:Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/notifications/DownloadedNotifications$CreateListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method
