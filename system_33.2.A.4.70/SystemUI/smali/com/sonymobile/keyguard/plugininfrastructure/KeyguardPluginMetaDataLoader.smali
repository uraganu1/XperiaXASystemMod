.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;
.super Ljava/lang/Object;
.source "KeyguardPluginMetaDataLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private getFactoryEntryFromResourceId(ILandroid/content/res/Resources;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;

    invoke-direct {v0, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->setFromResourceId(I)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->build()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    return-object v0
.end method

.method private getSuppliedFactories(Landroid/content/res/TypedArray;Landroid/content/res/Resources;)Ljava/util/LinkedList;
    .locals 6
    .param p1, "keyguardPlugins"    # Landroid/content/res/TypedArray;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 119
    .local v1, "factoryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 120
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 121
    .local v3, "resourceId":I
    if-nez v3, :cond_1

    .line 119
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromResourceId(ILandroid/content/res/Resources;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    .line 130
    .local v0, "factoryEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v0    # "factoryEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .end local v3    # "resourceId":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getAllKeyguardFactories()Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 79
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 80
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 81
    return-object v7

    .line 84
    :cond_0
    const-string/jumbo v6, "com.android.systemui"

    const/16 v7, 0x80

    .line 83
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 86
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 87
    const-string/jumbo v7, "com.sonymobile.keyguard.KEYGUARD_PLUGINS"

    const/4 v8, -0x1

    .line 86
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, "lockscreensDataId":I
    const-string/jumbo v6, "com.android.systemui"

    .line 89
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 91
    .local v3, "keyguardResources":Landroid/content/res/Resources;
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 92
    .local v2, "keyguardPlugins":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 94
    .local v1, "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getSuppliedFactories(Landroid/content/res/TypedArray;Landroid/content/res/Resources;)Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    .local v1, "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    :cond_1
    return-object v1

    .line 95
    .local v1, "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    :catchall_0
    move-exception v6

    .line 96
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    :cond_2
    throw v6
.end method

.method public getAvailableKeyguardFactories()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAllKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v0

    .line 60
    .local v0, "allFactories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .local v1, "availableFactories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 63
    .local v2, "entry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v2    # "entry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method public getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 8
    .param p1, "factoryClassName"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v4, 0x0

    .line 148
    .local v4, "matchingEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAllKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v3

    .line 149
    .local v3, "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 151
    .local v1, "entry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    iget-object v5, v1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    move-object v4, v1

    .line 161
    .end local v1    # "entry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "factories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    .end local v4    # "matchingEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    :cond_1
    :goto_0
    return-object v4

    .line 157
    .restart local v4    # "matchingEntry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getFactoryEntryFromClassName - NameNotFoundException while searching for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
