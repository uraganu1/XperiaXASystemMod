.class public Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "ContactsBackupAgent.java"


# static fields
.field private static final BYTE_BUFF:I = 0x400

.field private static final FULL_BACKUP_VCARD:Ljava/lang/String; = "full_backup_vcard.vcf"

.field private static final ISO8859_1_CHARSET:Ljava/lang/String; = "iso-8859-1"

.field private static final TAG:Ljava/lang/String; = "ContactsBackupAgent"

.field private static final UTF8_CHARSET:Ljava/lang/String; = "utf-8"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    .line 65
    return-void
.end method

.method private callParser(Lcom/sonymobile/android/vcard/VCardParser;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "parser"    # Lcom/sonymobile/android/vcard/VCardParser;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 969
    const/4 v1, 0x0

    .line 972
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 973
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Lcom/sonymobile/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    if-eqz v1, :cond_0

    .line 977
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 974
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 976
    if-eqz v1, :cond_1

    .line 977
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 974
    :cond_1
    :goto_1
    throw v2

    .line 979
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static closeOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 552
    if-eqz p0, :cond_0

    .line 554
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ContactsBackupAgent"

    const-string/jumbo v2, "Exception in closing output stream"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compose(Ljava/io/OutputStream;)Z
    .locals 24
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 683
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v9

    .line 684
    .local v9, "brandName":Ljava/lang/String;
    const v4, 0x7f090044

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 686
    .local v22, "vcardTypeStr":Ljava/lang/String;
    const-string/jumbo v4, "docomo"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 687
    const-string/jumbo v4, "kddi"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 686
    if-eqz v4, :cond_1

    .line 689
    :cond_0
    move-object/from16 v22, v9

    .line 690
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->insertEmptyHeader(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v21, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string/jumbo v4, " IN "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string/jumbo v4, "(SELECT contacts._id FROM contacts,raw_contacts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string/jumbo v4, " WHERE contacts.name_raw_contact_id=raw_contacts._id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string/jumbo v4, " AND raw_contacts.account_id="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string/jumbo v4, "(SELECT _id from accounts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string/jumbo v4, " WHERE account_type=\'"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\')"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string/jumbo v4, " AND raw_contacts.is_restricted=0)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 716
    .local v12, "contactsUri":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "requesting_package"

    const-string/jumbo v6, ""

    invoke-virtual {v12, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 718
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 719
    .local v11, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 722
    .local v17, "hasActualEntry":Z
    const/4 v4, 0x1

    :try_start_1
    new-array v5, v4, [Ljava/lang/String;

    .line 723
    const-string/jumbo v4, "lookup"

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 725
    .local v5, "CLMN":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 726
    .local v11, "c":Landroid/database/Cursor;
    const/16 v4, 0x400

    new-array v10, v4, [B

    .line 727
    .local v10, "buff":[B
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .local v20, "lookupKeys":Ljava/lang/StringBuilder;
    if-eqz v11, :cond_9

    .line 730
    const-string/jumbo v4, "lookup"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 732
    .local v19, "lookupClmn":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 733
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 735
    const-string/jumbo v4, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 757
    .end local v5    # "CLMN":[Ljava/lang/String;
    .end local v10    # "buff":[B
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v19    # "lookupClmn":I
    .end local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v16

    .line 758
    .local v16, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "ContactsBackupAgent"

    const-string/jumbo v6, "IOException was emitted during compose vCard."

    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 760
    const/4 v4, 0x0

    .line 768
    if-eqz v11, :cond_2

    .line 769
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 770
    const/4 v11, 0x0

    .line 760
    :cond_2
    return v4

    .line 696
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "contactsUri":Landroid/net/Uri$Builder;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "hasActualEntry":Z
    .end local v21    # "selection":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v16

    .line 697
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "ContactsBackupAgent"

    const-string/jumbo v6, "insert brand to stream header failed. IOException was emitted"

    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 699
    const/4 v4, 0x0

    return v4

    .line 691
    .end local v16    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v15

    .line 692
    .local v15, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "ContactsBackupAgent"

    .line 693
    const-string/jumbo v6, "insert brand to stream header failed. FileNotFoundException was emitted"

    .line 692
    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 695
    const/4 v4, 0x0

    return v4

    .line 738
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "CLMN":[Ljava/lang/String;
    .restart local v10    # "buff":[B
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "contactsUri":Landroid/net/Uri$Builder;
    .restart local v17    # "hasActualEntry":Z
    .restart local v19    # "lookupClmn":I
    .restart local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .restart local v21    # "selection":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 740
    .local v23, "vcardUri":Landroid/net/Uri$Builder;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 741
    const-string/jumbo v4, "vcard_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 742
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    .line 745
    .local v18, "is":Ljava/io/InputStream;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v10, v1, v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-lez v4, :cond_4

    .line 746
    const/16 v17, 0x1

    .line 749
    :cond_4
    if-eqz v18, :cond_5

    .line 750
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 754
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 761
    .end local v5    # "CLMN":[Ljava/lang/String;
    .end local v10    # "buff":[B
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v19    # "lookupClmn":I
    .end local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .end local v23    # "vcardUri":Landroid/net/Uri$Builder;
    :catch_3
    move-exception v14

    .line 762
    .local v14, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string/jumbo v4, "ContactsBackupAgent"

    const-string/jumbo v6, "SQLiteException was emitted during compose vCard."

    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 763
    const/4 v4, 0x0

    .line 768
    if-eqz v11, :cond_6

    .line 769
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 770
    const/4 v11, 0x0

    .line 763
    :cond_6
    return v4

    .line 748
    .end local v14    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v5    # "CLMN":[Ljava/lang/String;
    .restart local v10    # "buff":[B
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "lookupClmn":I
    .restart local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .restart local v23    # "vcardUri":Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v4

    .line 749
    if-eqz v18, :cond_7

    .line 750
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 748
    :cond_7
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 764
    .end local v5    # "CLMN":[Ljava/lang/String;
    .end local v10    # "buff":[B
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v19    # "lookupClmn":I
    .end local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .end local v23    # "vcardUri":Landroid/net/Uri$Builder;
    :catch_4
    move-exception v13

    .line 765
    .local v13, "e":Landroid/database/SQLException;
    :try_start_8
    const-string/jumbo v4, "ContactsBackupAgent"

    const-string/jumbo v6, "SQLException was emitted during compose vCard."

    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 766
    const/4 v4, 0x0

    .line 768
    if-eqz v11, :cond_8

    .line 769
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 770
    const/4 v11, 0x0

    .line 766
    :cond_8
    return v4

    .line 768
    .end local v13    # "e":Landroid/database/SQLException;
    .restart local v5    # "CLMN":[Ljava/lang/String;
    .restart local v10    # "buff":[B
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v11, :cond_a

    .line 769
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 770
    const/4 v11, 0x0

    .line 774
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_a
    return v17

    .line 767
    .end local v5    # "CLMN":[Ljava/lang/String;
    .end local v10    # "buff":[B
    .end local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v4

    .line 768
    if-eqz v11, :cond_b

    .line 769
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 770
    const/4 v11, 0x0

    .line 767
    :cond_b
    throw v4
.end method

.method private copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "buff"    # [B
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, "copiedLength":I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 799
    :cond_0
    return v0

    .line 802
    :cond_1
    const/4 v1, 0x0

    .line 804
    .local v1, "sz":I
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 805
    if-lez v1, :cond_3

    .line 806
    invoke-virtual {p3, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 807
    add-int/2addr v0, v1

    .line 809
    :cond_3
    if-gtz v1, :cond_2

    .line 811
    return v0
.end method

.method private doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;ZLcom/sonymobile/android/vcard/VCardSourceDetector;Lcom/android/contacts/common/model/account/AccountType;)Z
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "showEntryParseProgress"    # Z
    .param p4, "detector"    # Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .param p5, "accType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 891
    const/4 v14, 0x0

    .line 892
    .local v14, "try21":Z
    const/4 v15, 0x0

    .line 894
    .local v15, "try30":Z
    const v1, 0x7f090043

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v16

    .line 895
    .local v16, "vcardType":I
    const/4 v9, 0x0

    .line 903
    .local v9, "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    const/4 v15, 0x1

    .line 905
    new-instance v9, Lcom/sonymobile/android/vcard/VCardEntryConstructor;

    .end local v9    # "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    const v1, -0x3fffffff    # -2.0000002f

    move-object/from16 v0, p2

    invoke-direct {v9, v1, v0}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 911
    .local v9, "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    :goto_0
    new-instance v8, Lcom/sonymobile/android/vcard/VCardEntryCommitter;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/sonymobile/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 912
    .local v8, "committer":Lcom/sonymobile/android/vcard/VCardEntryCommitter;
    invoke-virtual {v9, v8}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/sonymobile/android/vcard/VCardEntryHandler;)V

    .line 913
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v12

    .line 917
    .local v12, "estimatedCharset":Ljava/lang/String;
    if-eqz v12, :cond_1

    move-object v13, v12

    .line 918
    .local v13, "targetCharset":Ljava/lang/String;
    :goto_1
    if-eqz v14, :cond_3

    .line 923
    :try_start_0
    new-instance v7, Lcom/sonymobile/android/vcard/VCardParser_V21;

    invoke-direct {v7}, Lcom/sonymobile/android/vcard/VCardParser_V21;-><init>()V

    .line 924
    .local v7, "parser":Lcom/sonymobile/android/vcard/VCardParser;
    invoke-virtual {v7, v9}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 925
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 926
    const-string/jumbo v3, "iso-8859-1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/android/vcard/VCardEntryCounter;Lcom/sonymobile/android/vcard/VCardSourceDetector;ZLcom/sonymobile/android/vcard/VCardParser;)Z
    :try_end_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 927
    const/4 v1, 0x1

    return v1

    .line 907
    .end local v7    # "parser":Lcom/sonymobile/android/vcard/VCardParser;
    .end local v8    # "committer":Lcom/sonymobile/android/vcard/VCardEntryCommitter;
    .end local v12    # "estimatedCharset":Ljava/lang/String;
    .end local v13    # "targetCharset":Ljava/lang/String;
    .local v9, "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    :cond_0
    const/4 v14, 0x1

    .line 908
    new-instance v9, Lcom/sonymobile/android/vcard/VCardEntryConstructor;

    .end local v9    # "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    const/high16 v1, -0x40000000    # -2.0f

    move-object/from16 v0, p2

    invoke-direct {v9, v1, v0}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .local v9, "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    goto :goto_0

    .line 917
    .restart local v8    # "committer":Lcom/sonymobile/android/vcard/VCardEntryCommitter;
    .restart local v12    # "estimatedCharset":Ljava/lang/String;
    :cond_1
    const-string/jumbo v13, "utf-8"

    .restart local v13    # "targetCharset":Ljava/lang/String;
    goto :goto_1

    .line 929
    .restart local v7    # "parser":Lcom/sonymobile/android/vcard/VCardParser;
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 934
    .end local v7    # "parser":Lcom/sonymobile/android/vcard/VCardParser;
    :catch_0
    move-exception v10

    .line 935
    .local v10, "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    const-string/jumbo v1, "ContactsBackupAgent"

    const-string/jumbo v2, "Never reach here."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v1, 0x0

    return v1

    .line 932
    .end local v10    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :catch_1
    move-exception v11

    .line 933
    .local v11, "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    const/4 v15, 0x1

    .line 940
    .end local v11    # "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :cond_3
    if-eqz v15, :cond_5

    .line 942
    :try_start_1
    new-instance v7, Lcom/sonymobile/android/vcard/VCardParser_V30;

    invoke-direct {v7}, Lcom/sonymobile/android/vcard/VCardParser_V30;-><init>()V

    .line 943
    .restart local v7    # "parser":Lcom/sonymobile/android/vcard/VCardParser;
    invoke-virtual {v7, v9}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 944
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 945
    const-string/jumbo v3, "iso-8859-1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/android/vcard/VCardEntryCounter;Lcom/sonymobile/android/vcard/VCardSourceDetector;ZLcom/sonymobile/android/vcard/VCardParser;)Z
    :try_end_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_4

    .line 946
    const/4 v1, 0x1

    return v1

    .line 948
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 953
    .end local v7    # "parser":Lcom/sonymobile/android/vcard/VCardParser;
    :catch_2
    move-exception v10

    .line 954
    .restart local v10    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    const-string/jumbo v1, "ContactsBackupAgent"

    const-string/jumbo v2, "Never reach here."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x0

    return v1

    .line 951
    .end local v10    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :catch_3
    move-exception v11

    .line 952
    .restart local v11    # "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    const/4 v1, 0x0

    return v1

    .line 960
    .end local v11    # "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private fullBackupContacts(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string/jumbo v7, "full_backup_vcard.vcf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v6, "vcardFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->compose(Ljava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 623
    invoke-virtual {p0, v6, p1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V

    .line 627
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    :goto_0
    return-void

    .line 614
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 617
    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 616
    const v8, 0x7f0902cf

    invoke-virtual {p0, v8, v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "errorReason":Ljava/lang/String;
    const-string/jumbo v7, "ContactsBackupAgent"

    invoke-static {v7, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void

    .line 628
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "errorReason":Ljava/lang/String;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 629
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ContactsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Close outputStream faild."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertEmptyHeader(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "vCardTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 780
    .local v0, "buff":[B
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 781
    .local v2, "vcardUri":Landroid/net/Uri$Builder;
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 782
    const-string/jumbo v3, "vcard_type"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 783
    const-string/jumbo v3, "request_header"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 784
    const/4 v1, 0x0

    .line 785
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 787
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 778
    :cond_0
    return-void

    .line 788
    :catchall_0
    move-exception v3

    .line 789
    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 788
    :cond_1
    throw v3
.end method

.method private performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 14
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "keyVersion"    # I
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "deleteFileAfterBackup"    # Z

    .prologue
    .line 410
    sget-boolean v11, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 411
    const-string/jumbo v11, "ContactsBackupAgent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "backing up "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  against key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  and version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 417
    const/4 v5, 0x0

    .line 419
    .local v5, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 422
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-direct {v6, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_3

    .line 425
    const/4 v11, 0x0

    .line 455
    if-eqz p5, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 425
    :cond_1
    :goto_0
    return v11

    .line 456
    :cond_2
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 458
    :catch_0
    move-exception v4

    .line 459
    .local v4, "e":Ljava/lang/SecurityException;
    const-string/jumbo v12, "ContactsBackupAgent"

    const-string/jumbo v13, "Error in deleting temporary file"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 461
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v12, "ContactsBackupAgent"

    const-string/jumbo v13, "Error in closing stream over temporary file."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 430
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v11, 0x1000

    :try_start_4
    new-array v1, v11, [B

    .line 432
    .local v1, "buffer":[B
    if-gez p3, :cond_8

    move-object/from16 v2, p2

    .line 434
    .local v2, "completeKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {p1, v2, v11}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 439
    :cond_4
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .line 440
    .local v10, "size":I
    if-lez v10, :cond_5

    .line 441
    invoke-virtual {p1, v1, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 443
    :cond_5
    if-gtz v10, :cond_4

    .line 445
    const-string/jumbo v11, "ContactsBackupAgent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "backup of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "succeeded"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 446
    const/4 v11, 0x1

    .line 451
    if-eqz v8, :cond_6

    .line 452
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 455
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v12

    if-eqz v12, :cond_9

    .line 446
    :cond_7
    :goto_2
    return v11

    .line 432
    .end local v2    # "completeKey":Ljava/lang/String;
    .end local v10    # "size":I
    :cond_8
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v2

    .restart local v2    # "completeKey":Ljava/lang/String;
    goto :goto_1

    .line 456
    .restart local v10    # "size":I
    :cond_9
    :try_start_7
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 458
    :catch_2
    move-exception v4

    .line 459
    .restart local v4    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v12, "ContactsBackupAgent"

    const-string/jumbo v13, "Error in deleting temporary file"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 460
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 461
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "ContactsBackupAgent"

    const-string/jumbo v13, "Error in closing stream over temporary file."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 447
    .end local v1    # "buffer":[B
    .end local v2    # "completeKey":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v10    # "size":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    .line 448
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v9, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string/jumbo v11, "ContactsBackupAgent"

    const-string/jumbo v12, "Something wrong happened while uploading data."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 451
    if-eqz v7, :cond_a

    .line 452
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 455
    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 465
    .end local v9    # "ioe":Ljava/io/IOException;
    :cond_b
    :goto_4
    const/4 v11, 0x0

    return v11

    .line 456
    .restart local v9    # "ioe":Ljava/io/IOException;
    :cond_c
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 458
    :catch_5
    move-exception v4

    .line 459
    .restart local v4    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v11, "ContactsBackupAgent"

    const-string/jumbo v12, "Error in deleting temporary file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 460
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v3

    .line 461
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "ContactsBackupAgent"

    const-string/jumbo v12, "Error in closing stream over temporary file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 449
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 451
    :goto_5
    if-eqz v7, :cond_d

    .line 452
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 455
    :cond_d
    if-eqz p5, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-result v12

    if-eqz v12, :cond_f

    .line 449
    :cond_e
    :goto_6
    throw v11

    .line 456
    :cond_f
    :try_start_b
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 458
    :catch_7
    move-exception v4

    .line 459
    .restart local v4    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v12, "ContactsBackupAgent"

    const-string/jumbo v13, "Error in deleting temporary file"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 460
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_8
    move-exception v3

    .line 461
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "ContactsBackupAgent"

    const-string/jumbo v13, "Error in closing stream over temporary file."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 449
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    goto :goto_5

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_5

    .line 447
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .local v7, "in":Ljava/io/FileInputStream;
    :catch_9
    move-exception v9

    .restart local v9    # "ioe":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_3

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_a
    move-exception v9

    .restart local v9    # "ioe":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method private readCallLogToFile()Z
    .locals 5

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, "success":Z
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;-><init>(Landroid/content/ContentResolver;)V

    .line 285
    .local v1, "callLogReader":Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;->getCallLogList()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    .local v0, "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->saveCallLogsToFile(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    const-string/jumbo v3, "ContactsBackupAgent"

    const-string/jumbo v4, "call logs saved to file."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v2, 0x1

    .line 295
    :cond_0
    const-string/jumbo v3, "ContactsBackupAgent"

    const-string/jumbo v4, "Call logs backed up."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    :cond_2
    return v2
.end method

.method private readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/android/vcard/VCardEntryCounter;Lcom/sonymobile/android/vcard/VCardSourceDetector;ZLcom/sonymobile/android/vcard/VCardParser;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "counter"    # Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .param p4, "detector"    # Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .param p5, "throwNestedException"    # Z
    .param p6, "parser"    # Lcom/sonymobile/android/vcard/VCardParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardVersionException;,
            Lcom/sonymobile/android/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    .line 848
    if-eqz p6, :cond_0

    .line 849
    :try_start_0
    move-object/from16 v0, p6

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->callParser(Lcom/sonymobile/android/vcard/VCardParser;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_2

    .line 886
    :goto_0
    const/4 v8, 0x1

    return v8

    .line 854
    :cond_0
    :try_start_1
    new-instance v6, Lcom/sonymobile/android/vcard/VCardParser_V21;

    invoke-direct {v6}, Lcom/sonymobile/android/vcard/VCardParser_V21;-><init>()V

    .line 855
    .local v6, "parser_v21":Lcom/sonymobile/android/vcard/VCardParser_V21;
    invoke-virtual {v6, p3}, Lcom/sonymobile/android/vcard/VCardParser_V21;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 856
    invoke-virtual {v6, p4}, Lcom/sonymobile/android/vcard/VCardParser_V21;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 857
    invoke-direct {p0, v6, p1, p2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->callParser(Lcom/sonymobile/android/vcard/VCardParser;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 858
    .end local v6    # "parser_v21":Lcom/sonymobile/android/vcard/VCardParser_V21;
    :catch_0
    move-exception v5

    .line 859
    .local v5, "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :try_start_2
    new-instance v7, Lcom/sonymobile/android/vcard/VCardParser_V30;

    invoke-direct {v7}, Lcom/sonymobile/android/vcard/VCardParser_V30;-><init>()V

    .line 860
    .local v7, "parser_v30":Lcom/sonymobile/android/vcard/VCardParser_V30;
    invoke-virtual {v7, p3}, Lcom/sonymobile/android/vcard/VCardParser_V30;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 861
    invoke-virtual {v7, p4}, Lcom/sonymobile/android/vcard/VCardParser_V30;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 862
    new-instance v8, Lcom/sonymobile/android/vcard/VCardParser_V30;

    invoke-direct {v8}, Lcom/sonymobile/android/vcard/VCardParser_V30;-><init>()V

    invoke-direct {p0, v8, p1, p2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->callParser(Lcom/sonymobile/android/vcard/VCardParser;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 865
    .end local v5    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .end local v7    # "parser_v30":Lcom/sonymobile/android/vcard/VCardParser_V30;
    :catch_1
    move-exception v3

    .line 866
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "ContactsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileNotFoundException was emitted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/4 v8, 0x0

    return v8

    .line 877
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 878
    .local v1, "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    instance-of v8, v1, Lcom/sonymobile/android/vcard/exception/VCardVersionException;

    if-eqz v8, :cond_2

    .line 879
    if-eqz p6, :cond_1

    .line 880
    check-cast v1, Lcom/sonymobile/android/vcard/exception/VCardVersionException;

    .end local v1    # "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    throw v1

    .line 882
    .restart local v1    # "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    :cond_1
    const-string/jumbo v8, "ContactsBackupAgent"

    const-string/jumbo v9, "Unsupported vCard version"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_2
    const/4 v8, 0x0

    return v8

    .line 871
    .end local v1    # "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    :catch_3
    move-exception v2

    .line 872
    .local v2, "e":Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;
    instance-of v8, v2, Lcom/sonymobile/android/vcard/exception/VCardNestedException;

    if-eqz v8, :cond_3

    if-eqz p5, :cond_3

    .line 874
    check-cast v2, Lcom/sonymobile/android/vcard/exception/VCardNestedException;

    .end local v2    # "e":Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;
    throw v2

    .line 876
    .restart local v2    # "e":Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;
    :cond_3
    const/4 v8, 0x0

    return v8

    .line 868
    .end local v2    # "e":Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;
    :catch_4
    move-exception v4

    .line 869
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v8, "ContactsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException was emitted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/4 v8, 0x0

    return v8
.end method

.method private restoreContactsFile(Ljava/io/File;)V
    .locals 19
    .param p1, "destination"    # Ljava/io/File;

    .prologue
    .line 634
    new-instance v4, Lcom/sonymobile/android/vcard/VCardEntryCounter;

    invoke-direct {v4}, Lcom/sonymobile/android/vcard/VCardEntryCounter;-><init>()V

    .line 635
    .local v4, "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    new-instance v5, Lcom/sonymobile/android/vcard/VCardSourceDetector;

    invoke-direct {v5}, Lcom/sonymobile/android/vcard/VCardSourceDetector;-><init>()V

    .line 637
    .local v5, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 640
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    const/4 v6, 0x1

    .line 641
    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 640
    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/android/vcard/VCardEntryCounter;Lcom/sonymobile/android/vcard/VCardSourceDetector;ZLcom/sonymobile/android/vcard/VCardParser;)Z
    :try_end_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 666
    const-string/jumbo v6, "account_type=?"

    .line 667
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountType:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 665
    invoke-virtual {v1, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_4

    .line 676
    new-instance v8, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountType:Ljava/lang/String;

    invoke-direct {v8, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v8, "account":Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v12

    .line 678
    .local v12, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v11

    .line 679
    .local v11, "accType":Lcom/android/contacts/common/model/account/AccountType;
    const/4 v9, 0x1

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;ZLcom/sonymobile/android/vcard/VCardSourceDetector;Lcom/android/contacts/common/model/account/AccountType;)Z

    .line 633
    return-void

    .line 655
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v11    # "accType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v12    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :catch_0
    move-exception v16

    .line 661
    .local v16, "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    const-string/jumbo v1, "ContactsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The vCard version is not supported. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v16    # "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :catch_1
    move-exception v15

    .line 647
    .local v15, "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :try_start_2
    const-string/jumbo v3, "UTF-8"

    const/4 v6, 0x0

    .line 648
    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 647
    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/android/vcard/VCardEntryCounter;Lcom/sonymobile/android/vcard/VCardSourceDetector;ZLcom/sonymobile/android/vcard/VCardParser;)Z
    :try_end_2
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 649
    :catch_2
    move-exception v17

    .line 650
    .local v17, "e2":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    const-string/jumbo v1, "ContactsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Must not reach here. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v17    # "e2":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :catch_3
    move-exception v18

    .line 652
    .local v18, "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    const-string/jumbo v1, "ContactsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The vCard version is not supported. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    .end local v15    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    .end local v18    # "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :catch_4
    move-exception v13

    .line 672
    .local v13, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "ContactsBackupAgent"

    const-string/jumbo v3, "SQLException was emitted during delete contacts."

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void

    .line 668
    .end local v13    # "e":Landroid/database/SQLException;
    :catch_5
    move-exception v14

    .line 669
    .local v14, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "ContactsBackupAgent"

    const-string/jumbo v3, "SQLiteException was emitted during delete contacts."

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method private saveCallLogsToFile(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    const-string/jumbo v7, "ContactsBackupAgent"

    const-string/jumbo v8, "Saving call logs to temp file"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "TempCallLogs"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 336
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;

    invoke-direct {v6}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;-><init>()V

    .line 340
    .local v6, "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    const-string/jumbo v7, "CallLogList"

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 342
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callLog$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    .line 345
    .local v0, "callLog":Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
    const-string/jumbo v7, "Call"

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v7, "ID"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v7, "Number"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v7, "NumberPresentation"

    .line 352
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getNumberPresentation()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 351
    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v7, "Date"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v7, "Duration"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getDuration()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v7, "Type"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v7, "New"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getNew()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v7, "Name"

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getCachedName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v7, "NumberType"

    .line 365
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getCachedNumberType()Ljava/lang/String;

    move-result-object v8

    .line 364
    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v7, "NumberLabel"

    .line 368
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getCachedNumberLabel()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v7, "Call"

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 383
    .end local v0    # "callLog":Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
    .end local v1    # "callLog$iterator":Ljava/util/Iterator;
    .end local v6    # "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 384
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "ContactsBackupAgent"

    const-string/jumbo v8, "Exception in writing data to temporary file"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 389
    const/4 v7, 0x0

    return v7

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "callLog$iterator":Ljava/util/Iterator;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    :cond_0
    :try_start_3
    const-string/jumbo v7, "CallLogList"

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v7, "ContactsBackupAgent"

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 380
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 381
    const/4 v7, 0x1

    .line 386
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 381
    return v7

    .line 385
    .end local v1    # "callLog$iterator":Ljava/util/Iterator;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "xmlBuilder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    :catchall_0
    move-exception v7

    .line 386
    :goto_2
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 385
    throw v7

    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 383
    .local v4, "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private writeNewState(Landroid/os/ParcelFileDescriptor;I)V
    .locals 7
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "iteration"    # I

    .prologue
    .line 306
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 307
    .local v3, "outstream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 316
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 304
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v4, "ContactsBackupAgent"

    const-string/jumbo v5, "New state was not updated."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 316
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 311
    .local v1, "eof":Ljava/io/EOFException;
    :try_start_2
    const-string/jumbo v4, "ContactsBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Integer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was not stored to new state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 316
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 314
    .end local v1    # "eof":Ljava/io/EOFException;
    :catchall_0
    move-exception v4

    .line 315
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 316
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 314
    throw v4
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 23
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Backup Operation Started."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->readCallLogToFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string/jumbo v2, "KEY_CALL_LOGS"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 129
    const-string/jumbo v4, "KEY_CALL_LOGS"

    .line 130
    const-string/jumbo v6, "TempCallLogs"

    .line 129
    const/4 v5, -0x1

    .line 130
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 129
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 138
    :cond_0
    const/4 v5, 0x0

    .line 140
    .local v5, "iterationNumber":I
    const/4 v12, 0x0

    .line 142
    .local v12, "backupSucceeded":Z
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 143
    :cond_1
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "oldState is null or empty, Performing full backup."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v14, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;-><init>(Landroid/content/Context;)V

    .line 146
    .local v14, "contactsReader":Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->generateBackupContactsList(Z)I

    .line 149
    const-string/jumbo v4, "KEY_CONTACTS"

    .line 150
    const/4 v5, 0x1

    const-string/jumbo v6, "TempContacts"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 149
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v12

    .line 153
    .local v12, "backupSucceeded":Z
    if-nez v12, :cond_2

    .line 154
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Backup operation failed"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 164
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    move-result-object v13

    .line 166
    .local v13, "contactList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->updateIdList(Landroid/content/Context;)V

    .line 168
    const-string/jumbo v8, "VERSION_KEY"

    .line 169
    const-string/jumbo v10, "contacts_state"

    .line 168
    const/4 v9, -0x1

    .line 169
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 168
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->writeNewState(Landroid/os/ParcelFileDescriptor;I)V

    .line 173
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Full Backup operation completed."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    .end local v13    # "contactList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .end local v14    # "contactsReader":Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;
    .local v12, "backupSucceeded":Z
    :cond_3
    const/16 v19, 0x0

    .line 177
    .local v19, "instream":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 179
    .local v17, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v20, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v19    # "instream":Ljava/io/FileInputStream;
    .local v20, "instream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v18, Ljava/io/DataInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    .local v18, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    .end local v17    # "in":Ljava/io/DataInputStream;
    move-result v22

    .line 187
    .local v22, "temp":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    .line 189
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "No previous contacts key number available"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 191
    :cond_4
    move/from16 v5, v22

    .line 195
    if-eqz v18, :cond_5

    .line 196
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 198
    :cond_5
    if-eqz v20, :cond_6

    .line 199
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    :cond_6
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    move-object/from16 v19, v20

    .line 204
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v20    # "instream":Ljava/io/FileInputStream;
    .end local v22    # "temp":I
    :cond_7
    :goto_0
    const-string/jumbo v2, "ContactsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contacts key number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/16 v2, 0x32

    if-lt v5, v2, :cond_d

    .line 212
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Maximum iteration limit reached. Now taking freshbackup."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_1
    if-lez v5, :cond_b

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KEY_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 214
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 192
    .local v17, "in":Ljava/io/DataInputStream;
    .restart local v19    # "instream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v15

    .line 193
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v19    # "instream":Ljava/io/FileInputStream;
    .local v15, "eof":Ljava/io/EOFException;
    :goto_2
    :try_start_3
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "This is the first time backup is happening."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    if-eqz v17, :cond_8

    .line 196
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 198
    :cond_8
    if-eqz v19, :cond_7

    .line 199
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 194
    .end local v15    # "eof":Ljava/io/EOFException;
    :catchall_0
    move-exception v2

    .line 195
    :goto_3
    if-eqz v17, :cond_9

    .line 196
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 198
    :cond_9
    if-eqz v19, :cond_a

    .line 199
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_a
    throw v2

    .line 219
    :cond_b
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "contacts_state"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 221
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Version file deleted. Now starting fresh backup."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_c
    const/16 v16, 0x0

    .line 226
    .end local v16    # "file":Ljava/io/File;
    :cond_d
    new-instance v14, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;-><init>(Landroid/content/Context;)V

    .line 228
    .restart local v14    # "contactsReader":Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->generateBackupContactsList(Z)I

    move-result v21

    .line 230
    .local v21, "result":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_f

    .line 233
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Contact list is empty. Backup data will now be cleared."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_4
    if-lez v5, :cond_e

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KEY_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 236
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 240
    :cond_e
    return-void

    .line 241
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_10

    .line 243
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "No change in contacts."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v8, "VERSION_KEY"

    .line 246
    const-string/jumbo v10, "contacts_state"

    .line 245
    const/4 v9, -0x1

    .line 246
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 245
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->writeNewState(Landroid/os/ParcelFileDescriptor;I)V

    .line 249
    return-void

    .line 250
    :cond_10
    if-nez v21, :cond_12

    .line 251
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Performing backup."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v4, "KEY_CONTACTS"

    .line 255
    add-int/lit8 v5, v5, 0x1

    const-string/jumbo v6, "TempContacts"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 254
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v12

    .line 258
    .local v12, "backupSucceeded":Z
    if-nez v12, :cond_11

    .line 259
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Backup operation failed"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 269
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    move-result-object v13

    .line 271
    .restart local v13    # "contactList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->updateIdList(Landroid/content/Context;)V

    .line 273
    const-string/jumbo v8, "VERSION_KEY"

    .line 274
    const-string/jumbo v10, "contacts_state"

    .line 273
    const/4 v9, -0x1

    .line 274
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 273
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->performBackup(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->writeNewState(Landroid/os/ParcelFileDescriptor;I)V

    .line 278
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Backup operation completed."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v12    # "backupSucceeded":Z
    .end local v13    # "contactList":Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    :cond_12
    return-void

    .line 194
    .end local v14    # "contactsReader":Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;
    .end local v21    # "result":I
    .local v12, "backupSucceeded":Z
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "instream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "instream":Ljava/io/FileInputStream;
    .local v19, "instream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v19    # "instream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "instream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    move-object/from16 v19, v20

    .end local v20    # "instream":Ljava/io/FileInputStream;
    .restart local v19    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 192
    .end local v19    # "instream":Ljava/io/FileInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    .restart local v20    # "instream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v15

    .restart local v15    # "eof":Ljava/io/EOFException;
    move-object/from16 v19, v20

    .end local v20    # "instream":Ljava/io/FileInputStream;
    .restart local v19    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v15    # "eof":Ljava/io/EOFException;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v19    # "instream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "instream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v15

    .restart local v15    # "eof":Ljava/io/EOFException;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    move-object/from16 v19, v20

    .end local v20    # "instream":Ljava/io/FileInputStream;
    .restart local v19    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 97
    const-string/jumbo v0, "ContactsBackupAgent"

    const-string/jumbo v1, "Creating ContactsBackupAgent"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    .line 102
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountType:Ljava/lang/String;

    .line 103
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mAccountName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->readCallLogToFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "TempCallLogs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 566
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V

    .line 569
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->fullBackupContacts(Landroid/app/backup/FullBackupDataOutput;)V

    .line 562
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 18
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const-string/jumbo v15, "ContactsBackupAgent"

    const-string/jumbo v16, "On restore called"

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v5, 0x0

    .line 479
    .local v5, "contactFOS":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 480
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 483
    .local v12, "versionFOS":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v15

    sget-object v16, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 485
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;-><init>()V

    .line 487
    .local v1, "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    const-string/jumbo v15, "ContactList"

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 489
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v15

    .line 490
    const-string/jumbo v16, "TempCallLogs"

    .line 489
    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 491
    .local v2, "callLogFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v15

    .line 492
    const-string/jumbo v16, "TempContacts"

    .line 491
    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 493
    .local v7, "contactFile":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v15

    .line 494
    const-string/jumbo v16, "contacts_state"

    .line 493
    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    .local v14, "versionFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    .local v6, "contactFOS":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v5    # "contactFOS":Ljava/io/FileOutputStream;
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 498
    .local v4, "callLogsFOS":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v13, Ljava/io/FileOutputStream;

    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 500
    .local v13, "versionFOS":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    .end local v12    # "versionFOS":Ljava/io/FileOutputStream;
    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 502
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 504
    const-string/jumbo v15, "ContactsBackupAgent"

    .line 505
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "reading  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  having bytes "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 504
    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v9

    .line 509
    .local v9, "dataSize":I
    new-array v8, v9, [B

    .line 511
    .local v8, "dataBuf":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v9}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "VERSION_KEY"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 514
    invoke-virtual {v13, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 523
    :goto_1
    const-string/jumbo v15, "ContactsBackupAgent"

    const-string/jumbo v16, "reading next header"

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 535
    .end local v8    # "dataBuf":[B
    .end local v9    # "dataSize":I
    :catch_0
    move-exception v10

    .local v10, "fnfe":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .local v12, "versionFOS":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 536
    .end local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .end local v2    # "callLogFile":Ljava/io/File;
    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v7    # "contactFile":Ljava/io/File;
    .end local v12    # "versionFOS":Ljava/io/FileOutputStream;
    .end local v14    # "versionFile":Ljava/io/File;
    :goto_2
    :try_start_4
    const-string/jumbo v15, "ContactsBackupAgent"

    const-string/jumbo v16, "File not found during restore operation"

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 540
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 541
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 542
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 544
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    const-string/jumbo v15, "ContactsBackupAgent"

    const-string/jumbo v16, "onRestore completed"

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void

    .line 515
    .restart local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .restart local v2    # "callLogFile":Ljava/io/File;
    .restart local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v7    # "contactFile":Ljava/io/File;
    .restart local v8    # "dataBuf":[B
    .restart local v9    # "dataSize":I
    .restart local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .restart local v14    # "versionFile":Ljava/io/File;
    :cond_0
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "KEY_CONTACTS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 516
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 537
    .end local v8    # "dataBuf":[B
    .end local v9    # "dataSize":I
    :catch_1
    move-exception v11

    .local v11, "se":Ljava/lang/SecurityException;
    move-object v12, v13

    .end local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .restart local v12    # "versionFOS":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 538
    .end local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .end local v2    # "callLogFile":Ljava/io/File;
    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v7    # "contactFile":Ljava/io/File;
    .end local v12    # "versionFOS":Ljava/io/FileOutputStream;
    .end local v14    # "versionFile":Ljava/io/File;
    :goto_4
    :try_start_6
    const-string/jumbo v15, "ContactsBackupAgent"

    const-string/jumbo v16, "Unable to read file during restore operation"

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 540
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 541
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 542
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 517
    .end local v11    # "se":Ljava/lang/SecurityException;
    .restart local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .restart local v2    # "callLogFile":Ljava/io/File;
    .restart local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v7    # "contactFile":Ljava/io/File;
    .restart local v8    # "dataBuf":[B
    .restart local v9    # "dataSize":I
    .restart local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .restart local v14    # "versionFile":Ljava/io/File;
    :cond_1
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "KEY_CALL_LOGS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 518
    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 539
    .end local v8    # "dataBuf":[B
    .end local v9    # "dataSize":I
    :catchall_0
    move-exception v15

    move-object v12, v13

    .end local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .restart local v12    # "versionFOS":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 540
    .end local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .end local v2    # "callLogFile":Ljava/io/File;
    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v7    # "contactFile":Ljava/io/File;
    .end local v12    # "versionFOS":Ljava/io/FileOutputStream;
    .end local v14    # "versionFile":Ljava/io/File;
    :goto_5
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 541
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 542
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 539
    throw v15

    .line 520
    .restart local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .restart local v2    # "callLogFile":Ljava/io/File;
    .restart local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v7    # "contactFile":Ljava/io/File;
    .restart local v8    # "dataBuf":[B
    .restart local v9    # "dataSize":I
    .restart local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .restart local v14    # "versionFile":Ljava/io/File;
    :cond_2
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_1

    .line 526
    .end local v8    # "dataBuf":[B
    .end local v9    # "dataSize":I
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->clear()V

    .line 527
    const-string/jumbo v15, "ContactList"

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 531
    const-string/jumbo v15, "ContactsBackupAgent"

    const-string/jumbo v16, "Data has been restored to temp file"

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v12, v13

    .end local v13    # "versionFOS":Ljava/io/FileOutputStream;
    .restart local v12    # "versionFOS":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 540
    .end local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .end local v2    # "callLogFile":Ljava/io/File;
    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v7    # "contactFile":Ljava/io/File;
    .end local v12    # "versionFOS":Ljava/io/FileOutputStream;
    .end local v14    # "versionFile":Ljava/io/File;
    :cond_4
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 541
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 542
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->closeOutputStream(Ljava/io/OutputStream;)V

    goto/16 :goto_3

    .line 539
    :catchall_1
    move-exception v15

    goto :goto_5

    .restart local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .restart local v2    # "callLogFile":Ljava/io/File;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v7    # "contactFile":Ljava/io/File;
    .local v12, "versionFOS":Ljava/io/FileOutputStream;
    .restart local v14    # "versionFile":Ljava/io/File;
    :catchall_2
    move-exception v15

    move-object v5, v6

    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .local v5, "contactFOS":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v5    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v15

    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v5    # "contactFOS":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 535
    .end local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .end local v2    # "callLogFile":Ljava/io/File;
    .end local v7    # "contactFile":Ljava/io/File;
    .end local v14    # "versionFile":Ljava/io/File;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    .local v5, "contactFOS":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    .restart local v10    # "fnfe":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .end local v5    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .restart local v2    # "callLogFile":Ljava/io/File;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v7    # "contactFile":Ljava/io/File;
    .restart local v14    # "versionFile":Ljava/io/File;
    :catch_3
    move-exception v10

    .restart local v10    # "fnfe":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .local v5, "contactFOS":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v5    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    .restart local v10    # "fnfe":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v5    # "contactFOS":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 537
    .end local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .end local v2    # "callLogFile":Ljava/io/File;
    .end local v7    # "contactFile":Ljava/io/File;
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v14    # "versionFile":Ljava/io/File;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    .local v5, "contactFOS":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v11

    .restart local v11    # "se":Ljava/lang/SecurityException;
    goto/16 :goto_4

    .end local v5    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v11    # "se":Ljava/lang/SecurityException;
    .restart local v1    # "builder":Lcom/sonyericsson/android/socialphonebook/backup/XMLBuilder;
    .restart local v2    # "callLogFile":Ljava/io/File;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v7    # "contactFile":Ljava/io/File;
    .restart local v14    # "versionFile":Ljava/io/File;
    :catch_6
    move-exception v11

    .restart local v11    # "se":Ljava/lang/SecurityException;
    move-object v5, v6

    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .local v5, "contactFOS":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v3    # "callLogsFOS":Ljava/io/FileOutputStream;
    .end local v5    # "contactFOS":Ljava/io/FileOutputStream;
    .end local v11    # "se":Ljava/lang/SecurityException;
    .restart local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "contactFOS":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v11

    .restart local v11    # "se":Ljava/lang/SecurityException;
    move-object v3, v4

    .end local v4    # "callLogsFOS":Ljava/io/FileOutputStream;
    .local v3, "callLogsFOS":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "contactFOS":Ljava/io/FileOutputStream;
    .restart local v5    # "contactFOS":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 4
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J

    .prologue
    .line 575
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "fileName":Ljava/lang/String;
    const-string/jumbo v2, "TempCallLogs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    const-string/jumbo v2, "full_backup_vcard.vcf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    :cond_0
    invoke-virtual {p4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 590
    :cond_1
    :try_start_0
    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->restoreCallLogs(Ljava/io/File;Landroid/content/ContentResolver;)V

    .line 601
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsBackupAgent;->restoreContactsFile(Ljava/io/File;)V

    .line 574
    return-void

    .line 579
    :cond_2
    return-void

    .line 584
    :cond_3
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "Origin temp file exists and delete it failed."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ContactsBackupAgent"

    const-string/jumbo v3, "The super onRestoreFile emits IOException"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 594
    return-void
.end method
