.class public Lcom/sonymobile/rcs/service/api/client/ClientApiUtils;
.super Ljava/lang/Object;
.source "ClientApiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceStarted(Landroid/content/Context;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v5, "activity"

    .line 75
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    .line 77
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 92
    :cond_0
    return v7

    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 81
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 82
    .local v2, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 83
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.sonymobile.rcs.service.RcsCoreService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iget v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-nez v5, :cond_3

    .line 87
    return v7

    .line 85
    :cond_3
    const/4 v5, 0x1

    return v5
.end method
