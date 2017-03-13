.class public Lcom/mediatek/systemui/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;

.field private static sSystemUIStatusBarExt:Lcom/mediatek/systemui/ext/IStatusBarPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/mediatek/systemui/PluginManager;->sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;

    .line 16
    sput-object v0, Lcom/mediatek/systemui/PluginManager;->sSystemUIStatusBarExt:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMobileIconExt(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IMobileIconExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/systemui/PluginManager;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/mediatek/systemui/PluginManager;->sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;

    if-nez v0, :cond_0

    .line 26
    const-class v0, Lcom/mediatek/systemui/ext/IMobileIconExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/ext/IMobileIconExt;

    sput-object v0, Lcom/mediatek/systemui/PluginManager;->sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;

    .line 27
    sget-object v0, Lcom/mediatek/systemui/PluginManager;->sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/mediatek/systemui/ext/DefaultMobileIconExt;

    invoke-direct {v0}, Lcom/mediatek/systemui/ext/DefaultMobileIconExt;-><init>()V

    sput-object v0, Lcom/mediatek/systemui/PluginManager;->sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;

    .line 31
    :cond_0
    sget-object v0, Lcom/mediatek/systemui/PluginManager;->sMobileIconExt:Lcom/mediatek/systemui/ext/IMobileIconExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSystemUIStatusBarExt(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/mediatek/systemui/PluginManager;

    monitor-enter v2

    .line 42
    :try_start_0
    sget-object v1, Lcom/mediatek/systemui/PluginManager;->sSystemUIStatusBarExt:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/systemui/PluginManager;->sSystemUIStatusBarExt:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 48
    :cond_0
    const-class v1, Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 49
    .local v0, "statusBarExt":Lcom/mediatek/systemui/ext/IStatusBarPlugin;
    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/mediatek/systemui/PluginManager;->sSystemUIStatusBarExt:Lcom/mediatek/systemui/ext/IStatusBarPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 53
    return-object v0

    .end local v0    # "statusBarExt":Lcom/mediatek/systemui/ext/IStatusBarPlugin;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
