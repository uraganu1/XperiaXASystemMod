.class public Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;
.source "SimImportActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;,
        Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;,
        Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;,
        Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;,
        Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final ADDITIONAL_NUMBERS_ANRS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final ADDITIONAL_NUMBERS_EMAILS_SEPARATOR:Ljava/lang/String; = ","

.field private static final LOG_TAG:Ljava/lang/String; = "SimImportActivity"

.field private static final MENU_IMPORT_ONE:I = 0x1

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAllButton:Landroid/widget/Button;

.field private mContactsList:Landroid/widget/ListView;

.field protected mEmptyText:Landroid/widget/TextView;

.field private mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

.field private mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mInitialSelection:I

.field protected mIsListEnabled:Z

.field protected mListAdapter:Landroid/widget/BaseAdapter;

.field protected mProgress:Landroid/widget/ProgressBar;

.field private mProgressDialogFragment:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

.field private mSimContactItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->actuallyImportOneSimContact(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->displayProgress(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setAdapter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mIsListEnabled:Z

    .line 101
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInitialSelection:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    .line 113
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSubscription:I

    .line 83
    return-void
.end method

.method private static actuallyImportOneSimContact(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;Landroid/accounts/Account;)Z
    .locals 26
    .param p0, "item"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 346
    new-instance v20, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;

    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 347
    .local v20, "namePhoneTypePair":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 348
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    move/from16 v23, v0

    .line 349
    .local v23, "phoneType":I
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v22

    .line 350
    .local v22, "phoneNumber":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, "emailAddresses":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 353
    const-string/jumbo v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 357
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get1(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v15

    .line 360
    .local v15, "extraNumberList":Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v21, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 363
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/16 v17, 0x0

    .line 364
    .local v17, "myGroupsId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 366
    .local v18, "myGroupsRowId":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 367
    const-string/jumbo v2, "account_name"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 368
    const-string/jumbo v2, "account_type"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 371
    const-string/jumbo v2, "com.google"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    const/16 v25, 0x0

    .line 374
    .local v25, "tmpCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 375
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "sourceid"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "_id"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 376
    const-string/jumbo v5, "title=? and account_type=? and account_name=?"

    .line 379
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v2, "My Contacts"

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 380
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v6, v7

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 374
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 381
    .local v25, "tmpCursor":Landroid/database/Cursor;
    if-eqz v25, :cond_0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 383
    .local v17, "myGroupsId":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 386
    .end local v17    # "myGroupsId":Ljava/lang/String;
    .end local v18    # "myGroupsRowId":Ljava/lang/String;
    :cond_0
    if-eqz v25, :cond_1

    .line 387
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 394
    .end local v25    # "tmpCursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 397
    const-string/jumbo v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 398
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 399
    const-string/jumbo v2, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 400
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    if-eqz v22, :cond_2

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    :cond_2
    :goto_2
    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    .line 414
    const/4 v2, 0x0

    array-length v3, v12

    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v11, v12, v2

    .line 415
    .local v11, "emailAddress":Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 416
    const-string/jumbo v4, "raw_contact_id"

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 417
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 418
    const-string/jumbo v4, "data2"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 419
    const-string/jumbo v4, "data1"

    invoke-virtual {v8, v4, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 420
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 355
    .end local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "emailAddress":Ljava/lang/String;
    .end local v15    # "extraNumberList":Ljava/lang/String;
    .end local v21    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    const/4 v12, 0x0

    .local v12, "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 385
    .end local v12    # "emailAddressArray":[Ljava/lang/String;
    .restart local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v15    # "extraNumberList":Ljava/lang/String;
    .restart local v18    # "myGroupsRowId":Ljava/lang/String;
    .restart local v21    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v2

    .line 386
    if-eqz v25, :cond_4

    .line 387
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_4
    throw v2

    .line 392
    .local v17, "myGroupsId":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 404
    .end local v17    # "myGroupsId":Ljava/lang/String;
    .end local v18    # "myGroupsRowId":Ljava/lang/String;
    :cond_6
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 405
    const-string/jumbo v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 406
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 407
    const-string/jumbo v2, "data2"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 408
    const-string/jumbo v2, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 409
    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 410
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 425
    :cond_7
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 426
    const-string/jumbo v2, ":"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 427
    .local v16, "extraNumbers":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_8

    aget-object v14, v16, v2

    .line 428
    .local v14, "extraNumber":Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 429
    const-string/jumbo v4, "raw_contact_id"

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 430
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 431
    const-string/jumbo v4, "data2"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 432
    const-string/jumbo v4, "data1"

    invoke-virtual {v8, v4, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 433
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 437
    .end local v14    # "extraNumber":Ljava/lang/String;
    .end local v16    # "extraNumbers":[Ljava/lang/String;
    :cond_8
    if-nez v17, :cond_9

    if-eqz v18, :cond_a

    .line 438
    :cond_9
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 439
    const-string/jumbo v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 440
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 441
    if-eqz v17, :cond_b

    .line 442
    const-string/jumbo v2, "group_sourceid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 446
    :goto_5
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_a
    :try_start_1
    const-string/jumbo v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    .line 452
    .local v24, "res":[Landroid/content/ContentProviderResult;
    if-eqz v24, :cond_c

    .line 453
    const/4 v2, 0x1

    return v2

    .line 444
    .end local v24    # "res":[Landroid/content/ContentProviderResult;
    :cond_b
    const-string/jumbo v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5

    .line 457
    :catch_0
    move-exception v9

    .line 458
    .local v9, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v2, "SimImportActivity"

    const-string/jumbo v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v9    # "e":Landroid/content/OperationApplicationException;
    :cond_c
    :goto_6
    const/4 v2, 0x0

    return v2

    .line 455
    :catch_1
    move-exception v10

    .line 456
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SimImportActivity"

    const-string/jumbo v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected static createSimContactItem(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    monitor-enter p0

    .line 331
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "name":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "number":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "email":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "extraNumber":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    .end local v2    # "item":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    monitor-exit p0

    .line 337
    return-object v2

    .line 330
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "extraNumber":Ljava/lang/String;
    .end local v2    # "item":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private displayProgress(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 757
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "subscription"

    .line 758
    const/4 v3, -0x1

    .line 757
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 759
    .local v1, "sub":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getEmptyLoading(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 755
    return-void

    .line 759
    :cond_0
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimContactsEmpty(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 761
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private importOneSimContact(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 466
    if-gez p1, :cond_0

    .line 467
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 471
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    .line 472
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    if-eqz v0, :cond_1

    .line 474
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    :goto_0
    return-void

    .line 492
    :cond_1
    const-string/jumbo v2, "SimImportActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to move the cursor to the position \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private query()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 703
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mIsListEnabled:Z

    if-nez v2, :cond_0

    .line 704
    return-void

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "filterValues":[Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/MTKIccProviderConstantsUtil;->COLUMN_SIM_CONTACT_INFO:[Ljava/lang/String;

    aget-object v0, v2, v4

    .line 709
    .local v0, "column":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;-><init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 711
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->displayProgress(Z)V

    .line 702
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 739
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->newAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 746
    :goto_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInitialSelection:I

    if-ltz v0, :cond_0

    .line 747
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInitialSelection:I

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 748
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setSelection(I)V

    .line 749
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 750
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 751
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 714
    :cond_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method protected getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method protected getSimContactItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected incrementProgressDialog()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mProgressDialogFragment:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mProgressDialogFragment:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->incrementProgressDialog(I)V

    .line 696
    :cond_0
    return-void
.end method

.method protected newAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 595
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 607
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 597
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 598
    .local v0, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 602
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v1, v2, -0x1

    .line 603
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->importOneSimContact(I)V

    .line 604
    const/4 v2, 0x1

    return v2

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 500
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 502
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 503
    return-void

    .line 505
    :cond_0
    const v5, 0x7f040009

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setContentView(I)V

    .line 506
    const v5, 0x1020004

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mEmptyText:Landroid/widget/TextView;

    .line 507
    const v5, 0x7f0e003f

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 509
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->query()V

    .line 511
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mContactsList:Landroid/widget/ListView;

    .line 513
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 514
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400cf

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 515
    .local v2, "header":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 516
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 518
    const v6, 0x7f0d0198

    .line 517
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 519
    .local v4, "leftPadding":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v5, v4, v7, v4, v7}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 520
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mContactsList:Landroid/widget/ListView;

    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 521
    const v5, 0x7f0e020c

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mAllButton:Landroid/widget/Button;

    .line 522
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mAllButton:Landroid/widget/Button;

    new-instance v6, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$2;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 538
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 539
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 540
    const-string/jumbo v5, "subscription"

    .line 541
    const/4 v6, -0x1

    .line 540
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSubscription:I

    .line 542
    const-string/jumbo v5, "account_name"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v5, "account_type"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 548
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSubscription:I

    invoke-static {p0, v5}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimContactsTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 552
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 499
    return-void

    .line 545
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mAccount:Landroid/accounts/Account;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 613
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 615
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 616
    .local v0, "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 617
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 620
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0902c8

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 612
    .end local v0    # "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 567
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onDestroy()V

    .line 568
    const-string/jumbo v0, "SimImportActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->cancel(Z)Z

    .line 566
    :cond_0
    return-void
.end method

.method protected onDoneBtnClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 661
    return-void

    .line 664
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;-><init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSubscription:I

    .line 666
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->newInstance(II)Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mProgressDialogFragment:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    .line 668
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mProgressDialogFragment:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 673
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 674
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mIsListEnabled:Z

    .line 676
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    .line 634
    packed-switch p1, :pswitch_data_0

    .line 656
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 638
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    .line 639
    .local v6, "item":Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    if-eqz v6, :cond_0

    .line 640
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v7

    .line 641
    .local v7, "phoneNumber":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 647
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 648
    const v2, 0x7f0901d8

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 649
    const-wide/16 v4, 0x0

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 650
    invoke-static {p0, v7, v8}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 651
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->finish()V

    .line 652
    return v8

    .line 644
    :cond_1
    return v8

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 629
    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->importOneSimContact(I)V

    .line 625
    return-void
.end method

.method public onProgressCanceled()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->cancel(Z)Z

    .line 806
    :cond_0
    return-void
.end method

.method public onProgressDismissed()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mImportTask:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->cancel(Z)Z

    .line 799
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onResume()V

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mAllButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 556
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    .line 582
    const-string/jumbo v2, "subscription"

    .line 583
    const/4 v3, -0x1

    .line 582
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 584
    .local v1, "sub":I
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 586
    .end local v1    # "sub":I
    :cond_0
    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mInitialSelection:I

    .line 590
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected setSimContactItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "simContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mSimContactItems:Ljava/util/ArrayList;

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 681
    :cond_0
    return-void
.end method
