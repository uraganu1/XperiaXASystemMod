.class public Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.super Landroid/widget/BaseAdapter;
.source "XssmWhitelistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;,
        Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;
    }
.end annotation


# instance fields
.field private mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field private mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field private mDisplayedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

.field private mWhitelistedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterApps"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .param p3, "adapterOthers"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .param p4, "whitelist"    # Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 47
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 117
    iput-object p3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 118
    iput-object p4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 121
    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initUserWhiteList()V

    .line 123
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initSystemWhiteList()V

    .line 114
    return-void
.end method

.method private getItemFromDisplayedItemList(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 259
    .local v0, "displayedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "displayedItemPackageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    return-object v0

    .line 257
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "displayedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .end local v1    # "displayedItemPackageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getItemFromWhitelistedItemList(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 248
    .local v1, "whitelistedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "whitelistedItemPackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    return-object v1

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "whitelistedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .end local v2    # "whitelistedItemPackageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getPackageDisplayListItem(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->getPackageDisplayListItem(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    move-result-object v0

    .line 202
    .local v0, "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->getPackageDisplayListItem(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    move-result-object v0

    .line 205
    :cond_0
    return-object v0

    .line 207
    .end local v0    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :cond_1
    return-object v1
.end method

.method private initSystemWhiteList()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "systemWhitelistedPkgs":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhiteListFromArray([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "systemWhitelistedPkgs":[Ljava/lang/String;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "XssmWhitelistAdapter"

    const-string/jumbo v3, "Unable to reach IDeviceIdleController"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initUserWhiteList()V
    .locals 7

    .prologue
    .line 72
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "allWhitelistedPkgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "systemWhitelistedPkgs":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 77
    .local v4, "userWhitelistedPkgs":[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhiteListFromArray([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "allWhitelistedPkgs":[Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "systemWhitelistedPkgs":[Ljava/lang/String;
    .end local v4    # "userWhitelistedPkgs":[Ljava/lang/String;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "XssmWhitelistAdapter"

    const-string/jumbo v6, "Unable to reach IDeviceIdleController"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initWhiteListFromArray([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 93
    const/4 v5, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, p1, v5

    .line 95
    .local v4, "pkg":Ljava/lang/String;
    const/16 v2, 0x2200

    .line 97
    .local v2, "flags":I
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x2200

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 98
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v7, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_0

    .line 99
    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    iget-object v7, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v7, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 100
    .local v3, "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    iget-object v7, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v7, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "XssmWhitelistAdapter"

    const-string/jumbo v8, "Failed to find the ApplicationInfo"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 108
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "flags":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 109
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    new-instance v6, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;

    iget-object v7, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-direct {v6, v7}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;-><init>(Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    :cond_2
    return-void
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 145
    if-nez p2, :cond_1

    .line 146
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    .line 147
    const-string/jumbo v6, "layout_inflater"

    .line 146
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 148
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040115

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 150
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;

    invoke-direct {v0, v7}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;)V

    .line 151
    .local v0, "holder":Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;
    const v5, 0x7f13022b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->linear:Landroid/widget/LinearLayout;

    .line 152
    const v5, 0x7f1300f1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 153
    const v5, 0x7f130042

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 154
    const v5, 0x7f1300b5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 155
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 161
    .local v2, "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "labelString":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->label:Landroid/widget/TextView;

    if-nez v3, :cond_0

    move-object v3, v4

    .end local v3    # "labelString":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    invoke-direct {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 171
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 178
    :goto_1
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->linear:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;

    invoke-direct {v6, p0, v4}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object p2

    .line 157
    .end local v0    # "holder":Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;
    .end local v2    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;
    goto :goto_0

    .line 173
    .restart local v2    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 175
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected reloadWhitelist()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->reloadWhitelist()V

    .line 271
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initUserWhiteList()V

    .line 272
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initSystemWhiteList()V

    .line 274
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method protected updateWhitelist(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->getItemFromWhitelistedItemList(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    move-result-object v2

    .line 215
    .local v2, "whitelistedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    if-eqz v2, :cond_2

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v3, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getUserWhitelist()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->notifyDataSetChanged()V

    .line 210
    return-void

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "XssmWhitelistAdapter"

    const-string/jumbo v4, "Unable to reach IDeviceIdleController"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v3, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->getItemFromDisplayedItemList(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    move-result-object v0

    .line 227
    .local v0, "displayedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    if-nez v0, :cond_3

    .line 228
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->getPackageDisplayListItem(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 232
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mDisplayedItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-direct {v4, v5}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;-><init>(Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 238
    .end local v0    # "displayedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :catch_1
    move-exception v1

    .line 239
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "XssmWhitelistAdapter"

    const-string/jumbo v4, "Unable to reach IDeviceIdleController"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "displayedItem":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getUserWhitelist()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mWhitelistedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
