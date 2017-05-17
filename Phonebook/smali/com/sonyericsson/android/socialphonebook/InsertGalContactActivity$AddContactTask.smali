.class Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "InsertGalContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        "Ljava/lang/Void;",
        "Landroid/app/AlertDialog$Builder;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final mActionAfterSave:I

.field volatile mInsertedContactId:J


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->addToContact(Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "action"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mInsertedContactId:J

    .line 157
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mActionAfterSave:I

    .line 154
    return-void
.end method

.method private addToContact(Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V
    .locals 23
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 278
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 279
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v12, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mActionAfterSave:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 282
    const-string/jumbo v20, "account_name"

    const-string/jumbo v21, "Temporary Account"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    .line 283
    const-string/jumbo v21, "account_type"

    const-string/jumbo v22, "will.be.deleted.automatically"

    .line 282
    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 289
    :goto_0
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/model/RawContact;

    .line 292
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v13}, Lcom/android/contacts/common/model/RawContact;->getNamedDataItems()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "namedDataItem$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 293
    .local v10, "namedDataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    iget-object v0, v10, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->dataItem:Lcom/android/contacts/common/model/dataitem/DataItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 295
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v20, "_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 296
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 297
    const-string/jumbo v20, "raw_contact_id"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 298
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 299
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v10    # "namedDataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    .end local v11    # "namedDataItem$iterator":Ljava/util/Iterator;
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v14    # "rawContact$iterator":Ljava/util/Iterator;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v21, "account_name"

    if-nez p2, :cond_2

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    .line 286
    const-string/jumbo v22, "account_type"

    if-nez p2, :cond_3

    const/16 v20, 0x0

    .line 285
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    .line 287
    const-string/jumbo v22, "data_set"

    if-nez p2, :cond_4

    const/16 v20, 0x0

    .line 285
    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_2

    .line 286
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_3

    .line 287
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_4

    .line 303
    .restart local v14    # "rawContact$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v5, 0x0

    .line 305
    .local v5, "context":Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mTarget:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    .line 307
    .local v5, "context":Landroid/app/Activity;
    const-string/jumbo v20, "com.android.contacts"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v15

    .line 308
    .local v15, "results":[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mActionAfterSave:I

    move/from16 v20, v0

    if-nez v20, :cond_8

    if-eqz v5, :cond_8

    .line 309
    move-object/from16 v18, v5

    .line 310
    .local v18, "target":Landroid/app/Activity;
    new-instance v20, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;-><init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;[Landroid/content/ContentProviderResult;Landroid/app/Activity;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v18    # "target":Landroid/app/Activity;
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 339
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 276
    .end local v5    # "context":Landroid/app/Activity;
    .end local v15    # "results":[Landroid/content/ContentProviderResult;
    :cond_7
    :goto_6
    return-void

    .line 324
    .restart local v5    # "context":Landroid/app/Activity;
    .restart local v15    # "results":[Landroid/content/ContentProviderResult;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mActionAfterSave:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 325
    if-eqz v15, :cond_6

    .line 326
    const/16 v20, 0x0

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 327
    .local v16, "rawContactId":J
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v6

    .line 328
    .local v6, "contactId":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_6

    .line 329
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mInsertedContactId:J
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 333
    .end local v5    # "context":Landroid/app/Activity;
    .end local v6    # "contactId":J
    .end local v15    # "results":[Landroid/content/ContentProviderResult;
    .end local v16    # "rawContactId":J
    :catch_0
    move-exception v8

    .line 334
    .local v8, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    const-string/jumbo v20, "InsertGalContactActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "error occured while execute SQL. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    if-eqz v5, :cond_7

    .line 339
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 335
    .end local v8    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v9

    .line 336
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v20, "InsertGalContactActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "error occured while communicate with SQLite. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    if-eqz v5, :cond_7

    .line 339
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 337
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v20

    .line 338
    if-eqz v5, :cond_9

    .line 339
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 337
    :cond_9
    throw v20
.end method


# virtual methods
.method protected varargs doInBackground(Landroid/app/Activity;[Lcom/android/contacts/common/model/Contact;)Landroid/app/AlertDialog$Builder;
    .locals 13
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "params"    # [Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v7

    .line 167
    .local v7, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 168
    .local v6, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 170
    .local v11, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "gal"

    const/4 v2, 0x1

    invoke-virtual {v7, v2, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 173
    .local v4, "writable":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mActionAfterSave:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 174
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v11}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->addToContact(Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V

    .line 175
    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 182
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 183
    .local v12, "selectedAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {p0, v1, v12, v11}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->addToContact(Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 187
    .end local v12    # "selectedAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;

    .line 188
    const v3, 0x7f0400d5

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    .line 187
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;-><init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 218
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;

    invoke-direct {v10, p0, v0, p2, v11}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;-><init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Landroid/widget/ArrayAdapter;[Lcom/android/contacts/common/model/Contact;Landroid/content/ContentResolver;)V

    .line 227
    .local v10, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$3;

    invoke-direct {v9, p0, p1}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$3;-><init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Landroid/app/Activity;)V

    .line 234
    .local v9, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900bd

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 236
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    return-object v8
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Lcom/android/contacts/common/model/Contact;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->doInBackground(Landroid/app/Activity;[Lcom/android/contacts/common/model/Contact;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 10
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 243
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 249
    :cond_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mActionAfterSave:I

    if-ne v3, v9, :cond_2

    .line 250
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mInsertedContactId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 251
    const-string/jumbo v3, "InsertGalContactActivity"

    const-string/jumbo v4, "fail to insert tempoary contact!!!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 255
    :cond_1
    new-array v0, v9, [J

    .line 256
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->mInsertedContactId:J

    aput-wide v4, v0, v8

    .line 258
    .local v0, "contactIdArray":[J
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonyericsson.android.socialphonebook.action.SEND_VCARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v3, "contacts_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 261
    const-string/jumbo v3, "display_progress"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "contactIdArray":[J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 264
    .restart local v0    # "contactIdArray":[J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "InsertGalContactActivity"

    const-string/jumbo v4, "failed to start send vcard activity. "

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Landroid/app/AlertDialog$Builder;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->onPostExecute(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
