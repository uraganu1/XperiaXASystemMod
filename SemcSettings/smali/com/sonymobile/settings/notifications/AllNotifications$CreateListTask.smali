.class Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;
.super Landroid/os/AsyncTask;
.source "AllNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/notifications/AllNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/notifications/AllNotifications;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/notifications/AllNotifications;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/notifications/AllNotifications;Lcom/sonymobile/settings/notifications/AllNotifications$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/settings/notifications/AllNotifications;
    .param p2, "x1"    # Lcom/sonymobile/settings/notifications/AllNotifications$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;-><init>(Lcom/sonymobile/settings/notifications/AllNotifications;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "Params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 42
    iget-object v3, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v3, v3, Lcom/sonymobile/settings/notifications/AllNotifications;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v3, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v3, v3, Lcom/sonymobile/settings/notifications/AllNotifications;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    invoke-virtual {v3}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 45
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2200

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 47
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v3, v3, Lcom/sonymobile/settings/notifications/AllNotifications;->mRows:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    invoke-virtual {v4, v2, v1}, Lcom/sonymobile/settings/notifications/AllNotifications;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    invoke-virtual {v0}, Lcom/sonymobile/settings/notifications/AllNotifications;->refreshListSorted()V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v1, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v1, v1, Lcom/sonymobile/settings/notifications/AllNotifications;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/notifications/AllNotifications;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v0, v0, Lcom/sonymobile/settings/notifications/AllNotifications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/AllNotifications$CreateListTask;->this$0:Lcom/sonymobile/settings/notifications/AllNotifications;

    iget-object v0, v0, Lcom/sonymobile/settings/notifications/AllNotifications;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-void
.end method
