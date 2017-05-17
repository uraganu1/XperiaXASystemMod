.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
.super Ljava/lang/Object;
.source "RuntimeSkinningHelper.java"


# static fields
.field private static final IMPLEMENTATIONS:[Lcom/sonymobile/runtimeskinning/SkinGlue;


# instance fields
.field private mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lcom/sonymobile/runtimeskinning/SkinGlue;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonymobile/runtimeskinning/SkinGlueV21;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->IMPLEMENTATIONS:[Lcom/sonymobile/runtimeskinning/SkinGlue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/sonymobile/runtimeskinning/SkinGlue;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    .line 46
    return-void
.end method


# virtual methods
.method public getCurrentSkin(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v1

    .line 89
    invoke-interface {v1, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->myUserId(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/sonymobile/runtimeskinning/SkinGlue;->getSkin(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final declared-synchronized getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 5

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-nez v0, :cond_3

    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinGlue;->DISABLED:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 134
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->IMPLEMENTATIONS:[Lcom/sonymobile/runtimeskinning/SkinGlue;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 135
    invoke-interface {v3, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isApplicable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 136
    :cond_2
    iput-object v3, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_1
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 68
    invoke-interface {v0, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->myUserId(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    return v0
.end method

.method public isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 123
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isSkinConfigurationChanged(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
