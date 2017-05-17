.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;
.super Ljava/lang/Object;
.source "SpeedDialListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionsLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)V

    return-void
.end method

.method private populateSpeedDialItems(Landroid/database/Cursor;)V
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 356
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v27, "speedDialItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 361
    const-string/jumbo v28, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 363
    .local v20, "indexId":I
    const-string/jumbo v28, "data_id"

    .line 362
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 365
    .local v18, "indexDataId":I
    const-string/jumbo v28, "display_name"

    .line 364
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 367
    .local v19, "indexDisplayName":I
    const-string/jumbo v28, "phone_number"

    .line 366
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 369
    .local v23, "indexPhoneNumber":I
    const-string/jumbo v28, "position"

    .line 368
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 371
    .local v26, "indexPosition":I
    const-string/jumbo v28, "phone_number_type"

    .line 370
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 373
    .local v24, "indexPhoneType":I
    const-string/jumbo v28, "phone_number_label"

    .line 372
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 375
    .local v22, "indexPhoneLabel":I
    const-string/jumbo v28, "photo_id"

    .line 374
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 377
    .local v25, "indexPhotoId":I
    const-string/jumbo v28, "contact_id"

    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 379
    .local v17, "indexContactId":I
    const-string/jumbo v28, "lookup"

    .line 378
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 382
    .local v21, "indexLookupKey":I
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 383
    .local v14, "contactId":J
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 384
    .local v3, "id":J
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 385
    .local v5, "dataId":J
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, "phoneNum":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 389
    .local v8, "position":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 390
    .local v10, "phoneType":I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 392
    .local v11, "phoneLabel":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 394
    .local v12, "photoId":J
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 396
    .local v16, "lookupKey":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    invoke-direct/range {v2 .. v16}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;-><init>(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    .line 398
    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-nez v28, :cond_0

    .line 401
    .end local v2    # "item":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    .end local v3    # "id":J
    .end local v5    # "dataId":J
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "position":I
    .end local v9    # "phoneNum":Ljava/lang/String;
    .end local v10    # "phoneType":I
    .end local v11    # "phoneLabel":Ljava/lang/String;
    .end local v12    # "photoId":J
    .end local v14    # "contactId":J
    .end local v16    # "lookupKey":Ljava/lang/String;
    .end local v17    # "indexContactId":I
    .end local v18    # "indexDataId":I
    .end local v19    # "indexDisplayName":I
    .end local v20    # "indexId":I
    .end local v21    # "indexLookupKey":I
    .end local v22    # "indexPhoneLabel":I
    .end local v23    # "indexPhoneNumber":I
    .end local v24    # "indexPhoneType":I
    .end local v25    # "indexPhotoId":I
    .end local v26    # "indexPosition":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 355
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;I)I

    .line 339
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;I)I

    .line 345
    if-nez p2, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->populateSpeedDialItems(Landroid/database/Cursor;)V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->setItems(Ljava/util/Map;)V

    .line 343
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->setItems(Ljava/util/Map;)V

    .line 351
    return-void
.end method
