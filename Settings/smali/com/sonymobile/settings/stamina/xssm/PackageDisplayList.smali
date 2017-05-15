.class public Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
.super Landroid/app/Fragment;
.source "PackageDisplayList.java"


# static fields
.field private static mNotSelectableWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExecuteWhenLoaded:Ljava/lang/Runnable;

.field private mLoaded:Z

.field private mSortedLaunchablePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedOthersPackages:Ljava/util/ArrayList;
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
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedLaunchablePackages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedOthersPackages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "uids"    # Ljava/util/ArrayList;

    .prologue
    invoke-static {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->sort(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private checkLoaded()V
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Uid list not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    return-void
.end method

.method private static sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    return-void
.end method


# virtual methods
.method public executeWhenLoaded(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 145
    :cond_0
    return-void

    .line 148
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    .line 139
    return-void
.end method

.method public getApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->checkLoaded()V

    .line 153
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedLaunchablePackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOthers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->checkLoaded()V

    .line 158
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedOthersPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->setRetainInstance(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 55
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2200

    .line 59
    .local v2, "flags":I
    const-string/jumbo v6, "deviceidle"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 58
    invoke-static {v6}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 61
    .local v0, "deviceIdleService":Landroid/os/IDeviceIdleController;
    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "systemWhitelistedPkgs":[Ljava/lang/String;
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v5, v6

    .line 63
    .local v3, "pkg":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mNotSelectableWhitelist:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "systemWhitelistedPkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "stamina_uidlist"

    const-string/jumbo v8, "Unable to reach IDeviceIdleController"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v6, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;

    invoke-direct {v6, p0, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Landroid/content/pm/PackageManager;)V

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method
