.class public final Lcom/mediatek/contacts/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sDefaulthPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mediatek/contacts/ExtensionManager;

.field private static sPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    .line 49
    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sContext:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/ICtExtension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultCtExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultCtExtension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/IOp01Extension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultOp01Extension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultOp01Extension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/IRcsExtension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultRcsExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultRcsExtension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/IViewCustomExtension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/IAasExtension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultAasExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultAasExtension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/ISneExtension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultSneExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultSneExtension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/IRcsRichUiExtension;

    new-instance v2, Lcom/mediatek/contacts/ext/DefaultRcsRichUiExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultRcsRichUiExtension;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/contacts/ext/IContactsCommonPresenceExtension;

    .line 71
    new-instance v2, Lcom/mediatek/contacts/ext/DefaultContactsCommonPresenceExtension;

    invoke-direct {v2}, Lcom/mediatek/contacts/ext/DefaultContactsCommonPresenceExtension;-><init>()V

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createInstanceSynchronized()V
    .locals 2

    .prologue
    const-class v1, Lcom/mediatek/contacts/ExtensionManager;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/mediatek/contacts/ExtensionManager;

    invoke-direct {v0}, Lcom/mediatek/contacts/ExtensionManager;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 85
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static createPluginObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "defaultObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/contacts/ExtensionManager;->sContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "pluginObject":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .end local v0    # "pluginObject":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "pluginObject":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCtExtension()Lcom/mediatek/contacts/ext/ICtExtension;
    .locals 2

    .prologue
    .line 133
    const-class v1, Lcom/mediatek/contacts/ext/ICtExtension;

    invoke-static {v1}, Lcom/mediatek/contacts/ExtensionManager;->getExtension(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ICtExtension;

    .line 134
    .local v0, "extension":Lcom/mediatek/contacts/ext/ICtExtension;
    return-object v0
.end method

.method private static getExtension(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TI;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "iclass":Ljava/lang/Class;, "Ljava/lang/Class<TI;>;"
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    monitor-enter p0

    .line 101
    :try_start_0
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 105
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sDefaulthPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/contacts/ExtensionManager;->createPluginObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "instance":Ljava/lang/Object;, "TI;"
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 108
    sget-object v1, Lcom/mediatek/contacts/ExtensionManager;->sPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "instance":Ljava/lang/Object;, "TI;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getInstance()Lcom/mediatek/contacts/ExtensionManager;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->createInstanceSynchronized()V

    .line 82
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    return-object v0
.end method
