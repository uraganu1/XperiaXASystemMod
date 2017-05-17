.class Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;
.super Ljava/lang/Object;
.source "ContactsReader.java"


# static fields
.field private static final ACCOUNT_AND_ID_SELECTION_CLAUSE:Ljava/lang/String; = "contact_id = ? AND account_name = ?"

.field private static final ACCOUNT_ID_AND_MIMETYPE_SELECTION_CLAUSE:Ljava/lang/String; = "contact_id = ? AND account_name = ? AND mimetype = ?"

.field protected static final RESULT_BACKUP_DONE:I = 0x0

.field protected static final RESULT_BACKUP_ERROR:I = 0x2

.field protected static final RESULT_NO_BACKUP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactsReader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    .line 54
    return-void
.end method

.method private getContactAddresses(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    .line 516
    const/4 v1, 0x0

    aput-object p1, v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 517
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    const/4 v2, 0x2

    aput-object v1, v5, v2

    .line 520
    .local v5, "whereParameters":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 521
    const-string/jumbo v4, "contact_id = ? AND account_name = ? AND mimetype = ?"

    .line 520
    const/4 v3, 0x0

    .line 521
    const/4 v6, 0x0

    .line 520
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 523
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 525
    .local v14, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Address;>;"
    if-eqz v15, :cond_0

    .line 526
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Address;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v14, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Address;>;"
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    const-string/jumbo v1, "data5"

    .line 530
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 529
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "poBox":Ljava/lang/String;
    const-string/jumbo v1, "data4"

    .line 533
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 532
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "street":Ljava/lang/String;
    const-string/jumbo v1, "data7"

    .line 536
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 535
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 540
    .local v9, "city":Ljava/lang/String;
    const-string/jumbo v1, "data8"

    .line 539
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 538
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 543
    .local v10, "state":Ljava/lang/String;
    const-string/jumbo v1, "data9"

    .line 542
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 541
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, "postalCode":Ljava/lang/String;
    const-string/jumbo v1, "data10"

    .line 545
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 544
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 549
    .local v12, "country":Ljava/lang/String;
    const-string/jumbo v1, "data2"

    .line 548
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 547
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 550
    .local v13, "type":Ljava/lang/String;
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .local v6, "a":Lcom/sonyericsson/android/socialphonebook/backup/model/Address;
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 554
    .end local v6    # "a":Lcom/sonyericsson/android/socialphonebook/backup/model/Address;
    .end local v7    # "poBox":Ljava/lang/String;
    .end local v8    # "street":Ljava/lang/String;
    .end local v9    # "city":Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "postalCode":Ljava/lang/String;
    .end local v12    # "country":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 555
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "ContactsReader"

    const-string/jumbo v2, "Exception in fetching contact Adresses."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 560
    .end local v14    # "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Address;>;"
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v14

    .line 557
    .restart local v14    # "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Address;>;"
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 556
    :catchall_0
    move-exception v1

    .line 557
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 556
    throw v1
.end method

.method private getContactNotes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 480
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 481
    aput-object p1, v4, v1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 482
    const-string/jumbo v0, "vnd.android.cursor.item/note"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 484
    .local v4, "whereParameters":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 485
    const-string/jumbo v3, "contact_id = ? AND account_name = ? AND mimetype = ?"

    move-object v5, v2

    .line 484
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 487
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 489
    .local v9, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 490
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v9, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string/jumbo v0, "data1"

    .line 493
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 495
    .local v8, "note":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 496
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v8    # "note":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 505
    .end local v9    # "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v9

    .line 499
    .restart local v9    # "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 500
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ContactsReader"

    const-string/jumbo v1, "Exception in fetching contact notes."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 501
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    throw v0
.end method

.method private getContactOrg(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 609
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 610
    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 611
    const-string/jumbo v0, "vnd.android.cursor.item/organization"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 614
    .local v4, "whereParameters":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 615
    const-string/jumbo v3, "contact_id = ? AND account_name = ? AND mimetype = ?"

    move-object v5, v2

    .line 614
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 617
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 618
    .local v10, "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;>;"
    if-eqz v6, :cond_2

    .line 620
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v10, "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    const-string/jumbo v0, "data1"

    .line 623
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, "orgName":Ljava/lang/String;
    const-string/jumbo v0, "data4"

    .line 625
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, "title":Ljava/lang/String;
    const-string/jumbo v0, "data2"

    .line 627
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 629
    .local v12, "type":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    :cond_1
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-direct {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;-><init>()V

    .line 631
    .local v8, "org":Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;
    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->setOrganization(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v8, v11}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->setTitle(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->setType(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 637
    .end local v8    # "org":Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;
    .end local v9    # "orgName":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 638
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ContactsReader"

    const-string/jumbo v1, "Exception in fetching self contact organization details."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 643
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;>;"
    :cond_2
    :goto_1
    return-object v10

    .line 640
    .restart local v10    # "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;>;"
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 639
    :catchall_0
    move-exception v0

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 639
    throw v0
.end method

.method private getIM(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/IM;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 569
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 570
    aput-object p1, v4, v1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 571
    const-string/jumbo v0, "vnd.android.cursor.item/im"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 574
    .local v4, "whereParameters":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 575
    const-string/jumbo v3, "contact_id = ? AND account_name = ? AND mimetype = ?"

    move-object v5, v2

    .line 574
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 577
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 579
    .local v9, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/IM;>;"
    if-eqz v6, :cond_1

    .line 580
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/IM;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v9, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/IM;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    const-string/jumbo v0, "data1"

    .line 583
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "imName":Ljava/lang/String;
    const-string/jumbo v0, "data2"

    .line 585
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "imType":Ljava/lang/String;
    const-string/jumbo v0, "data5"

    .line 587
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 589
    .local v12, "protocol":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 590
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-direct {v8, v10, v11, v12}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .local v8, "im":Lcom/sonyericsson/android/socialphonebook/backup/model/IM;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 594
    .end local v8    # "im":Lcom/sonyericsson/android/socialphonebook/backup/model/IM;
    .end local v10    # "imName":Ljava/lang/String;
    .end local v11    # "imType":Ljava/lang/String;
    .end local v12    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 595
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ContactsReader"

    const-string/jumbo v1, "Exception in fetching contact IM adresses."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 600
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/IM;>;"
    :cond_1
    :goto_1
    return-object v9

    .line 597
    .restart local v9    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/IM;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 596
    :catchall_0
    move-exception v0

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 596
    throw v0
.end method

.method private saveContactsToFile(Ljava/util/ArrayList;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    const/4 v12, 0x1

    .line 225
    const-string/jumbo v8, "ContactsReader"

    const-string/jumbo v9, "Saving contacts to temp file"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "TempContacts"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v3, "file":Ljava/io/File;
    const-string/jumbo v8, "ContactsReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "length of file is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v4, 0x0

    .line 233
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v8, "ContactsReader"

    const-string/jumbo v9, "fileoutput stream created"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;

    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;-><init>()V

    .line 241
    .local v7, "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->clear()V

    .line 243
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .line 245
    .local v0, "contact":Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
    const-string/jumbo v8, "Contact"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v8, "ID"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v8, "Name"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getFullName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 255
    const-string/jumbo v8, "Phone"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 258
    const-string/jumbo v9, "Number"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v9, "Type"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 265
    :cond_0
    const-string/jumbo v8, "Phone"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 269
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 270
    const-string/jumbo v8, "Address"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 271
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 273
    const-string/jumbo v9, "POBox"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getPoBox()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v9, "Street"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getStreet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v9, "City"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v9, "PostalCode"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v9, "State"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v9, "Country"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v9, "Type"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 294
    :cond_2
    const-string/jumbo v8, "Address"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 298
    .end local v6    # "j":I
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 299
    const-string/jumbo v8, "Email"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 300
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 302
    const-string/jumbo v9, "Address"

    .line 303
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v9, "Type"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 308
    :cond_4
    const-string/jumbo v8, "Email"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 312
    .end local v6    # "j":I
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 313
    const-string/jumbo v8, "Im"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 314
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 316
    const-string/jumbo v9, "Address"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v9, "Protocol"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v9, "Type"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 325
    :cond_6
    const-string/jumbo v8, "Im"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 329
    .end local v6    # "j":I
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 330
    const-string/jumbo v8, "Organization"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 331
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 333
    const-string/jumbo v9, "Title"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v9, "Name"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->getOrganization()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v9, "Type"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 342
    :cond_8
    const-string/jumbo v8, "Organization"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 346
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getNotes()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 347
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getNotes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_a

    .line 350
    const-string/jumbo v9, "Notes"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getNotes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 349
    invoke-virtual {v7, v9, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 354
    .end local v6    # "j":I
    :cond_a
    const-string/jumbo v8, "Contact"

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v8, "ContactsReader"

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 360
    const-string/jumbo v8, "ContactsReader"

    const-string/jumbo v9, "bytes written to file"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 365
    .end local v0    # "contact":Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
    .end local v1    # "contact$iterator":Ljava/util/Iterator;
    .end local v7    # "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 366
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    :try_start_2
    const-string/jumbo v8, "ContactsReader"

    const-string/jumbo v9, "Contacts Backup file not generated"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 371
    const/4 v8, 0x0

    return v8

    .line 369
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "contact$iterator":Ljava/util/Iterator;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    :cond_b
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 364
    return v12

    .line 367
    .end local v1    # "contact$iterator":Ljava/util/Iterator;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    :catchall_0
    move-exception v8

    .line 369
    :goto_8
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 367
    throw v8

    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 365
    .local v4, "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_7
.end method

.method private updateContactName(Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;)V
    .locals 8
    .param p1, "contact"    # Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .prologue
    const/4 v2, 0x0

    .line 408
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 410
    const-string/jumbo v0, "vnd.android.cursor.item/name"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 413
    .local v4, "whereParameters":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 414
    const-string/jumbo v3, "contact_id = ? AND account_name = ? AND mimetype = ?"

    move-object v5, v2

    .line 413
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 416
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 418
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string/jumbo v0, "data4"

    .line 419
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setPrefix(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v0, "data2"

    .line 421
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setGivenName(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "data5"

    .line 423
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setMiddleName(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v0, "data3"

    .line 425
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setFamilyName(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v0, "data6"

    .line 427
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setSuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v7

    .line 431
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ContactsReader"

    const-string/jumbo v1, "Exception in fetching contact Adresses."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 432
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    throw v0
.end method


# virtual methods
.method public generateBackupContactsList(Z)I
    .locals 24
    .param p1, "fullbackup"    # Z

    .prologue
    .line 67
    const-string/jumbo v5, "account_type=? AND account_name=?"

    .line 68
    .local v5, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v6, v3

    .line 73
    .local v6, "whereParams":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 74
    const/4 v7, 0x0

    .line 73
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 76
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 77
    const-string/jumbo v2, "ContactsReader"

    const-string/jumbo v3, "Contact list is empty."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x2

    return v2

    .line 81
    :cond_0
    const/4 v10, 0x0

    .line 82
    .local v10, "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    const/4 v9, 0x0

    .line 83
    .local v9, "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    const/16 v16, 0x1

    .line 87
    .local v16, "emptyBackupListFlag":Z
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 88
    const-string/jumbo v2, "ContactsReader"

    const-string/jumbo v3, "Contacts list is empty."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    const/4 v2, 0x2

    .line 183
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 89
    return v2

    .line 92
    :cond_1
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .end local v10    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .local v11, "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    move-result-object v9

    .line 96
    .local v9, "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->loadIdList(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    .line 101
    .local v20, "runtime":Ljava/lang/Runtime;
    :cond_2
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    const-string/jumbo v2, "contact_id"

    .line 103
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 107
    .local v17, "id":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    const-string/jumbo v2, "ContactsReader"

    const-string/jumbo v3, "Invalid contact detected"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    .end local v9    # "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .end local v17    # "id":Ljava/lang/String;
    .end local v20    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    move-object v10, v11

    .line 180
    .end local v11    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    :goto_1
    :try_start_3
    const-string/jumbo v2, "ContactsReader"

    const-string/jumbo v3, "Exception in generating the contacts list."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    const/4 v2, 0x1

    .line 183
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 181
    return v2

    .line 113
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .restart local v11    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v20    # "runtime":Ljava/lang/Runtime;
    :cond_3
    :try_start_4
    const-string/jumbo v2, "version"

    .line 112
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "currentVersion":Ljava/lang/String;
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 116
    const-string/jumbo v2, "ContactsReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4
    if-nez p1, :cond_5

    .line 129
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getContactVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 131
    .local v21, "version":Ljava/lang/String;
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    const-string/jumbo v2, "ContactsReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removing id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->deleteContact(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 182
    .end local v9    # "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .end local v12    # "currentVersion":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    .end local v20    # "runtime":Ljava/lang/Runtime;
    .end local v21    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v10, v11

    .line 183
    .end local v11    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 182
    throw v2

    .line 140
    .restart local v9    # "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .restart local v11    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .restart local v12    # "currentVersion":Ljava/lang/String;
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v20    # "runtime":Ljava/lang/Runtime;
    :cond_5
    :try_start_5
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    invoke-direct {v8}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;-><init>()V

    .line 142
    .local v8, "contact":Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setVersion(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setId(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->updateContactName(Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;)V

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getPhoneNumbers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setPhone(Ljava/util/ArrayList;)V

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getEmailAddresses(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setEmail(Ljava/util/ArrayList;)V

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getContactNotes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setNotes(Ljava/util/ArrayList;)V

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getContactAddresses(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setAddresses(Ljava/util/ArrayList;)V

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getIM(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setImAddresses(Ljava/util/ArrayList;)V

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getContactOrg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setOrganization(Ljava/util/ArrayList;)V

    .line 156
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getAllContacts()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 158
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getAllContacts()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_6
    const/16 v16, 0x0

    .line 162
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-wide/32 v22, 0x100000

    cmp-long v2, v2, v22

    if-gez v2, :cond_2

    .line 163
    const-string/jumbo v2, "ContactsReader"

    const-string/jumbo v3, "Free memory less than 1M. Saving contacts to temp file "

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->saveContactsToFile(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 167
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 168
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "No Free memory available. Unable to restore contacts"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 175
    .end local v8    # "contact":Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
    .end local v12    # "currentVersion":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->saveContactsToFile(Ljava/util/ArrayList;)Z

    .line 177
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 192
    if-eqz v16, :cond_c

    .line 194
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getAllContacts()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v14

    .line 196
    .local v14, "deletedContactsList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->loadIdList(Landroid/content/Context;)V

    .line 199
    if-eqz v14, :cond_a

    .line 200
    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 201
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->deleteContact(Ljava/lang/String;)V

    goto :goto_3

    .line 205
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "key$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->saveIdList(Landroid/content/Context;)V

    .line 207
    const/4 v2, 0x1

    return v2

    .line 210
    :cond_b
    const/4 v2, 0x2

    return v2

    .line 214
    .end local v14    # "deletedContactsList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const/4 v2, 0x0

    return v2

    .line 182
    .end local v9    # "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .end local v11    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .end local v20    # "runtime":Ljava/lang/Runtime;
    :catchall_1
    move-exception v2

    goto/16 :goto_2

    .line 179
    .local v9, "contactIdList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .restart local v10    # "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    :catch_1
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method protected getEmailAddresses(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Email;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 446
    const-string/jumbo v3, "contact_id = ? AND account_name = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 447
    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v4, v10

    move-object v5, v2

    .line 445
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 452
    .local v9, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    if-eqz v6, :cond_0

    .line 454
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v9, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    .line 460
    const-string/jumbo v0, "data1"

    .line 459
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string/jumbo v1, "data2"

    .line 461
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-direct {v7, v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v7, "e":Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    .end local v7    # "e":Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
    :catch_0
    move-exception v8

    .line 466
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ContactsReader"

    const-string/jumbo v1, "Exception in fetching email addresses."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 471
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    :cond_0
    :goto_1
    return-object v9

    .line 468
    .restart local v9    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 467
    :catchall_0
    move-exception v0

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    throw v0
.end method

.method protected getPhoneNumbers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 382
    const-string/jumbo v3, "contact_id = ? AND account_name = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 383
    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v4, v9

    move-object v5, v2

    .line 381
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 385
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 387
    .local v8, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    if-eqz v6, :cond_0

    .line 389
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v8, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    .line 394
    const-string/jumbo v1, "data1"

    .line 393
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    const-string/jumbo v2, "data2"

    .line 395
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 394
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ContactsReader"

    const-string/jumbo v1, "Exception in fetching phone numbers."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 404
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    :cond_0
    :goto_1
    return-object v8

    .line 401
    .restart local v8    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 400
    :catchall_0
    move-exception v0

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 400
    throw v0
.end method
