.class public Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;
.super Ljava/lang/Object;
.source "GsmaClientConnector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deactivateOtherRcsClients(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-static {p0}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    .line 244
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->getRcsClients(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v2

    .line 245
    .local v2, "clients":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    return-void

    .line 245
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "client":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v6, "com.sonymobile.rcs"

    .line 246
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 249
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->getRcsSettingsActivityIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 252
    .local v1, "clientActivityIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 253
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.sonymobile.rcs.DEACTIVATE_JOYN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "deactivatePopupIntent":Landroid/content/Intent;
    const-string/jumbo v6, "package_name"

    .line 254
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    .line 255
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-void

    .line 263
    .end local v0    # "client":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "clientActivityIntent":Landroid/content/Intent;
    .end local v2    # "clients":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "deactivatePopupIntent":Landroid/content/Intent;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 262
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    return-void
.end method

.method public static getRcsClients(Landroid/content/Context;)Ljava/util/Vector;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v5, "result":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 100
    .local v4, "me":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 102
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 114
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "i":I
    .end local v4    # "me":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 103
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v2    # "i":I
    .restart local v4    # "me":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 104
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_2

    .line 102
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_2
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "gsma.joyn.client"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 113
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "me":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getRcsSettingsActivityIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 187
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 196
    return-object v7

    .line 188
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 189
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_2

    .line 187
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "gsma.joyn.settings.activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "activity":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 192
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 196
    .end local v0    # "activity":Ljava/lang/String;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    return-object v7
.end method

.method public static isRcsClientActivated(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-static {p0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->getRcsClients(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v1

    .line 210
    .local v1, "clients":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    return v4

    .line 210
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 211
    .local v0, "client":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const/4 v3, 0x1

    return v3
.end method

.method public static isRcsClientActivated(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string/jumbo v0, "gsma.joyn.preferences"

    .line 173
    invoke-static {p0, p1, v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRcsClientActivated(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    .line 146
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 149
    :cond_0
    return v5

    .line 148
    :cond_1
    if-eqz p2, :cond_0

    const/4 v3, 0x4

    .line 152
    invoke-virtual {v0, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 154
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-nez v2, :cond_2

    .line 157
    return v5

    :cond_2
    const-string/jumbo v3, "gsma.joyn.enabled"

    .line 155
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 157
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    return v5
.end method
