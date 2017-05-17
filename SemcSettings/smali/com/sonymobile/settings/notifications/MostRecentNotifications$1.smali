.class Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;
.super Landroid/content/BroadcastReceiver;
.source "MostRecentNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/notifications/MostRecentNotifications;->sendOrderedBroadcast(Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/notifications/MostRecentNotifications;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/notifications/MostRecentNotifications;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;->this$0:Lcom/sonymobile/settings/notifications/MostRecentNotifications;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 66
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "notification_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const-string v3, "notification_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, "recentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;->this$0:Lcom/sonymobile/settings/notifications/MostRecentNotifications;

    invoke-virtual {v3}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 72
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 77
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "recentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 74
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "recentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;->this$0:Lcom/sonymobile/settings/notifications/MostRecentNotifications;

    # invokes: Lcom/sonymobile/settings/notifications/MostRecentNotifications;->displayList(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->access$000(Lcom/sonymobile/settings/notifications/MostRecentNotifications;Ljava/util/ArrayList;)V

    .line 76
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "recentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/notifications/MostRecentNotifications$1;->this$0:Lcom/sonymobile/settings/notifications/MostRecentNotifications;

    iget-object v3, v3, Lcom/sonymobile/settings/notifications/MostRecentNotifications;->mLoadingContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
