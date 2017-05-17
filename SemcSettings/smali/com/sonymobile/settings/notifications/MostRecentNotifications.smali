.class public Lcom/sonymobile/settings/notifications/MostRecentNotifications;
.super Lcom/sonymobile/settings/notifications/NotificationListFragment;
.source "MostRecentNotifications.java"


# static fields
.field private static final NOTIFICATION_DATA_EXTRA:Ljava/lang/String; = "notification_data"

.field private static final NOTIFICATION_SETTINGS_REQUEST:Ljava/lang/String; = "com.sonymobile.settings.notification.request"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/notifications/MostRecentNotifications;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/notifications/MostRecentNotifications;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->displayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "recent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/notifications/NotificationSettings;

    .line 91
    .local v1, "context":Lcom/sonymobile/settings/notifications/NotificationSettings;
    iget-object v7, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-virtual {v1}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 94
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "appPackage":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 97
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 98
    iget-object v7, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v4}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 105
    .end local v0    # "appPackage":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {v7}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->clear()V

    .line 106
    const/4 v2, 0x1

    .line 107
    .local v2, "first":Z
    iget-object v7, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    .line 108
    .local v6, "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    iput-boolean v2, v6, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->first:Z

    .line 109
    iget-object v7, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {v7, v6}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 110
    const/4 v2, 0x0

    .line 111
    goto :goto_1

    .line 112
    .end local v6    # "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {p0, v7}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method private sendOrderedBroadcast(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.sonymobile.settings.notification.request"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;-><init>(Lcom/sonymobile/settings/notifications/MostRecentNotifications;)V

    const/4 v6, -0x1

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/FragmentActivity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method private updateRecentList()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mLoadingContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 52
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->sendOrderedBroadcast(Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mLoadingContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->onResume()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->updateRecentList()V

    .line 41
    return-void
.end method
