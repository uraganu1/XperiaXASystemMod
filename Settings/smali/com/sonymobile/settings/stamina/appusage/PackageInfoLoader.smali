.class public Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;
.super Landroid/os/AsyncTask;
.source "PackageInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mConsumingPackageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExecuteWhenLoaded:Ljava/lang/Runnable;

.field private mFlags:I

.field private mIgnoredPackageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private mUnusedPackageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executeWhenLoaded"    # Ljava/lang/Runnable;
    .param p3, "flags"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mLimit:I

    .line 89
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    .line 91
    iput p3, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mFlags:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executeWhenLoaded"    # Ljava/lang/Runnable;
    .param p3, "limit"    # I
    .param p4, "flags"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    .line 77
    iput p3, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mLimit:I

    .line 75
    return-void
.end method

.method private getApps(II)Ljava/util/ArrayList;
    .locals 18
    .param p1, "flag"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v11, 0x0

    .line 121
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    packed-switch p1, :pswitch_data_0

    .line 130
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 124
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUnusedApps(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v11

    .line 133
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v11, :cond_3

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 136
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 137
    .local v16, "uidColumnIndex":I
    const-string/jumbo v17, "lastused"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 138
    .local v13, "lastUsedIndex":I
    const-string/jumbo v17, "sum_cpu"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 139
    .local v10, "cpuColumnIndex":I
    const-string/jumbo v17, "sum_datatotal"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 141
    .local v12, "dataTotalIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mLimit:I

    move/from16 v17, v0

    if-gez v17, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 143
    .local v2, "count":I
    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_2

    if-lez v2, :cond_2

    .line 144
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 145
    .local v4, "uid":I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "lastUsed":Ljava/lang/String;
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 147
    .local v6, "cpu":J
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 149
    .local v8, "dataSum":J
    invoke-static/range {v3 .. v9}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->createBatteryUsagePackageInfo(Landroid/content/pm/PackageManager;ILjava/lang/String;JJ)Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    move-result-object v14

    .line 152
    .local v14, "pi":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    if-eqz v14, :cond_0

    .line 153
    packed-switch p2, :pswitch_data_1

    .line 164
    :pswitch_1
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v2    # "count":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "uid":I
    .end local v5    # "lastUsed":Ljava/lang/String;
    .end local v6    # "cpu":J
    .end local v8    # "dataSum":J
    .end local v10    # "cpuColumnIndex":I
    .end local v12    # "dataTotalIndex":I
    .end local v13    # "lastUsedIndex":I
    .end local v14    # "pi":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    .end local v16    # "uidColumnIndex":I
    :catchall_0
    move-exception v17

    .line 170
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 169
    throw v17

    .line 127
    .local v11, "cursor":Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getConsumingApps(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 141
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "cpuColumnIndex":I
    .restart local v12    # "dataTotalIndex":I
    .restart local v13    # "lastUsedIndex":I
    .restart local v16    # "uidColumnIndex":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mLimit:I

    .restart local v2    # "count":I
    goto :goto_1

    .line 155
    .restart local v4    # "uid":I
    .restart local v5    # "lastUsed":Ljava/lang/String;
    .restart local v6    # "cpu":J
    .restart local v8    # "dataSum":J
    .restart local v14    # "pi":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    :pswitch_3
    new-instance v17, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 158
    :pswitch_4
    new-instance v17, Lcom/sonymobile/settings/stamina/appusage/adapteritems/UnusedPackageItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/UnusedPackageItem;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :pswitch_5
    new-instance v17, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 170
    .end local v4    # "uid":I
    .end local v5    # "lastUsed":Ljava/lang/String;
    .end local v6    # "cpu":J
    .end local v8    # "dataSum":J
    .end local v14    # "pi":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 173
    .end local v2    # "count":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "cpuColumnIndex":I
    .end local v12    # "dataTotalIndex":I
    .end local v13    # "lastUsedIndex":I
    .end local v16    # "uidColumnIndex":I
    :cond_3
    return-object v15

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 10
    .param p1, "arg"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 97
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;>;"
    iget v5, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 99
    const-string/jumbo v5, "unused"

    invoke-direct {p0, v7, v7}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getApps(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    iget v5, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v8, :cond_1

    .line 102
    const-string/jumbo v5, "consuming"

    invoke-direct {p0, v8, v8}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getApps(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    iget v5, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v9, :cond_4

    .line 105
    invoke-direct {p0, v7, v9}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getApps(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 106
    .local v1, "ignore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    invoke-direct {p0, v8, v9}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getApps(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "consuming":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    .line 110
    .local v2, "item":Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v2    # "item":Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;
    :cond_3
    const-string/jumbo v5, "ignored"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v0    # "consuming":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    .end local v1    # "ignore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v4
.end method

.method protected getConsumingPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mConsumingPackageInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getIgnorePackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mIgnoredPackageInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getUnusedPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mUnusedPackageInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;>;"
    const-string/jumbo v0, "unused"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mUnusedPackageInfos:Ljava/util/ArrayList;

    .line 179
    const-string/jumbo v0, "consuming"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mConsumingPackageInfos:Ljava/util/ArrayList;

    .line 180
    const-string/jumbo v0, "ignored"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mIgnoredPackageInfos:Ljava/util/ArrayList;

    .line 181
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    :cond_0
    return-void
.end method
