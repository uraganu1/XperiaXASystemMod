.class public Lcom/sonyericsson/conversations/util/ComponentEnabler;
.super Ljava/lang/Object;
.source "ComponentEnabler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/sonyericsson/conversations/util/ComponentEnabler;

    monitor-enter v4

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 77
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 78
    .local v2, "status":Z
    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 82
    return v2

    .line 80
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "status":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getProviderEnabledState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const-class v3, Lcom/sonyericsson/conversations/util/ComponentEnabler;

    monitor-enter v3

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 88
    .local v1, "status":Z
    if-eqz v0, :cond_0

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    monitor-exit v3

    .line 91
    return v1

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "newEnabledStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const-class v6, Lcom/sonyericsson/conversations/util/ComponentEnabler;

    monitor-enter v6

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 29
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const/4 v2, 0x1

    .line 33
    .local v2, "oldEnabledStatus":Z
    :goto_0
    if-eq v2, p2, :cond_1

    .line 34
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    .line 37
    .local v1, "enabledState":I
    :goto_1
    const/4 v5, 0x1

    .line 36
    invoke-virtual {v3, v0, v1, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 39
    const-string/jumbo v5, "Conversations"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    .line 40
    :cond_0
    if-eqz p2, :cond_4

    const-string/jumbo v4, "enabled"

    .line 41
    .local v4, "state":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Component "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v6

    .line 27
    return-void

    .line 31
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "oldEnabledStatus":Z
    goto :goto_0

    .line 35
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "enabledState":I
    goto :goto_1

    .line 40
    :cond_4
    :try_start_1
    const-string/jumbo v4, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "state":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized setComponentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverComponentName"    # Ljava/lang/String;
    .param p2, "newEnabledStatus"    # Z

    .prologue
    const/4 v7, 0x1

    const-class v6, Lcom/sonyericsson/conversations/util/ComponentEnabler;

    monitor-enter v6

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 52
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const/4 v2, 0x1

    .line 56
    .local v2, "oldEnabledStatus":Z
    :goto_0
    if-eq v2, p2, :cond_1

    .line 57
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    .line 60
    .local v1, "enabledState":I
    :goto_1
    const/4 v5, 0x1

    .line 59
    invoke-virtual {v3, v0, v1, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 62
    const-string/jumbo v5, "Conversations"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    .line 63
    :cond_0
    if-eqz p2, :cond_4

    const-string/jumbo v4, "enabled"

    .line 64
    .local v4, "state":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Component "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v6

    .line 50
    return-void

    .line 54
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "oldEnabledStatus":Z
    goto :goto_0

    .line 58
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "enabledState":I
    goto :goto_1

    .line 63
    :cond_4
    :try_start_1
    const-string/jumbo v4, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "state":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
