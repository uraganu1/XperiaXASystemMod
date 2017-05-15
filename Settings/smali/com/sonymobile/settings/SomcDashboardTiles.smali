.class public final Lcom/sonymobile/settings/SomcDashboardTiles;
.super Ljava/lang/Object;
.source "SomcDashboardTiles.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsIndexing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/settings/SomcDashboardTiles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/SomcDashboardTiles;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/settings/SomcDashboardTiles;->mIsIndexing:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTileAfterId(Ljava/util/List;JLcom/android/settings/dashboard/DashboardTile;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "tileToAdd"    # Lcom/android/settings/dashboard/DashboardTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;J",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v8, 0x0

    .line 166
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 169
    .local v0, "cat":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v0, p3}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 170
    const-string/jumbo v6, "addTileAfterId | Added tile last in dashboard"

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 171
    return-void

    .line 174
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "catSize":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 175
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 176
    .restart local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    iget-wide v6, v0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    .line 178
    invoke-virtual {v0, v8, p3}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTileAfterId | Added tile at ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", 0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 180
    return-void

    .line 182
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v5

    .local v5, "tilesCount":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 183
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v4

    .line 184
    .local v4, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v6, v4, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_2

    .line 185
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6, p3}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTileAfterId | Added tile at ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 187
    return-void

    .line 182
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v4    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v3    # "j":I
    .end local v5    # "tilesCount":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTileAfterId | Found no tile with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 193
    sget-boolean v6, Lcom/sonymobile/settings/SomcDashboardTiles;->mIsIndexing:Z

    if-eqz v6, :cond_5

    .line 197
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 198
    .restart local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v0, p3}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 199
    const-string/jumbo v6, "addTileAfterId | Added tile anyway last in dashboard"

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 165
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    :cond_5
    return-void
.end method

.method private static addTileAfterTitle(Ljava/util/List;ILcom/android/settings/dashboard/DashboardTile;)V
    .locals 9
    .param p1, "titleRes"    # I
    .param p2, "tileToAdd"    # Lcom/android/settings/dashboard/DashboardTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;I",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v8, 0x0

    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "catSize":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 207
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 208
    .local v0, "cat":Lcom/android/settings/dashboard/DashboardCategory;
    iget v6, v0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    if-ne v6, p1, :cond_0

    .line 210
    invoke-virtual {v0, v8, p2}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTileAfterTitle | Added tile at ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", 0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 212
    return-void

    .line 214
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v5

    .local v5, "tilesCount":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 215
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v4

    .line 216
    .local v4, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget v6, v4, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    if-ne v6, p1, :cond_1

    .line 217
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6, p2}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTileAfterTitle | Added tile at ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 219
    return-void

    .line 214
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v4    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v3    # "j":I
    .end local v5    # "tilesCount":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTileAfterTitle | Found no tile with titleRes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 225
    sget-boolean v6, Lcom/sonymobile/settings/SomcDashboardTiles;->mIsIndexing:Z

    if-eqz v6, :cond_4

    .line 227
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 228
    .restart local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 229
    const-string/jumbo v6, "addTileAfterId | Added tile anyway last in dashboard"

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 204
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    :cond_4
    return-void
.end method

.method private static getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "resName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isForAllUsers(Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 2
    .param p0, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_depend_on_is_owner_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v1, "extra_depend_on_is_owner_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    const-string/jumbo v1, "not isForAllUsers"

    invoke-static {v1}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    return v1

    .line 140
    :cond_1
    const-string/jumbo v1, "isForAllUsers"

    invoke-static {v1}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    return v1
.end method

.method public static loadTilesFromResource(Lcom/android/settings/SettingsActivity;ILjava/util/List;)V
    .locals 1
    .param p0, "settings"    # Lcom/android/settings/SettingsActivity;
    .param p1, "resourcesToAdd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsActivity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/settings/SomcDashboardTiles;->loadTilesFromResource(Lcom/android/settings/SettingsActivity;ILjava/util/List;Z)V

    .line 48
    return-void
.end method

.method public static loadTilesFromResource(Lcom/android/settings/SettingsActivity;ILjava/util/List;Z)V
    .locals 12
    .param p0, "settings"    # Lcom/android/settings/SettingsActivity;
    .param p1, "resourcesToAdd"    # I
    .param p3, "isIndexing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsActivity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v6, 0x0

    .line 60
    .local v6, "resId":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 61
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "pkg":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-static {p1, v0, p0}, Lcom/android/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 64
    sput-boolean p3, Lcom/sonymobile/settings/SomcDashboardTiles;->mIsIndexing:Z

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardCategory;

    .line 70
    .local v2, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-object v8, v2, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    .line 72
    .local v8, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardTile;>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 73
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/DashboardTile;

    .line 74
    .local v7, "tileToAdd":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v1, v7, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 75
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sonymobile/settings/SomcDashboardTiles;->logBundle(Landroid/os/Bundle;)V

    .line 76
    if-nez v1, :cond_2

    .line 78
    const-wide/16 v10, -0x1

    invoke-static {p2, v10, v11, v7}, Lcom/sonymobile/settings/SomcDashboardTiles;->addTileAfterId(Ljava/util/List;JLcom/android/settings/dashboard/DashboardTile;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v9, "extra_depend_on_is_voice_capable"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    .line 85
    const-string/jumbo v9, "extra_depend_on_is_voice_capable"

    const/4 v11, 0x1

    .line 84
    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    :goto_1
    if-eq v10, v9, :cond_1

    .line 88
    :cond_3
    const-string/jumbo v9, "extra_depend_on_is_wifi_only"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 89
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    .line 90
    const-string/jumbo v9, "extra_depend_on_is_wifi_only"

    const/4 v11, 0x1

    .line 89
    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_2
    if-eq v10, v9, :cond_1

    .line 93
    :cond_4
    const-string/jumbo v9, "extra_depend_on_is_valid_intent"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 94
    const-string/jumbo v9, "extra_depend_on_is_valid_intent"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 93
    if-eqz v9, :cond_7

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 97
    iget-object v10, v7, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    .line 96
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "listQuery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 99
    const-string/jumbo v9, "Not valid intent"

    invoke-static {v9}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v3    # "listQuery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 89
    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    .line 104
    :cond_7
    const-string/jumbo v9, "extra_depend_on_resource"

    const-string/jumbo v10, "bool"

    .line 103
    invoke-static {v5, v1, v9, v10, v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_8

    .line 105
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 111
    :cond_8
    const-string/jumbo v9, "extra_move_id"

    const-string/jumbo v10, "id"

    invoke-static {v5, v1, v9, v10, v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    .line 113
    int-to-long v10, v6

    invoke-static {p2, v10, v11}, Lcom/sonymobile/settings/SomcDashboardTiles;->removeTileById(Ljava/util/List;J)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v7

    .line 114
    if-eqz v7, :cond_1

    .line 118
    :cond_9
    const-string/jumbo v9, "extra_after_id"

    const-string/jumbo v10, "id"

    invoke-static {v5, v1, v9, v10, v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_a

    .line 119
    int-to-long v10, v6

    invoke-static {p2, v10, v11, v7}, Lcom/sonymobile/settings/SomcDashboardTiles;->addTileAfterId(Ljava/util/List;JLcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_0

    .line 120
    :cond_a
    const-string/jumbo v9, "extra_after_title"

    const-string/jumbo v10, "string"

    invoke-static {v5, v1, v9, v10, v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b

    .line 122
    invoke-static {p2, v6, v7}, Lcom/sonymobile/settings/SomcDashboardTiles;->addTileAfterTitle(Ljava/util/List;ILcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_0

    .line 123
    :cond_b
    const-string/jumbo v9, "extra_replace_id"

    const-string/jumbo v10, "id"

    invoke-static {v5, v1, v9, v10, v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c

    .line 124
    int-to-long v10, v6

    invoke-static {p2, v10, v11, v7}, Lcom/sonymobile/settings/SomcDashboardTiles;->replaceTileById(Ljava/util/List;JLcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-wide/16 v10, -0x1

    invoke-static {p2, v10, v11, v7}, Lcom/sonymobile/settings/SomcDashboardTiles;->addTileAfterId(Ljava/util/List;JLcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_0

    .line 58
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "tileToAdd":Lcom/android/settings/dashboard/DashboardTile;
    .end local v8    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardTile;>;"
    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    return-void
.end method

.method private static logBundle(Landroid/os/Bundle;)V
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 270
    const-string/jumbo v4, "Bundle contents:"

    invoke-static {v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 271
    if-nez p0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 273
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 275
    .local v3, "value":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    (key, value): ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private static removeTileById(Ljava/util/List;J)Lcom/android/settings/dashboard/DashboardTile;
    .locals 9
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;J)",
            "Lcom/android/settings/dashboard/DashboardTile;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "catSize":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 150
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 151
    .local v0, "cat":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v5

    .local v5, "tilesCount":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 152
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v4

    .line 153
    .local v4, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v6, v4, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTileById | Removed tile at ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 156
    return-object v4

    .line 151
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    .end local v4    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v3    # "j":I
    .end local v5    # "tilesCount":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTileById | Found no tile with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 161
    const/4 v6, 0x0

    return-object v6
.end method

.method private static replaceTileById(Ljava/util/List;JLcom/android/settings/dashboard/DashboardTile;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "tileToAdd"    # Lcom/android/settings/dashboard/DashboardTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;J",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "catSize":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 237
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 238
    .local v0, "cat":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v5

    .local v5, "tilesCount":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 239
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v4

    .line 240
    .local v4, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v6, v4, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 241
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 242
    invoke-virtual {v0, v3, p3}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replaceTileById | Replaced tile at ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 244
    return-void

    .line 238
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 236
    .end local v4    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v3    # "j":I
    .end local v5    # "tilesCount":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replaceTileById | Found no tile with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 250
    sget-boolean v6, Lcom/sonymobile/settings/SomcDashboardTiles;->mIsIndexing:Z

    if-eqz v6, :cond_3

    .line 252
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 253
    .restart local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v0, p3}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 254
    const-string/jumbo v6, "addTileAfterId | Added tile anyway last in dashboard"

    invoke-static {v6}, Lcom/sonymobile/settings/SomcDashboardTiles;->log(Ljava/lang/String;)V

    .line 234
    .end local v0    # "cat":Lcom/android/settings/dashboard/DashboardCategory;
    :cond_3
    return-void
.end method
