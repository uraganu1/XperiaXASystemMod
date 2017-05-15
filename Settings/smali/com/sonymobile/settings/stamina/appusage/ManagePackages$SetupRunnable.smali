.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;
.super Ljava/lang/Object;
.source "ManagePackages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get3(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get3(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f130213

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 145
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 146
    const-string/jumbo v4, "layout_inflater"

    .line 145
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 147
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get1(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getIgnorePackages()Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    new-instance v4, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-direct {v4, v0, v2}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-set1(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    .line 150
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get2(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get0(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-wrap1(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    .line 154
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-set0(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Z)Z

    .line 142
    return-void
.end method
