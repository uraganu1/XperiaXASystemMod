.class public Lcom/sonymobile/settings/stamina/appusage/PackageList;
.super Landroid/preference/PreferenceFragment;
.source "PackageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/PackageList$1;
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

.field private mLoaded:Z

.field private mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRootView:Landroid/view/View;

.field private mShowUnusedApps:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/appusage/PackageList;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/settings/stamina/appusage/PackageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->updateList(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    .line 58
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/PackageList$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 42
    return-void
.end method

.method private startLoading()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iput-boolean v4, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    .line 109
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;-><init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V

    .line 119
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 112
    :goto_1
    invoke-direct {v1, v2, v3, v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    .line 121
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0, v4}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private updateList(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    const v3, 0x7f130213

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 127
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 128
    const-string/jumbo v3, "layout_inflater"

    .line 127
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    .line 130
    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getUnusedPackages()Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    :goto_0
    invoke-direct {v3, v0, v2}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    .line 132
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string/jumbo v2, "listview"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 124
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void

    .line 131
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getConsumingPackages()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "what_to_show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    .line 76
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;

    .line 78
    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;-><init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    .line 86
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerUnusedAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 92
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V

    .line 71
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerConsumingAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 150
    const v0, 0x7f04010b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    .line 152
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p3}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->updateList(Landroid/os/Bundle;)V

    .line 157
    :cond_0
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 96
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    const v2, 0x7f130213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 144
    .local v0, "listView":Landroid/widget/ListView;
    const-string/jumbo v1, "listview"

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    return-void
.end method
