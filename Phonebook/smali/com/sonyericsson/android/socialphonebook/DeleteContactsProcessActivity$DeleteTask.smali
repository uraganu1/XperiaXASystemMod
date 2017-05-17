.class Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "DeleteContactsProcessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllContactIdsToDelete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedCount:I

.field private volatile mDeletionResult:I

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mTotalCountContactsToDelete:I

.field mUndeletedContactsList:Ljava/util/ArrayList;
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
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    return p1
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)V
    .locals 1
    .param p1, "aTarget"    # Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    .line 143
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->getContactIdsToDelete([J)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mAllContactIdsToDelete:Ljava/util/Set;

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mAllContactIdsToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mTotalCountContactsToDelete:I

    .line 141
    return-void
.end method

.method private getContactIdsToDelete([J)Ljava/util/Set;
    .locals 6
    .param p1, "deleteIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 366
    .local v0, "contactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 367
    .local v1, "ids":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "ids":Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method private getUndeletedAdnContactResults(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 23
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    .local p2, "adnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v22, "undeletedAdnContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 316
    :cond_0
    return-object v22

    .line 315
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    .line 320
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 321
    const-string/jumbo v2, "display_name"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 322
    const-string/jumbo v2, "display_name_alt"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 323
    const-string/jumbo v2, "in_visible_group"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 325
    .local v4, "projection":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 326
    .local v13, "CONTACT_ID":I
    const/4 v14, 0x1

    .line 327
    .local v14, "DISPLAY_NAME":I
    const/4 v15, 0x2

    .line 328
    .local v15, "DISPLAY_NAME_ALT":I
    const/16 v16, 0x3

    .line 330
    .local v16, "IN_VISIBLE_GROUP":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v21, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v2, " IN ("

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "contactId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 334
    .local v18, "contactId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    .end local v18    # "contactId":J
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/16 v20, 0x0

    .line 343
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 342
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 344
    .local v20, "cursor":Landroid/database/Cursor;
    if-eqz v20, :cond_5

    .line 345
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 347
    .local v6, "adnContactId":J
    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountType(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAdnPhotoId(Ljava/lang/String;)J

    move-result-wide v10

    .line 349
    .local v10, "photoId":J
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    const/4 v12, 0x1

    .line 350
    .local v12, "isInVisibleGroup":Z
    :goto_2
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 351
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;JZ)V

    .line 353
    .local v5, "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 356
    .end local v5    # "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    .end local v6    # "adnContactId":J
    .end local v10    # "photoId":J
    .end local v12    # "isInVisibleGroup":Z
    .end local v20    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 357
    if-eqz v20, :cond_3

    .line 358
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_3
    throw v2

    .line 349
    .restart local v6    # "adnContactId":J
    .restart local v10    # "photoId":J
    .restart local v20    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "isInVisibleGroup":Z
    goto :goto_2

    .line 357
    .end local v6    # "adnContactId":J
    .end local v10    # "photoId":J
    .end local v12    # "isInVisibleGroup":Z
    :cond_5
    if-eqz v20, :cond_6

    .line 358
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_6
    return-object v22
.end method

.method private isDeleteInterrupted(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)Z
    .locals 3
    .param p1, "aTarget"    # Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancelDelete()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 438
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "aTarget"    # Ljava/lang/Object;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .end local p1    # "aTarget":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Void;

    .end local p2    # "aParams":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 36
    .param p1, "aTarget"    # Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;
    .param p2, "aParams"    # [Ljava/lang/Void;

    .prologue
    .line 199
    new-instance v14, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;-><init>(Landroid/content/Context;)V

    .line 200
    .local v14, "deleteHandler":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    new-instance v12, Ljava/util/ArrayList;

    const/16 v32, 0x14

    move/from16 v0, v32

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v12, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/16 v32, 0x14

    move/from16 v0, v32

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v8, "adnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getReadOnlyAccountTypes()Ljava/util/ArrayList;

    move-result-object v23

    .line 203
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    .line 204
    .local v25, "readOnlyAccountTypes":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)Landroid/content/ContentResolver;

    move-result-object v13

    .line 205
    .local v13, "cr":Landroid/content/ContentResolver;
    const/16 v19, 0x0

    .line 206
    .local v19, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mAllContactIdsToDelete:Ljava/util/Set;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->size()I

    move-result v27

    .line 207
    .local v27, "totalSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mAllContactIdsToDelete:Ljava/util/Set;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 208
    .local v20, "id":Ljava/lang/Long;
    add-int/lit8 v19, v19, 0x1

    .line 209
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->isDeleteInterrupted(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 300
    .end local v20    # "id":Ljava/lang/Long;
    :cond_1
    const/16 v32, 0x0

    return-object v32

    .line 212
    .restart local v20    # "id":Ljava/lang/Long;
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x14

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 216
    :cond_3
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "contactId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 218
    .local v10, "contactId":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->isSimAccountContact(J)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 219
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 287
    .end local v10    # "contactId":Ljava/lang/Long;
    .end local v11    # "contactId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v17

    .line 288
    .local v17, "e":Landroid/os/RemoteException;
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    .line 289
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get0()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "delete error"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v17    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 224
    .restart local v11    # "contactId$iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 227
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v24, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v28, "undeletedAdnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "adnContactId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 230
    .local v6, "adnContactId":Ljava/lang/Long;
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->isDeleteInterrupted(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 274
    .end local v6    # "adnContactId":Ljava/lang/Long;
    :cond_6
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->getUndeletedAdnContactResults(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v14, v12, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->deleteMultiple(Ljava/util/List;[Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletedCount:I

    move/from16 v32, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v33

    add-int v32, v32, v33

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    add-int v32, v32, v33

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 281
    sub-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletedCount:I

    .line 284
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    const-wide/16 v32, 0x32

    invoke-static/range {v32 .. v33}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 290
    .end local v7    # "adnContactId$iterator":Ljava/util/Iterator;
    .end local v11    # "contactId$iterator":Ljava/util/Iterator;
    .end local v24    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v28    # "undeletedAdnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_1
    move-exception v16

    .line 291
    .local v16, "e":Landroid/content/OperationApplicationException;
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    .line 292
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get0()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "delete error"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 235
    .end local v16    # "e":Landroid/content/OperationApplicationException;
    .restart local v6    # "adnContactId":Ljava/lang/Long;
    .restart local v7    # "adnContactId$iterator":Ljava/util/Iterator;
    .restart local v11    # "contactId$iterator":Ljava/util/Iterator;
    .restart local v24    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v28    # "undeletedAdnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 234
    invoke-static/range {v32 .. v33}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountType(J)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "adnAccountType":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "adnAccountName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getContactSourceId(J)Ljava/lang/String;

    move-result-object v22

    .line 240
    .local v22, "index":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 242
    .local v29, "uri":Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 241
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSIMContentsFromId(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v30

    .line 243
    .local v30, "values":Landroid/content/ContentValues;
    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getWhereClauseFromContentValues(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v31

    .line 244
    .local v31, "where":Ljava/lang/String;
    const/16 v26, -0x1

    .line 246
    .local v26, "result":I
    if-eqz v29, :cond_8

    if-eqz v31, :cond_8

    .line 247
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 250
    :cond_8
    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 253
    sget-object v32, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 258
    .local v9, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v32, "caller_is_syncadapter"

    const-string/jumbo v33, "true"

    .line 257
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v32

    .line 261
    const-string/jumbo v33, "account_name"

    .line 257
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v32

    .line 263
    const-string/jumbo v33, "account_type"

    .line 257
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 265
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v32

    .line 264
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 266
    .local v15, "deleteOp":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v32, "contact_id=?"

    .line 267
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    aput-object v34, v33, v35

    .line 266
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 268
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 269
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 293
    .end local v4    # "adnAccountName":Ljava/lang/String;
    .end local v5    # "adnAccountType":Ljava/lang/String;
    .end local v6    # "adnContactId":Ljava/lang/Long;
    .end local v7    # "adnContactId$iterator":Ljava/util/Iterator;
    .end local v9    # "builder":Landroid/net/Uri$Builder;
    .end local v11    # "contactId$iterator":Ljava/util/Iterator;
    .end local v15    # "deleteOp":Landroid/content/ContentProviderOperation$Builder;
    .end local v22    # "index":Ljava/lang/String;
    .end local v24    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v26    # "result":I
    .end local v28    # "undeletedAdnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v30    # "values":Landroid/content/ContentValues;
    .end local v31    # "where":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 294
    .local v18, "e":Ljava/lang/InterruptedException;
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    .line 295
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get0()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "delete error"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 271
    .end local v18    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "adnAccountName":Ljava/lang/String;
    .restart local v5    # "adnAccountType":Ljava/lang/String;
    .restart local v6    # "adnContactId":Ljava/lang/Long;
    .restart local v7    # "adnContactId$iterator":Ljava/util/Iterator;
    .restart local v11    # "contactId$iterator":Ljava/util/Iterator;
    .restart local v22    # "index":Ljava/lang/String;
    .restart local v24    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v26    # "result":I
    .restart local v28    # "undeletedAdnContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v29    # "uri":Landroid/net/Uri;
    .restart local v30    # "values":Landroid/content/ContentValues;
    .restart local v31    # "where":Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;Ljava/lang/Void;)V
    .locals 9
    .param p1, "aTarget"    # Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;
    .param p2, "aResult"    # Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 394
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    return-void

    .line 398
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mTotalCountContactsToDelete:I

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletedCount:I

    sub-int v3, v4, v5

    .line 406
    .local v3, "unDeletedContactCount":I
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    if-nez v4, :cond_4

    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, "toastStr":Ljava/lang/CharSequence;
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletedCount:I

    if-lez v4, :cond_1

    .line 409
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 410
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletedCount:I

    const v6, 0x7f0f0003

    .line 409
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 411
    .local v2, "toastStr":Ljava/lang/CharSequence;
    invoke-static {p1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 423
    .end local v2    # "toastStr":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 424
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 430
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->finish()V

    .line 393
    :cond_3
    return-void

    .line 413
    :cond_4
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 414
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    const v5, 0x7f0901fa

    .line 414
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 417
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 418
    const/high16 v6, 0x7f0f0000

    .line 417
    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 414
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 420
    const v5, 0x7f090200

    .line 414
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 425
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v4, "result_list"

    .line 427
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mUndeletedContactsList:Ljava/util/ArrayList;

    .line 426
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    const/4 v4, -0x1

    invoke-virtual {p1, v4, v1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 399
    .end local v1    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "unDeletedContactCount":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "aTarget"    # Ljava/lang/Object;
    .param p2, "aResult"    # Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .end local p1    # "aTarget":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "aResult":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)V
    .locals 6
    .param p1, "aTarget"    # Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mTotalCountContactsToDelete:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mTotalCountContactsToDelete:I

    .line 159
    const v3, 0x7f0f0002

    .line 158
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    .line 165
    const v1, 0x7f0901f9

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$1;-><init>(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;)V

    .line 164
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    .line 175
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$2;-><init>(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 185
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mDeletionResult:I

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 153
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aTarget"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .end local p1    # "aTarget":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->onPreExecute(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "aValues"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    .line 380
    .local v0, "target":Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->mProgress:Landroid/app/ProgressDialog;

    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "aValues"    # [Ljava/lang/Object;

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "aValues":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
