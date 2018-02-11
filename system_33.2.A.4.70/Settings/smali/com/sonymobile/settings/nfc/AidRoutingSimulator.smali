.class public abstract Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidMatchingSupport:I

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mDefaultRoute:I

.field mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mOtherRoutedAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mRoutedAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/sonymobile/settings/nfc/HceSettings;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "route"    # I
    .param p2, "matchingMode"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mOtherRoutedAids:Ljava/util/List;

    .line 116
    new-instance v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    .line 146
    iput p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    .line 147
    iput p2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    .line 145
    return-void
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 595
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v6, v15}, Landroid/util/SparseArray;-><init>(I)V

    .line 341
    .local v6, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 343
    .local v14, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "aidEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 344
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x0

    .line 345
    .local v13, "route":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, "aid":Ljava/lang/String;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v13, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 347
    .local v11, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v6, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    .end local v1    # "aid":Ljava/lang/String;
    .end local v11    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "route":I
    :cond_0
    const/4 v13, 0x1

    .restart local v13    # "route":I
    goto :goto_1

    .line 352
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v13    # "route":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 353
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 354
    sget-boolean v15, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v15, :cond_2

    const-string/jumbo v15, "HceSettings RoutingSimulator"

    const-string/jumbo v17, "Routing table unchanged, not updating"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_2
    const/4 v15, 0x0

    monitor-exit v16

    return v15

    .line 359
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mOtherRoutedAids:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 361
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    .line 362
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 363
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 379
    .local v10, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_7

    .line 380
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "defaultRouteAid$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 383
    .local v8, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 384
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    .restart local v1    # "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 386
    .restart local v13    # "route":I
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v13, v15, :cond_5

    .line 387
    sget-boolean v15, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v15, :cond_6

    .line 388
    const-string/jumbo v15, "HceSettings RoutingSimulator"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Adding AID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " for default "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 389
    const-string/jumbo v18, "route, because a conflicting shorter AID will be "

    .line 388
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 390
    const-string/jumbo v18, "added to the routing table"

    .line 388
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 352
    .end local v1    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "defaultRouteAid":Ljava/lang/String;
    .end local v9    # "defaultRouteAid$iterator":Ljava/util/Iterator;
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "route":I
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 399
    :cond_7
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v12, v15, :cond_10

    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 401
    .restart local v13    # "route":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 402
    .local v7, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aid$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .restart local v1    # "aid":Ljava/lang/String;
    const-string/jumbo v15, "*"

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 404
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    if-nez v15, :cond_9

    .line 405
    const-string/jumbo v15, "HceSettings RoutingSimulator"

    const-string/jumbo v17, "This device does not support prefix AIDs."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 406
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 407
    sget-boolean v15, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "HceSettings RoutingSimulator"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Routing prefix AID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " to route "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 408
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 407
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 410
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_4

    .line 412
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 413
    sget-boolean v15, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v15, :cond_c

    const-string/jumbo v15, "HceSettings RoutingSimulator"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Routing prefix AID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " to route "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 414
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 413
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 418
    :cond_d
    sget-boolean v15, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v15, :cond_e

    const-string/jumbo v15, "HceSettings RoutingSimulator"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Routing exact AID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " to route "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 419
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 418
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 399
    .end local v1    # "aid":Ljava/lang/String;
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .end local v2    # "aid$iterator":Ljava/util/Iterator;
    .end local v7    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "route":I
    :cond_10
    monitor-exit v16

    .line 425
    const/4 v15, 0x1

    return v15
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .locals 9
    .param p1, "prefixAid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 445
    new-instance v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 446
    .local v4, "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "plainAid":Ljava/lang/String;
    const-string/jumbo v5, "%-32s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "lastAidWithPrefix":Ljava/lang/String;
    sget-boolean v5, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "HceSettings RoutingSimulator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finding AIDs in range ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 449
    const-string/jumbo v7, "]"

    .line 448
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v8, v2, v8}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    .line 450
    iput-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 453
    iget-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 452
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 454
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 455
    sget-boolean v5, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v5, :cond_2

    .line 456
    const-string/jumbo v6, "HceSettings RoutingSimulator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " conflicts with prefix; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 457
    const-string/jumbo v7, " adding handling services for conflict resolution."

    .line 456
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 459
    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    :cond_3
    return-object v4
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    new-instance v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 431
    .local v0, "defaultServiceInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceAidInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    .line 433
    .local v1, "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    const-string/jumbo v4, "payment"

    iget-object v5, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 434
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    iput-object v1, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    goto :goto_0

    .line 436
    :cond_1
    iget-object v4, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 438
    iput-object v1, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    goto :goto_0

    .line 441
    .end local v1    # "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_2
    return-object v0
.end method

.method generateAidCacheLocked()V
    .locals 14

    .prologue
    .line 219
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    .line 221
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v1, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 224
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v10, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "aidToResolve":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 233
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    sget-boolean v11, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "HceSettings RoutingSimulator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "generateAidCacheLocked: starting with aid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    .line 243
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    .line 242
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    .local v8, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;

    move-result-object v7

    .line 250
    .local v7, "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {p0, v8, v11}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v9

    .line 251
    .local v9, "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_4

    .line 256
    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    .end local v7    # "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_2
    :goto_1
    sget-boolean v11, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "HceSettings RoutingSimulator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AIDs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " were resolved."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3
    invoke-virtual {v1, v10}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 303
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 257
    .restart local v7    # "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .restart local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_4
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 261
    const/4 v6, 0x0

    .line 263
    .local v6, "foundChildService":Z
    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 262
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "foundChildService":Z
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 264
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 265
    sget-boolean v11, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v11, :cond_6

    .line 266
    const-string/jumbo v12, "HceSettings RoutingSimulator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AID "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " shared with prefix; "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 267
    const-string/jumbo v13, " adding all handling services."

    .line 266
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    const/4 v12, 0x0

    .line 268
    invoke-virtual {p0, v11, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    .line 274
    .local v2, "childResolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    .line 275
    iget-object v12, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v11, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    :goto_3
    or-int/2addr v6, v11

    .local v6, "foundChildService":Z
    goto :goto_2

    .end local v6    # "foundChildService":Z
    :cond_7
    const/4 v11, 0x1

    goto :goto_3

    .line 282
    .end local v2    # "childResolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    :cond_8
    if-nez v6, :cond_2

    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 283
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_1

    .line 293
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v7    # "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_9
    sget-boolean v11, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v11, :cond_a

    const-string/jumbo v11, "HceSettings RoutingSimulator"

    const-string/jumbo v12, "Exact AID, resolving."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .local v3, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    const/4 v12, 0x1

    invoke-virtual {p0, v3, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 306
    .end local v0    # "aidToResolve":Ljava/lang/String;
    .end local v3    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v10    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->updateRoutingLocked()V

    .line 218
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v12, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v12}, Ljava/util/TreeMap;->clear()V

    .line 164
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 165
    .local v7, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v12, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "HceSettings RoutingSimulator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "generateServiceMap component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    iget-object v12, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 167
    .local v11, "serviceDisabled":Z
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v6

    .line 168
    .local v6, "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 170
    const-string/jumbo v12, "HceSettings RoutingSimulator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Aid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not valid."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_3
    const-string/jumbo v12, "*"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->supportsAidPrefixRegistration()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->supportsAidPrefixRegistration()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->isPrefix(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 194
    :cond_5
    if-eqz v11, :cond_a

    .line 195
    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "other"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 194
    if-eqz v12, :cond_a

    .line 196
    sget-boolean v12, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "HceSettings RoutingSimulator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "This AID is disabled : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_6
    const-string/jumbo v12, "HceSettings RoutingSimulator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Prefix AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ignored on device that doesn\'t support it."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_7
    const/4 v2, 0x0

    .line 179
    .local v2, "foundPrefix":Z
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "prefixAid$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "prefixAid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 182
    const-string/jumbo v12, "HceSettings RoutingSimulator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Ignoring exact AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " because prefix AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 183
    const-string/jumbo v14, " is already registered"

    .line 182
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x1

    .line 188
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "prefixAid":Ljava/lang/String;
    :cond_9
    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 199
    .end local v2    # "foundPrefix":Z
    .end local v5    # "prefixAid$iterator":Ljava/util/Iterator;
    :cond_a
    new-instance v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    invoke-direct {v9, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 200
    .local v9, "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 201
    iput-object v7, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 202
    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    .line 204
    iget-object v12, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 206
    iget-object v12, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 207
    .local v10, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    :cond_b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .restart local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v12, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v6    # "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v9    # "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v11    # "serviceDisabled":Z
    :cond_c
    return-void
.end method

.method public abstract getMaxAidEntries()I
.end method

.method public abstract getMaxAidLength()I
.end method

.method public getOtherRoutedAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mOtherRoutedAids:Ljava/util/List;

    return-object v0
.end method

.method public getRoutedAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    return-object v0
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .locals 10
    .param p2, "makeSingleServiceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;Z)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 479
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 480
    :cond_0
    const-string/jumbo v6, "HceSettings RoutingSimulator"

    const-string/jumbo v7, "resolveAidConflict: No services passed in."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-object v8

    .line 483
    :cond_1
    new-instance v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 484
    .local v2, "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    const-string/jumbo v6, "other"

    iput-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v1, 0x0

    .line 488
    .local v1, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    .local v4, "serviceAidInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    .line 490
    .local v3, "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    const-string/jumbo v6, "payment"

    iget-object v7, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 491
    .local v5, "serviceClaimsPaymentAid":Z
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 492
    iget-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    if-eqz v5, :cond_3

    .line 494
    const-string/jumbo v6, "payment"

    iput-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    .line 496
    :cond_3
    iget-object v0, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .local v0, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_0

    .line 497
    .end local v0    # "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 499
    iget-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    const-string/jumbo v6, "payment"

    iput-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    .line 501
    iget-object v1, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .local v1, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_0

    .line 503
    .end local v1    # "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5
    if-eqz v5, :cond_6

    .line 507
    sget-boolean v6, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "HceSettings RoutingSimulator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: (Ignoring handling service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 508
    iget-object v8, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 507
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 509
    const-string/jumbo v8, " because it\'s not the payment default.)"

    .line 507
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_6
    iget-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 515
    .end local v3    # "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    .end local v5    # "serviceClaimsPaymentAid":Z
    :cond_7
    if-eqz v0, :cond_a

    .line 518
    sget-boolean v6, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v6, :cond_8

    const-string/jumbo v6, "HceSettings RoutingSimulator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: DECISION: routing to foreground preferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_8
    iput-object v0, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 537
    :cond_9
    :goto_1
    return-object v2

    .line 521
    :cond_a
    if-eqz v1, :cond_c

    .line 524
    sget-boolean v6, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v6, :cond_b

    const-string/jumbo v6, "HceSettings RoutingSimulator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: DECISION: routing to payment default default "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_b
    iput-object v1, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 528
    :cond_c
    iget-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    if-eqz p2, :cond_e

    .line 529
    sget-boolean v6, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v6, :cond_d

    const-string/jumbo v7, "HceSettings RoutingSimulator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: DECISION: making single handling service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 530
    iget-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 529
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 530
    const-string/jumbo v8, " default."

    .line 529
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_d
    iget-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 534
    :cond_e
    sget-boolean v6, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "HceSettings RoutingSimulator"

    const-string/jumbo v7, "resolveAidLocked: DECISION: routing to all matching services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    const/4 v5, 0x1

    .line 543
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    move-result-object v1

    .line 546
    .local v1, "prefixDefaultInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    move-result-object v0

    .line 553
    .local v0, "conflictingDefaultInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    iget-object v2, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_1

    .line 554
    sget-boolean v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HceSettings RoutingSimulator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prefix AID service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    iget-object v4, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    iget-object v4, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    const-string/jumbo v4, " has foreground"

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 556
    const-string/jumbo v4, " preference, ignoring conflicting AIDs."

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    return-object v2

    .line 560
    :cond_1
    iget-object v2, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_5

    .line 562
    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_3

    .line 564
    sget-boolean v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "HceSettings RoutingSimulator"

    const-string/jumbo v3, "One of the conflicting AID registrations is foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    return-object v2

    .line 569
    :cond_3
    sget-boolean v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "HceSettings RoutingSimulator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prefix AID service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 570
    iget-object v4, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    iget-object v4, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 570
    const-string/jumbo v4, " is payment"

    .line 569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 571
    const-string/jumbo v4, " default, ignoring conflicting AIDs."

    .line 569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_4
    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    return-object v2

    .line 575
    :cond_5
    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-nez v2, :cond_6

    .line 576
    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_8

    .line 577
    :cond_6
    sget-boolean v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "HceSettings RoutingSimulator"

    const-string/jumbo v3, "One of the conflicting AID registrations is either payment default or foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    return-object v2

    .line 583
    :cond_8
    sget-boolean v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "HceSettings RoutingSimulator"

    const-string/jumbo v3, "No service has preference, adding all."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    return-object v2
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 599
    iget v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq p2, v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mOtherRoutedAids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startRouting(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p3, "defaultPayment"    # Landroid/content/ComponentName;
    .param p4, "foregroundService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local p2, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object p2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    .line 153
    iput-object p3, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 154
    iput-object p4, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 155
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->generateServiceMapLocked(Ljava/util/List;)V

    .line 157
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->generateAidCacheLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 151
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 590
    iget v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    if-eq v1, v0, :cond_0

    .line 591
    iget v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDefaultRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 615
    iget v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v0, p1, :cond_0

    .line 616
    iput p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    .line 617
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 614
    :cond_0
    return-void
.end method

.method updateRoutingLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 310
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 313
    .local v4, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 312
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aidEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 314
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    .line 316
    .local v3, "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    iget-boolean v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    if-nez v5, :cond_1

    .line 317
    sget-boolean v5, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "HceSettings RoutingSimulator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not routing AID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_1
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v5, :cond_2

    .line 325
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 329
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_3
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 332
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 336
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;>;"
    .end local v3    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->configureRouting(Ljava/util/HashMap;)Z

    .line 309
    return-void
.end method
