.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;
.super Landroid/os/AsyncTask;
.source "PackageDisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    .param p2, "val$pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 13
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 76
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v6, "tmpLaunchableSortedUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v7, "tmpOthersSortedUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    iget-object v9, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x2200

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ai$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 84
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    iget-boolean v9, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v9, :cond_0

    .line 85
    iget-object v9, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 86
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 88
    .local v4, "packageName":Ljava/lang/String;
    new-instance v8, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    iget-object v9, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {v8, v9, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 89
    .local v8, "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    iget-object v9, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v9, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->isLaunchable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 92
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v8    # "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v12, :cond_3

    .line 104
    invoke-static {v6}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-wrap0(Ljava/util/ArrayList;)V

    .line 106
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v12, :cond_4

    .line 107
    invoke-static {v7}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-wrap0(Ljava/util/ArrayList;)V

    .line 110
    :cond_4
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected isLaunchable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "sortedUids":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;>;"
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-set1(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 119
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-set2(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 120
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-set0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Z)Z

    .line 123
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-get0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-get0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "sortedUids"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "sortedUids":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
