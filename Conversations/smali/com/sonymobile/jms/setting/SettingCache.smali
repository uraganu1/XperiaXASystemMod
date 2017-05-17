.class public Lcom/sonymobile/jms/setting/SettingCache;
.super Ljava/lang/Object;
.source "SettingCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;
    }
.end annotation


# instance fields
.field private mSettingsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/jms/setting/ImSettingManager$Setting;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->values()[Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    .line 29
    return-void
.end method

.method private handleSettingChanged(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V
    .locals 3
    .param p1, "setting"    # Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 47
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    monitor-exit v2

    .line 51
    return-void

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;->onSettingChanged(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 33
    iput-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    .line 34
    iget-object v0, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    iput-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    .line 36
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    return-void

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .local v1, "setting":Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/jms/setting/SettingCache;->updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;)Ljava/lang/Object;
    .locals 4
    .param p1, "setting"    # Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sonymobile/jms/setting/ImSettingManager$Setting;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v2, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 75
    monitor-exit v2

    return-object v0

    .line 73
    :cond_0
    monitor-exit v2

    return-object v3

    .line 75
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateCachedSetting(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V
    .locals 3
    .param p1, "setting"    # Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    monitor-enter v2

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "oldValue":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 58
    :cond_0
    if-nez v0, :cond_4

    .line 61
    :cond_1
    if-nez v0, :cond_5

    .line 65
    :cond_2
    :goto_0
    monitor-exit v2

    .line 66
    return-void

    .line 56
    :cond_3
    if-eqz p2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v0    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    .restart local v0    # "oldValue":Ljava/lang/Object;
    :cond_4
    if-nez p2, :cond_1

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/jms/setting/SettingCache;->handleSettingChanged(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_5
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/sonymobile/jms/setting/SettingCache;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/jms/setting/SettingCache;->handleSettingChanged(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
