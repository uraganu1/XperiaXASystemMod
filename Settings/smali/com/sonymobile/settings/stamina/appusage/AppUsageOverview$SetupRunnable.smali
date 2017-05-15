.class Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;
.super Ljava/lang/Object;
.source "AppUsageOverview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V

    return-void
.end method

.method private getItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 110
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-static {v5}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-get1(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getUnusedPackages()Ljava/util/ArrayList;

    move-result-object v3

    .line 111
    .local v3, "unusedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 112
    .local v4, "unusedAppsCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/UnusedAppsHeaderItem;

    invoke-direct {v5, v4}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/UnusedAppsHeaderItem;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    if-le v4, v6, :cond_0

    .line 118
    invoke-virtual {v3, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllUnusedAppsItem;

    invoke-direct {v5}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllUnusedAppsItem;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-static {v5}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-get1(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getConsumingPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    .local v0, "consumingApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, "consumingAppsCount":I
    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;

    invoke-direct {v5, v1}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    if-le v1, v6, :cond_1

    .line 130
    invoke-virtual {v0, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;

    invoke-direct {v5}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_1
    return-object v2

    .line 121
    .end local v0    # "consumingApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    .end local v1    # "consumingAppsCount":I
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 133
    .restart local v0    # "consumingApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    .restart local v1    # "consumingAppsCount":I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-get3(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-get3(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f130213

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 100
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 101
    const-string/jumbo v3, "layout_inflater"

    .line 100
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 102
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    new-instance v3, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-set0(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    .line 103
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-get0(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-get2(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->-set1(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Z)Z

    .line 97
    return-void
.end method
