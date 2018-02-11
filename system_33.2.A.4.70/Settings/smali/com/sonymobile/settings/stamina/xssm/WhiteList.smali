.class public Lcom/sonymobile/settings/stamina/xssm/WhiteList;
.super Landroid/app/Fragment;
.source "WhiteList.java"


# instance fields
.field private mNotSelectableWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mUserWhitelist:Ljava/util/HashSet;

    .line 24
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 44
    const-string/jumbo v8, "deviceidle"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 43
    invoke-static {v8}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    .line 46
    .local v1, "deviceIdleService":Landroid/os/IDeviceIdleController;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "allWhitelistedPkgs":[Ljava/lang/String;
    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "systemWhitelistedPkgs":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 51
    .local v6, "userWhitelistedPkgs":[Ljava/lang/String;
    array-length v9, v6

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v6, v8

    .line 52
    .local v4, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mUserWhitelist:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 54
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    array-length v8, v5

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v4, v5, v7

    .line 55
    .restart local v4    # "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "allWhitelistedPkgs":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "systemWhitelistedPkgs":[Ljava/lang/String;
    .end local v6    # "userWhitelistedPkgs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "stamina_whitelist"

    const-string/jumbo v8, "Unable to reach IDeviceIdleController"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    .line 78
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mUserWhitelist:Ljava/util/HashSet;

    .line 76
    return-void
.end method

.method public getNotSelectableWhitelist()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUserWhitelist()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mUserWhitelist:Ljava/util/HashSet;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->setRetainInstance(Z)V

    .line 38
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->init()V

    .line 35
    return-void
.end method

.method protected reloadWhitelist()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mUserWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 73
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->init()V

    .line 70
    return-void
.end method
