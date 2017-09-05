.class public Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;
.super Ljava/lang/Object;
.source "PluginFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginFactory"

.field private static sIsDefaultStatusBarPlugin:Z

.field private static sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

.field private static sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

.field private static sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sIsDefaultStatusBarPlugin:Z

    .line 20
    sput-object v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    .line 22
    sput-object v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    if-nez v0, :cond_0

    .line 52
    const-class v0, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    .line 53
    const-string/jumbo v0, "@M_PluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getQuickSettingsPlugin mQuickSettingsPlugin= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    sget-object v3, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/mediatek/systemui/ext/DefaultQuickSettingsPlugin;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/ext/DefaultQuickSettingsPlugin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    .line 58
    const-string/jumbo v0, "@M_PluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getQuickSettingsPlugin get DefaultQuickSettingsPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sQuickSettingsPlugin:Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStatusBarPlmnPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    .line 79
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/mediatek/systemui/ext/DefaultStatusBarPlmnPlugin;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/ext/DefaultStatusBarPlmnPlugin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    .line 82
    :cond_0
    const-string/jumbo v0, "@M_PluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStatusBarPlmnPlugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlmnPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    if-nez v0, :cond_0

    .line 33
    const-class v0, Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sIsDefaultStatusBarPlugin:Z

    .line 35
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sIsDefaultStatusBarPlugin:Z

    .line 40
    :cond_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isDefaultStatusBarPlugin()Z
    .locals 2

    .prologue
    const-class v0, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-boolean v1, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->sIsDefaultStatusBarPlugin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
