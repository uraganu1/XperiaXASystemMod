.class Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;
.super Landroid/os/AsyncTask;
.source "DatabaseWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DatabaseWriter"


# instance fields
.field private mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

.field private final mContactsReader:Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactsReader:Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

    .line 72
    return-void
.end method

.method private compareEmailAddresses(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 10
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Email;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "contactEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    const/4 v7, 0x1

    .line 324
    .local v7, "matchFound":Z
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactsReader:Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

    invoke-virtual {v8, p2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getEmailAddresses(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    .local v0, "associatedEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    if-eqz v0, :cond_4

    .line 327
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "em$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    .line 328
    .local v2, "em":Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "contactNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 331
    .local v6, "emailMatched":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "email$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    .line 332
    .local v4, "email":Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 333
    const/4 v6, 0x1

    .line 337
    .end local v4    # "email":Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
    :cond_2
    if-nez v6, :cond_0

    .line 338
    const/4 v7, 0x0

    .line 346
    .end local v1    # "contactNumber":Ljava/lang/String;
    .end local v2    # "em":Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
    .end local v3    # "em$iterator":Ljava/util/Iterator;
    .end local v5    # "email$iterator":Ljava/util/Iterator;
    .end local v6    # "emailMatched":Z
    :cond_3
    :goto_0
    return v7

    .line 343
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private comparePhoneNumbers(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 10
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "contactPhones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    const/4 v2, 0x1

    .line 295
    .local v2, "matchFound":Z
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactsReader:Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;

    invoke-virtual {v8, p2}, Lcom/sonyericsson/android/socialphonebook/backup/ContactsReader;->getPhoneNumbers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    .local v0, "associatedPhones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    if-eqz v0, :cond_4

    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ph$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    .line 299
    .local v6, "ph":Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "contactNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 302
    .local v5, "numberMatched":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "number$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    .line 303
    .local v3, "number":Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 304
    const/4 v5, 0x1

    .line 308
    .end local v3    # "number":Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;
    :cond_2
    if-nez v5, :cond_0

    .line 309
    const/4 v2, 0x0

    .line 317
    .end local v1    # "contactNumber":Ljava/lang/String;
    .end local v4    # "number$iterator":Ljava/util/Iterator;
    .end local v5    # "numberMatched":Z
    .end local v6    # "ph":Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;
    .end local v7    # "ph$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    return v2

    .line 314
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static restoreCallLogs(Ljava/io/File;Landroid/content/ContentResolver;)V
    .locals 21
    .param p0, "filesDir"    # Ljava/io/File;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 519
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 520
    :cond_0
    return-void

    .line 523
    :cond_1
    const/4 v8, 0x0

    .line 526
    .local v8, "callLogsFIS":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v6, "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    new-instance v7, Ljava/io/File;

    const-string/jumbo v18, "TempCallLogs"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    .local v7, "callLogfile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .local v9, "callLogsFIS":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    .end local v8    # "callLogsFIS":Ljava/io/FileInputStream;
    move-result v18

    if-gtz v18, :cond_5

    .line 533
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_3

    .line 534
    new-instance v18, Ljava/io/IOException;

    invoke-direct/range {v18 .. v18}, Ljava/io/IOException;-><init>()V

    throw v18
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 584
    :catch_0
    move-exception v13

    .local v13, "e":Lorg/xml/sax/SAXException;
    move-object v8, v9

    .line 585
    .end local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v7    # "callLogfile":Ljava/io/File;
    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in performing restore operation"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    if-eqz v8, :cond_2

    .line 595
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 518
    .end local v13    # "e":Lorg/xml/sax/SAXException;
    :cond_2
    :goto_1
    return-void

    .line 536
    .restart local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v7    # "callLogfile":Ljava/io/File;
    .restart local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :cond_3
    :try_start_4
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "No data available for restore."

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 594
    if-eqz v9, :cond_4

    .line 595
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 537
    :cond_4
    :goto_2
    return-void

    .line 597
    :catch_1
    move-exception v11

    .line 598
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in closing output stream for call log file"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 540
    .end local v11    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_6
    new-instance v14, Lorg/xml/sax/InputSource;

    invoke-direct {v14, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 542
    .local v14, "is":Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v16

    .line 544
    .local v16, "reader":Lorg/xml/sax/XMLReader;
    new-instance v15, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v15, v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;-><init>(Ljava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;)V

    .line 546
    .local v15, "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 548
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 550
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Parsing of Call Log XML Finished"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v18, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 557
    .local v5, "callLogItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 559
    .local v17, "values":Landroid/content/ContentValues;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 561
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "inserting call log entry"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    .line 565
    .local v4, "callLog":Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
    const-string/jumbo v18, "_id"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v18, "number"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v18, "presentation"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getNumberPresentation()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string/jumbo v18, "date"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getDate()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string/jumbo v18, "duration"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getDuration()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string/jumbo v18, "type"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    const-string/jumbo v18, "name"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getCachedName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string/jumbo v18, "numbertype"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getCachedNumberType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string/jumbo v18, "numberlabel"

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->getCachedNumberLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    sget-object v18, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 577
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 586
    .end local v4    # "callLog":Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
    .end local v5    # "callLogItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v14    # "is":Lorg/xml/sax/InputSource;
    .end local v15    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v12

    .local v12, "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v8, v9

    .line 587
    .end local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v7    # "callLogfile":Ljava/io/File;
    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in performing restore operation"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 594
    if-eqz v8, :cond_2

    .line 595
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 597
    :catch_3
    move-exception v11

    .line 598
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in closing output stream for call log file"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 580
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v5    # "callLogItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v7    # "callLogfile":Ljava/io/File;
    .restart local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    .restart local v14    # "is":Lorg/xml/sax/InputSource;
    .restart local v15    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .restart local v16    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_7

    .line 581
    new-instance v18, Ljava/io/IOException;

    invoke-direct/range {v18 .. v18}, Ljava/io/IOException;-><init>()V

    throw v18
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 588
    .end local v5    # "callLogItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v14    # "is":Lorg/xml/sax/InputSource;
    .end local v15    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v10

    .local v10, "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .line 589
    .end local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v7    # "callLogfile":Ljava/io/File;
    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :goto_5
    :try_start_a
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in performing restore operation"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 594
    if-eqz v8, :cond_2

    .line 595
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 597
    :catch_5
    move-exception v11

    .line 598
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in closing output stream for call log file"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v5    # "callLogItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v7    # "callLogfile":Ljava/io/File;
    .restart local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    .restart local v14    # "is":Lorg/xml/sax/InputSource;
    .restart local v15    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .restart local v16    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    if-eqz v9, :cond_8

    .line 595
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_8
    :goto_6
    move-object v8, v9

    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    .local v8, "callLogsFIS":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 597
    .end local v8    # "callLogsFIS":Ljava/io/FileInputStream;
    .restart local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :catch_6
    move-exception v11

    .line 598
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in closing output stream for call log file"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 590
    .end local v5    # "callLogItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v7    # "callLogfile":Ljava/io/File;
    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "is":Lorg/xml/sax/InputSource;
    .end local v15    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    .end local v17    # "values":Landroid/content/ContentValues;
    .local v8, "callLogsFIS":Ljava/io/FileInputStream;
    :catch_7
    move-exception v11

    .line 591
    .end local v8    # "callLogsFIS":Ljava/io/FileInputStream;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_d
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in performing restore operation"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 594
    if-eqz v8, :cond_2

    .line 595
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_1

    .line 597
    :catch_8
    move-exception v11

    .line 598
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in closing output stream for call log file"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 597
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v13    # "e":Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v11

    .line 598
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "DatabaseWriter"

    const-string/jumbo v19, "Exception in closing output stream for call log file"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v18

    .line 594
    :goto_8
    if-eqz v8, :cond_9

    .line 595
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 592
    :cond_9
    :goto_9
    throw v18

    .line 597
    :catch_a
    move-exception v11

    .line 598
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "DatabaseWriter"

    const-string/jumbo v20, "Exception in closing output stream for call log file"

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 592
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v7    # "callLogfile":Ljava/io/File;
    .restart local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    move-object v8, v9

    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    .local v8, "callLogsFIS":Ljava/io/FileInputStream;
    goto :goto_8

    .line 584
    .end local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .end local v7    # "callLogfile":Ljava/io/File;
    .local v8, "callLogsFIS":Ljava/io/FileInputStream;
    :catch_b
    move-exception v13

    .restart local v13    # "e":Lorg/xml/sax/SAXException;
    goto/16 :goto_0

    .line 586
    .end local v13    # "e":Lorg/xml/sax/SAXException;
    :catch_c
    move-exception v12

    .restart local v12    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    goto/16 :goto_4

    .line 588
    .end local v12    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_d
    move-exception v10

    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    goto :goto_5

    .line 590
    .end local v8    # "callLogsFIS":Ljava/io/FileInputStream;
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "callLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v7    # "callLogfile":Ljava/io/File;
    .restart local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    :catch_e
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "callLogsFIS":Ljava/io/FileInputStream;
    .local v8, "callLogsFIS":Ljava/io/FileInputStream;
    goto :goto_7
.end method

.method private restoreContacts()V
    .locals 15

    .prologue
    .line 96
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restoring contacts to database"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "contactsFIS":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/File;

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    .line 101
    const-string/jumbo v12, "TempContacts"

    .line 100
    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v0, "contactFile":Ljava/io/File;
    :try_start_0
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    .line 107
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_0

    .line 108
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->loadIdList(Landroid/content/Context;)V

    .line 111
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v2    # "contactsFIS":Ljava/io/FileInputStream;
    .local v3, "contactsFIS":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v11

    if-gtz v11, :cond_7

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_3

    .line 115
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :catch_0
    move-exception v7

    .local v7, "e":Lorg/xml/sax/SAXException;
    move-object v2, v3

    .line 143
    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "SAXException in performing restore operation"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :try_start_3
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_1

    .line 153
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_1
    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_2
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 159
    const-string/jumbo v13, "contacts_state"

    .line 158
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_16

    .line 160
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Error in deleting version file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    :catch_1
    move-exception v5

    .line 165
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Exception in closing output stream for contacts file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    :goto_1
    return-void

    .line 117
    .restart local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :cond_3
    :try_start_4
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "No data available for restore."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    :try_start_5
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_4

    .line 153
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_4
    if-eqz v3, :cond_5

    .line 156
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_5
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 159
    const-string/jumbo v13, "contacts_state"

    .line 158
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_6

    .line 160
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Error in deleting version file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 164
    :catch_2
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Exception in closing output stream for contacts file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 163
    :cond_6
    :try_start_6
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restore finished.Version file deleted."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 121
    :cond_7
    :try_start_7
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 123
    .local v8, "is":Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 125
    .local v10, "reader":Lorg/xml/sax/XMLReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;

    invoke-direct {v9, v1, p0}, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;-><init>(Ljava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;)V

    .line 129
    .local v9, "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    invoke-interface {v10, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 130
    invoke-interface {v10, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 134
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->saveContactsToDatabase(Ljava/util/ArrayList;)V

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_b

    .line 140
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 144
    .end local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .end local v8    # "is":Lorg/xml/sax/InputSource;
    .end local v9    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .end local v10    # "reader":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v6

    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v2, v3

    .line 145
    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :goto_3
    :try_start_8
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "PCException in performing restore operation"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 152
    :try_start_9
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_9

    .line 153
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_9
    if-eqz v2, :cond_a

    .line 156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_a
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 159
    const-string/jumbo v13, "contacts_state"

    .line 158
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_15

    .line 160
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Error in deleting version file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 164
    :catch_4
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Exception in closing output stream for contacts file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .restart local v3    # "contactsFIS":Ljava/io/FileInputStream;
    .restart local v8    # "is":Lorg/xml/sax/InputSource;
    .restart local v9    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .restart local v10    # "reader":Lorg/xml/sax/XMLReader;
    :cond_b
    :try_start_a
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_c

    .line 153
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_c
    if-eqz v3, :cond_d

    .line 156
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_d
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 159
    const-string/jumbo v13, "contacts_state"

    .line 158
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_e

    .line 160
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Error in deleting version file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 164
    :catch_5
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Exception in closing output stream for contacts file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    move-object v2, v3

    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    .local v2, "contactsFIS":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 163
    .end local v2    # "contactsFIS":Ljava/io/FileInputStream;
    .restart local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :cond_e
    :try_start_b
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restore finished.Version file deleted."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_4

    .line 148
    .end local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    .end local v8    # "is":Lorg/xml/sax/InputSource;
    .end local v9    # "parser":Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
    .end local v10    # "reader":Lorg/xml/sax/XMLReader;
    .local v2, "contactsFIS":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    .line 149
    .end local v2    # "contactsFIS":Ljava/io/FileInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_c
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "IOException in performing restore operation"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 152
    :try_start_d
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_f

    .line 153
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_f
    if-eqz v2, :cond_10

    .line 156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_10
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 159
    const-string/jumbo v13, "contacts_state"

    .line 158
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_11

    .line 160
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Error in deleting version file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 164
    :catch_7
    move-exception v5

    .line 165
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Exception in closing output stream for contacts file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_11
    :try_start_e
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restore finished.Version file deleted."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    .line 146
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "contactsFIS":Ljava/io/FileInputStream;
    :catch_8
    move-exception v4

    .line 147
    .end local v2    # "contactsFIS":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_f
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "FNFException in performing restore operation"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 152
    :try_start_10
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v11, :cond_12

    .line 153
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_12
    if-eqz v2, :cond_13

    .line 156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_13
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 159
    const-string/jumbo v13, "contacts_state"

    .line 158
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_14

    .line 160
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Error in deleting version file."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 164
    :catch_9
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Exception in closing output stream for contacts file"

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    .end local v5    # "e":Ljava/io/IOException;
    :cond_14
    :try_start_11
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restore finished.Version file deleted."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_1

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_15
    :try_start_12
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restore finished.Version file deleted."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_1

    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v7    # "e":Lorg/xml/sax/SAXException;
    :cond_16
    :try_start_13
    const-string/jumbo v11, "DatabaseWriter"

    const-string/jumbo v12, "Restore finished.Version file deleted."

    invoke-static {v11, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_1

    .line 150
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v11

    .line 152
    :goto_7
    :try_start_14
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-eqz v12, :cond_17

    .line 153
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->clearList()V

    .line 155
    :cond_17
    if-eqz v2, :cond_18

    .line 156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_18
    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    .line 159
    const-string/jumbo v14, "contacts_state"

    .line 158
    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_19

    .line 160
    const-string/jumbo v12, "DatabaseWriter"

    const-string/jumbo v13, "Error in deleting version file."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 164
    :catch_a
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "DatabaseWriter"

    const-string/jumbo v13, "Exception in closing output stream for contacts file"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v5    # "e":Ljava/io/IOException;
    :goto_8
    throw v11

    .line 163
    :cond_19
    :try_start_15
    const-string/jumbo v12, "DatabaseWriter"

    const-string/jumbo v13, "Restore finished.Version file deleted."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_8

    .line 150
    .restart local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    .local v2, "contactsFIS":Ljava/io/FileInputStream;
    goto :goto_7

    .line 142
    .local v2, "contactsFIS":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    .restart local v7    # "e":Lorg/xml/sax/SAXException;
    goto/16 :goto_0

    .line 144
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    :catch_c
    move-exception v6

    .restart local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    goto/16 :goto_3

    .line 146
    .end local v2    # "contactsFIS":Ljava/io/FileInputStream;
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :catch_d
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    .local v2, "contactsFIS":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 148
    .end local v2    # "contactsFIS":Ljava/io/FileInputStream;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "contactsFIS":Ljava/io/FileInputStream;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "contactsFIS":Ljava/io/FileInputStream;
    .restart local v2    # "contactsFIS":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method


# virtual methods
.method protected contactExists(Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;)Z
    .locals 19
    .param p1, "contact"    # Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .prologue
    .line 180
    const-string/jumbo v1, "DatabaseWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "comparing contact "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v7, 0x0

    .line 186
    .local v7, "contactMatchFound":Z
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .line 187
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    .line 190
    .local v3, "projection":[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "account_type=?"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v17, "where":Ljava/lang/StringBuffer;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v18, "whereParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string/jumbo v1, " AND data4=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getGivenName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string/jumbo v1, " AND data2=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getGivenName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    const-string/jumbo v1, " AND data5=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    const-string/jumbo v1, " AND data3=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    const-string/jumbo v1, " AND data6=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getSuffix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 220
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v1, "DatabaseWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "whereParams :: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v15    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 224
    .local v12, "length":I
    if-nez v12, :cond_6

    .line 225
    const/4 v1, 0x0

    return v1

    .line 227
    :cond_6
    new-array v1, v12, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 228
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 229
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 228
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 231
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "DatabaseWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cursor is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v13, 0x0

    .line 234
    .local v13, "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 235
    .local v9, "emailComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_9

    .line 236
    const-string/jumbo v1, "DatabaseWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total name matches are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 239
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    .end local v13    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 242
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v1

    move-object v13, v14

    .line 247
    .end local v14    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 246
    throw v1

    .restart local v14    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object v13, v14

    .line 247
    .end local v14    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_9
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 255
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v9    # "emailComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "id$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 258
    .local v10, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->comparePhoneNumbers(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 259
    if-nez v9, :cond_b

    .line 260
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_b
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v7, 0x1

    goto :goto_3

    .line 266
    .end local v10    # "id":Ljava/lang/String;
    :cond_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 272
    .end local v11    # "id$iterator":Ljava/util/Iterator;
    :goto_4
    const/4 v13, 0x0

    .line 275
    .restart local v13    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 277
    const/4 v7, 0x0

    .line 279
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "id$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 282
    .restart local v10    # "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->compareEmailAddresses(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 283
    const/4 v7, 0x1

    goto :goto_5

    .line 270
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "id$iterator":Ljava/util/Iterator;
    .end local v13    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "emailComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    move-object v9, v13

    .local v9, "emailComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4

    .line 288
    .end local v9    # "emailComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "phoneComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    return v7

    .line 246
    .local v9, "emailComparisonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    goto/16 :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->restoreCallLogs(Ljava/io/File;Landroid/content/ContentResolver;)V

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->restoreContacts()V

    .line 89
    :cond_0
    return-object v2
.end method

.method protected saveContactsToDatabase(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;>;"
    const-string/jumbo v9, "DatabaseWriter"

    const-string/jumbo v10, "existing contacts deleted. now restoring the contacts from backup"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-nez v9, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contact$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .line 365
    .local v1, "contact":Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContactIdList:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->hasContact(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 369
    const-string/jumbo v9, "DatabaseWriter"

    const-string/jumbo v10, "adding contact"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 373
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v9, "account_type"

    .line 374
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v10

    iget-object v10, v10, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 375
    const-string/jumbo v9, "account_name"

    .line 376
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v10

    iget-object v10, v10, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 377
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 379
    .local v8, "rawContactInsertIndex":I
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 383
    const-string/jumbo v9, "raw_contact_id"

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 384
    const-string/jumbo v9, "mimetype"

    const-string/jumbo v10, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 385
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPrefix()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 386
    const-string/jumbo v9, "data4"

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 388
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getGivenName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 389
    const-string/jumbo v9, "data2"

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getGivenName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 391
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getMiddleName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 392
    const-string/jumbo v9, "data5"

    .line 393
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getMiddleName()Ljava/lang/String;

    move-result-object v10

    .line 392
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 395
    :cond_4
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getFamilyName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 396
    const-string/jumbo v9, "data3"

    .line 397
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getFamilyName()Ljava/lang/String;

    move-result-object v10

    .line 396
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 399
    :cond_5
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getSuffix()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 400
    const-string/jumbo v9, "data6"

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 402
    :cond_6
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 406
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 408
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 407
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 409
    const-string/jumbo v10, "raw_contact_id"

    .line 407
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 410
    const-string/jumbo v10, "mimetype"

    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    .line 407
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 411
    const-string/jumbo v11, "data1"

    .line 412
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 407
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 413
    const-string/jumbo v11, "data2"

    .line 414
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getPhone()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->getType()Ljava/lang/String;

    move-result-object v9

    .line 407
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 418
    .end local v6    # "j":I
    :cond_7
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 419
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 421
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 420
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 422
    const-string/jumbo v10, "raw_contact_id"

    .line 420
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 423
    const-string/jumbo v10, "mimetype"

    .line 424
    const-string/jumbo v11, "vnd.android.cursor.item/organization"

    .line 420
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 425
    const-string/jumbo v11, "data1"

    .line 426
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->getOrganization()Ljava/lang/String;

    move-result-object v9

    .line 420
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 427
    const-string/jumbo v11, "data4"

    .line 428
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 420
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 429
    const-string/jumbo v11, "data2"

    .line 430
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getOrganization()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->getType()Ljava/lang/String;

    move-result-object v9

    .line 420
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 434
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 435
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_9

    .line 437
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 436
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 438
    const-string/jumbo v10, "raw_contact_id"

    .line 436
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 439
    const-string/jumbo v10, "mimetype"

    .line 440
    const-string/jumbo v11, "vnd.android.cursor.item/postal-address_v2"

    .line 436
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 441
    const-string/jumbo v11, "data7"

    .line 442
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getCity()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 443
    const-string/jumbo v11, "data10"

    .line 444
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 445
    const-string/jumbo v11, "data5"

    .line 446
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getPoBox()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 447
    const-string/jumbo v11, "data9"

    .line 448
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 449
    const-string/jumbo v11, "data4"

    .line 450
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getStreet()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 451
    const-string/jumbo v11, "data8"

    .line 452
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getState()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 453
    const-string/jumbo v11, "data2"

    .line 454
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->getType()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 458
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 460
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_a

    .line 462
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 461
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 463
    const-string/jumbo v10, "raw_contact_id"

    .line 461
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 464
    const-string/jumbo v10, "mimetype"

    .line 465
    const-string/jumbo v11, "vnd.android.cursor.item/email_v2"

    .line 461
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 466
    const-string/jumbo v11, "data2"

    .line 467
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->getType()Ljava/lang/String;

    move-result-object v9

    .line 461
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 468
    const-string/jumbo v11, "data1"

    .line 469
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getEmail()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 461
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 473
    .end local v6    # "j":I
    :cond_a
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 475
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_b

    .line 477
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 476
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 478
    const-string/jumbo v10, "raw_contact_id"

    .line 476
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 479
    const-string/jumbo v10, "mimetype"

    .line 480
    const-string/jumbo v11, "vnd.android.cursor.item/im"

    .line 476
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 481
    const-string/jumbo v11, "data2"

    .line 482
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->getType()Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 483
    const-string/jumbo v11, "data1"

    .line 484
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->getName()Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 485
    const-string/jumbo v11, "data5"

    .line 486
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getImAddresses()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->getProtocol()Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 490
    .end local v6    # "j":I
    :cond_b
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getNotes()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 491
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getNotes()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 493
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 492
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 494
    const-string/jumbo v10, "raw_contact_id"

    .line 492
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 495
    const-string/jumbo v10, "mimetype"

    .line 496
    const-string/jumbo v11, "vnd.android.cursor.item/note"

    .line 492
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 497
    const-string/jumbo v10, "data1"

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->getNotes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 492
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 503
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "contact":Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
    .end local v6    # "j":I
    .end local v8    # "rawContactInsertIndex":I
    :cond_c
    const-string/jumbo v9, "DatabaseWriter"

    const-string/jumbo v10, "Adding data to contacts database"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :try_start_0
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "com.android.contacts"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_6
    return-void

    .line 509
    :catch_0
    move-exception v3

    .line 510
    .local v3, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v9, "DatabaseWriter"

    const-string/jumbo v10, "Error in adding contacts to database"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 507
    .end local v3    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v4

    .line 508
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "DatabaseWriter"

    const-string/jumbo v10, "Remote Exception occurred while adding contacts to database"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method
