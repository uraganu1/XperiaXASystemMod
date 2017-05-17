.class Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "FindAndLinkProcessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindLinkCanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_FIND_CANCELED:I = 0x2

.field private static final RESULT_HAS_DUPLICATE_CONTACTS:I = 0x1

.field private static final RESULT_NO_DUPLICATE_CONTACTS:I


# instance fields
.field private mContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mFindResult:I

.field private mProgress:Landroid/app/ProgressDialog;

.field private mSuggestionsIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsLengthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    return p1
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContext:Landroid/content/Context;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsLengthList:Ljava/util/ArrayList;

    .line 210
    return-void
.end method

.method private getSelectionUri(JI)Landroid/net/Uri;
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "limit"    # I

    .prologue
    .line 381
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 382
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 383
    const-string/jumbo v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 384
    const-string/jumbo v1, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private isFindInterrupted(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)Z
    .locals 3
    .param p1, "aTarget"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancelFind()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 443
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    .line 439
    return-void
.end method

.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;[Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 33
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;
    .param p2, "params"    # [Landroid/net/Uri;

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 241
    .local v4, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 242
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->-get0()[Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "projection":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "selection":Ljava/lang/String;
    const/16 v31, 0x0

    .line 246
    .local v31, "searchingLinkSuggestionForOneContact":Z
    const/16 v23, 0x0

    .line 248
    .local v23, "allContactsCursor":Landroid/database/Cursor;
    new-instance v29, Landroid/util/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/LongSparseArray;-><init>()V

    .line 253
    .local v29, "linkContactItemArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p2

    array-length v8, v0

    if-lez v8, :cond_0

    const/4 v8, 0x0

    aget-object v8, p2, v8

    if-eqz v8, :cond_0

    .line 254
    const/4 v8, 0x0

    aget-object v8, p2, v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactUri:Landroid/net/Uri;

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactUri:Landroid/net/Uri;

    .line 256
    const/16 v31, 0x1

    .line 258
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 259
    .local v23, "allContactsCursor":Landroid/database/Cursor;
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 261
    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 262
    .local v10, "id":J
    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->isSimAccountContact(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 263
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 264
    const/4 v8, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 265
    const/4 v8, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 266
    const/4 v8, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 267
    const/4 v8, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_7

    const/16 v16, 0x1

    .line 263
    :goto_0
    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;JZ)V

    .line 268
    .local v9, "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->isInVisibleGroup()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 269
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 273
    .end local v9    # "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    :cond_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 275
    .end local v10    # "id":J
    :cond_3
    const/16 v30, 0x0

    .line 276
    .local v30, "preloadContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 277
    .local v28, "limit":I
    if-eqz v31, :cond_4

    .line 278
    const/16 v28, 0x4

    .line 279
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->fetchPreloadContactIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v30

    .line 281
    .end local v30    # "preloadContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 282
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->isFindInterrupted(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_8

    .line 362
    :cond_5
    if-eqz v23, :cond_6

    .line 363
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 366
    .end local v23    # "allContactsCursor":Landroid/database/Cursor;
    .end local v28    # "limit":I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    if-nez v8, :cond_15

    .line 367
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_14

    .line 368
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsLengthList:Ljava/util/ArrayList;

    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsLengthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_14

    .line 369
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_14

    .line 370
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    return-object v8

    .line 267
    .restart local v10    # "id":J
    .restart local v23    # "allContactsCursor":Landroid/database/Cursor;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 285
    .end local v10    # "id":J
    .restart local v28    # "limit":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 286
    .local v24, "contactId":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->getSelectionUri(JI)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 289
    .local v13, "suggestionUri":Landroid/net/Uri;
    const/16 v32, 0x0

    .line 291
    .local v32, "suggestionCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 292
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v4

    move-object v14, v6

    .line 291
    :try_start_2
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 293
    .local v32, "suggestionCursor":Landroid/database/Cursor;
    if-eqz v32, :cond_b

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 294
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 293
    if-eqz v8, :cond_b

    .line 296
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/16 v27, 0x0

    .line 300
    .local v27, "len":I
    :goto_3
    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v0, v8

    move-wide/from16 v16, v0

    .line 301
    .local v16, "sId":J
    const/4 v8, 0x4

    move/from16 v0, v27

    if-ge v0, v8, :cond_9

    .line 302
    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->isSimAccountContact(J)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 334
    :cond_9
    const/4 v8, 0x4

    move/from16 v0, v27

    if-le v0, v8, :cond_d

    .line 340
    :cond_a
    if-nez v27, :cond_13

    .line 341
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    .end local v16    # "sId":J
    .end local v27    # "len":I
    :cond_b
    :goto_4
    if-eqz v32, :cond_4

    .line 354
    :try_start_3
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 358
    .end local v13    # "suggestionUri":Landroid/net/Uri;
    .end local v23    # "allContactsCursor":Landroid/database/Cursor;
    .end local v24    # "contactId":J
    .end local v28    # "limit":I
    .end local v32    # "suggestionCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v26

    .line 359
    .local v26, "e":Ljava/lang/Exception;
    const/4 v8, 0x2

    :try_start_4
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    .line 360
    const-string/jumbo v8, "LinkProcessActivity"

    const-string/jumbo v12, "find error"

    move-object/from16 v0, v26

    invoke-static {v8, v12, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    if-eqz v23, :cond_6

    .line 363
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 304
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v13    # "suggestionUri":Landroid/net/Uri;
    .restart local v16    # "sId":J
    .restart local v23    # "allContactsCursor":Landroid/database/Cursor;
    .restart local v24    # "contactId":J
    .restart local v27    # "len":I
    .restart local v28    # "limit":I
    .restart local v32    # "suggestionCursor":Landroid/database/Cursor;
    :cond_c
    if-eqz v31, :cond_11

    .line 308
    if-eqz v30, :cond_e

    .line 309
    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 308
    if-eqz v8, :cond_e

    .line 337
    :cond_d
    :goto_5
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    .line 313
    :cond_e
    new-instance v15, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 315
    const/4 v8, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 317
    const/4 v8, 0x3

    .line 316
    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 318
    const/4 v8, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 320
    const/4 v8, 0x4

    .line 319
    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 320
    const/4 v12, 0x1

    .line 319
    if-ne v8, v12, :cond_10

    const/16 v22, 0x1

    .line 313
    :goto_6
    invoke-direct/range {v15 .. v22}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;JZ)V

    .line 321
    .local v15, "itemSuggested":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->isInVisibleGroup()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 322
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v27, v27, 0x1

    .line 325
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 350
    .end local v15    # "itemSuggested":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    .end local v16    # "sId":J
    .end local v27    # "len":I
    .end local v32    # "suggestionCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v26

    .line 351
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v8, "LinkProcessActivity"

    const-string/jumbo v12, "find suggestion error"

    move-object/from16 v0, v26

    invoke-static {v8, v12, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 353
    if-eqz v32, :cond_4

    .line 354
    :try_start_7
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 361
    .end local v13    # "suggestionUri":Landroid/net/Uri;
    .end local v23    # "allContactsCursor":Landroid/database/Cursor;
    .end local v24    # "contactId":J
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v28    # "limit":I
    :catchall_0
    move-exception v8

    .line 362
    if-eqz v23, :cond_f

    .line 363
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_f
    throw v8

    .line 319
    .restart local v13    # "suggestionUri":Landroid/net/Uri;
    .restart local v16    # "sId":J
    .restart local v23    # "allContactsCursor":Landroid/database/Cursor;
    .restart local v24    # "contactId":J
    .restart local v27    # "len":I
    .restart local v28    # "limit":I
    .restart local v32    # "suggestionCursor":Landroid/database/Cursor;
    :cond_10
    const/16 v22, 0x0

    goto :goto_6

    .line 327
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 328
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v27, v27, 0x1

    .line 332
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactIds:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    .line 352
    .end local v16    # "sId":J
    .end local v27    # "len":I
    .end local v32    # "suggestionCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v8

    .line 353
    if-eqz v32, :cond_12

    .line 354
    :try_start_9
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_12
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 347
    .restart local v16    # "sId":J
    .restart local v27    # "len":I
    .restart local v32    # "suggestionCursor":Landroid/database/Cursor;
    :cond_13
    :try_start_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsLengthList:Ljava/util/ArrayList;

    add-int/lit8 v12, v27, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_4

    .line 372
    .end local v13    # "suggestionUri":Landroid/net/Uri;
    .end local v16    # "sId":J
    .end local v23    # "allContactsCursor":Landroid/database/Cursor;
    .end local v24    # "contactId":J
    .end local v27    # "len":I
    .end local v28    # "limit":I
    .end local v32    # "suggestionCursor":Landroid/database/Cursor;
    :cond_14
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    return-object v8

    .line 375
    :cond_15
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    return-object v8
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Landroid/net/Uri;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;[Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 389
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 396
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_6

    .line 398
    const-string/jumbo v4, "com.android.contacts.action.FIND_PROCESS_SINGLE_CONTACT"

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 399
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v3, "resultIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 401
    const/4 v4, -0x1

    invoke-virtual {p1, v4, v3}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->setResult(ILandroid/content/Intent;)V

    .line 413
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->finish()V

    .line 430
    :cond_3
    :goto_1
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    if-eqz v4, :cond_4

    .line 431
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->finish()V

    .line 388
    :cond_4
    return-void

    .line 403
    :cond_5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 404
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$2;-><init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 414
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 415
    const-string/jumbo v4, "suggestions_id_list"

    .line 416
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsIdList:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v4, "linked_suggestions_list"

    .line 418
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsList:Ljava/util/ArrayList;

    .line 417
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 419
    const-string/jumbo v4, "suggestion_length_list"

    .line 420
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mSuggestionsLengthList:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v4, "com.android.contacts.action.LINK_SUGGESTION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v2, v4}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LinkProcessActivity"

    const-string/jumbo v5, "Problem starting LinkContactsSuggestionActivity."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 428
    invoke-virtual {p1, v6}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->setResult(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 388
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V
    .locals 4
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 222
    const v2, 0x7f09028b

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "checking":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mProgress:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$1;-><init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 235
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->mFindResult:I

    .line 220
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 220
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->onPreExecute(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V

    return-void
.end method
