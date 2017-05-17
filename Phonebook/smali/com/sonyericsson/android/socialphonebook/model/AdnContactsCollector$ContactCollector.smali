.class Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;
.super Landroid/content/AsyncQueryHandler;
.source "AdnContactsCollector.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactCollector"
.end annotation


# static fields
.field private static final RAWCONTACT_QUERY_TOKEN:I = 0x3e9


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mIsCancelled:Z

    .line 206
    return-void
.end method

.method private buildRawContactsMap(Landroid/database/Cursor;)V
    .locals 19
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 272
    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v14, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;>;"
    const-string/jumbo v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 274
    .local v15, "rawContactIdClmn":I
    const-string/jumbo v3, "contact_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 275
    .local v12, "contactIdClmn":I
    const-string/jumbo v3, "account_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 276
    .local v2, "accNameClmn":I
    const-string/jumbo v3, "account_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 277
    .local v9, "accTypeClmn":I
    const-string/jumbo v3, "sourceid"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 280
    .local v17, "sourceIdClmn":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mIsCancelled:Z

    if-nez v3, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 282
    .local v10, "cid":J
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 283
    .local v4, "rid":J
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "accType":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "accName":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "sourceId":Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 288
    .local v16, "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    if-nez v16, :cond_0

    .line 289
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .restart local v16    # "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v2    # "accNameClmn":I
    .end local v4    # "rid":J
    .end local v6    # "accType":Ljava/lang/String;
    .end local v7    # "accName":Ljava/lang/String;
    .end local v8    # "sourceId":Ljava/lang/String;
    .end local v9    # "accTypeClmn":I
    .end local v10    # "cid":J
    .end local v12    # "contactIdClmn":I
    .end local v14    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;>;"
    .end local v15    # "rawContactIdClmn":I
    .end local v16    # "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    .end local v17    # "sourceIdClmn":I
    :catch_0
    move-exception v13

    .line 296
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AdnContactsCollector"

    const-string/jumbo v18, "Error occured in doInBackGround"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 294
    .restart local v2    # "accNameClmn":I
    .restart local v9    # "accTypeClmn":I
    .restart local v12    # "contactIdClmn":I
    .restart local v14    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;>;"
    .restart local v15    # "rawContactIdClmn":I
    .restart local v17    # "sourceIdClmn":I
    :cond_1
    :try_start_1
    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-set1(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string/jumbo v0, "deleted=0 AND account_type IN (\'com.sonyericsson.adncontacts\', \'com.sonyericsson.adnsub1contacts\', \'com.sonyericsson.adnsub2contacts\')"

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->cancelOperation(I)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mIsCancelled:Z

    .line 214
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mCallback:Ljava/lang/Runnable;

    .line 210
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "aToken"    # I
    .param p2, "aCookie"    # Ljava/lang/Object;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 244
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 259
    if-eqz p3, :cond_0

    .line 260
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_0
    return-void

    .line 248
    :cond_1
    if-eqz p3, :cond_4

    .line 249
    :try_start_1
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->buildRawContactsMap(Landroid/database/Cursor;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get4(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get4(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mCallback:Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_2
    if-eqz p3, :cond_3

    .line 260
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_3
    return-void

    .line 252
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-set1(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    if-eqz p3, :cond_5

    .line 260
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_5
    throw v0
.end method

.method public refresh(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x3e9

    .line 218
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->cancelOperation(I)V

    .line 222
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 223
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get0()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->getQuerySelection()Ljava/lang/String;

    move-result-object v5

    .line 224
    const-string/jumbo v7, "contact_id ASC"

    move-object v0, p0

    move-object v6, v2

    .line 222
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->mCallback:Ljava/lang/Runnable;

    .line 217
    return-void
.end method
