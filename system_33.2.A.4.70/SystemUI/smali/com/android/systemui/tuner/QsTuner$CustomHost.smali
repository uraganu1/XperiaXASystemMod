.class Lcom/android/systemui/tuner/QsTuner$CustomHost;
.super Lcom/android/systemui/statusbar/phone/QSTileHost;
.source "QsTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/QsTuner$CustomHost;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    new-instance v22, Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;

    const/4 v1, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;-><init>(Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;)V

    .line 221
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 222
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 223
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 221
    invoke-direct/range {v1 .. v24}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/mediatek/systemui/statusbar/policy/HotKnotController;Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;)V

    .line 219
    return-void
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 343
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    .line 345
    const/4 v2, 0x0

    return v2

    .line 348
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private setTiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    .line 269
    const-string/jumbo v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 268
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 267
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe7

    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v0, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setTiles(Ljava/util/List;)V

    .line 255
    return-void
.end method

.method protected createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 1
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v0, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setTiles(Ljava/util/List;)V

    .line 248
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldTile"    # Ljava/lang/String;
    .param p2, "newTile"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe6

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    .local v1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 239
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 240
    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 245
    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setTiles(Ljava/util/List;)V

    .line 231
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string/jumbo v2, "default"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 263
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 262
    return-void
.end method

.method public showAddDialog()V
    .locals 14

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getMaxTiles(Landroid/content/Context;)I

    move-result v11

    add-int/lit8 v6, v11, 0x2

    .line 275
    .local v6, "maxTiles":I
    iget-object v11, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, v6, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f09006c

    .line 277
    const/4 v13, 0x1

    .line 276
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 278
    .local v10, "toast":Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 279
    return-void

    .line 282
    .end local v10    # "toast":Landroid/widget/Toast;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 283
    .local v9, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 284
    .local v7, "numBroadcast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 285
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "intent("

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 286
    add-int/lit8 v7, v7, 0x1

    .line 284
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 291
    const v13, 0x7f090067

    .line 290
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 292
    const-string/jumbo v12, ","

    .line 290
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 293
    const v13, 0x7f090052

    .line 292
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 290
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 293
    const-string/jumbo v12, ","

    .line 290
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "defaults":[Ljava/lang/String;
    array-length v11, v2

    add-int/lit8 v11, v11, 0x1

    .line 295
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .line 294
    sub-int/2addr v11, v12

    new-array v0, v11, [Ljava/lang/String;

    .line 296
    .local v0, "available":[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [Ljava/lang/String;

    .line 297
    .local v1, "availableTiles":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 298
    .local v4, "index":I
    const/4 v3, 0x0

    :goto_1
    array-length v11, v2

    if-ge v3, v11, :cond_5

    .line 299
    aget-object v11, v2, v3

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 298
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :cond_3
    aget-object v11, v2, v3

    invoke-static {v11}, Lcom/android/systemui/tuner/QsTuner;->-wrap0(Ljava/lang/String;)I

    move-result v8

    .line 303
    .local v8, "resource":I
    if-eqz v8, :cond_4

    .line 304
    aget-object v11, v2, v3

    aput-object v11, v1, v4

    .line 305
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 307
    :cond_4
    aget-object v11, v2, v3

    aput-object v11, v1, v4

    .line 308
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    aget-object v11, v2, v3

    aput-object v11, v0, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 311
    .end local v8    # "resource":I
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090214

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    .line 312
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    const v12, 0x7f090213

    .line 312
    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 314
    new-instance v12, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;

    invoke-direct {v12, p0, v0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;-><init>(Lcom/android/systemui/tuner/QsTuner$CustomHost;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 312
    invoke-virtual {v11, v0, v12}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 272
    return-void
.end method

.method public showBroadcastTileDialog()V
    .locals 4

    .prologue
    .line 326
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    const v2, 0x7f090214

    .line 327
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 330
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 327
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 331
    new-instance v2, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;-><init>(Lcom/android/systemui/tuner/QsTuner$CustomHost;Landroid/widget/EditText;)V

    const v3, 0x104000a

    .line 327
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 325
    return-void
.end method
