.class public Lcom/sonyericsson/conversations/util/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActivityEnabled(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAlbumInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 119
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v4, "com.sonyericsson.album"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 120
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v3

    .line 121
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v3
.end method

.method public static isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v2, 0x1

    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public static isSketchAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 36
    const-string/jumbo v4, "com.sonymobile.sketch"

    invoke-static {v4, p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 37
    .local v2, "packageAvailable":Z
    if-nez v2, :cond_0

    .line 38
    return v3

    .line 41
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v4

    if-nez v4, :cond_1

    .line 42
    new-instance v4, Lcom/sonyericsson/conversations/ui/IntentFactory;

    invoke-direct {v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;-><init>()V

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->injectFactory(Lcom/sonyericsson/conversations/ui/IntentFactory;)V

    .line 44
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 46
    const/high16 v5, 0x10000

    .line 45
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x1

    .line 48
    .local v0, "canHandleIntent":Z
    :goto_0
    if-eqz v0, :cond_3

    .end local v2    # "packageAvailable":Z
    :goto_1
    return v2

    .line 45
    .end local v0    # "canHandleIntent":Z
    .restart local v2    # "packageAvailable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "canHandleIntent":Z
    goto :goto_0

    :cond_3
    move v2, v3

    .line 48
    goto :goto_1
.end method

.method public static isSketchInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string/jumbo v0, "com.sonymobile.sketch"

    invoke-static {v0, p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isVCalendarEnabledPackageAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCalendarPicker()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
