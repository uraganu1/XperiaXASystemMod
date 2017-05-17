.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardReadThread"
.end annotation


# static fields
.field private static final FAILURE_NOTIFICATION_ID:I = 0x1


# instance fields
.field private mCanceled:Z

.field private mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
    .param p2, "sourceUris"    # [Landroid/net/Uri;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mSourceUris:[Landroid/net/Uri;

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->init()V

    .line 168
    return-void
.end method

.method private constructImportRequest(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 22
    .param p1, "localDataUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 329
    .local v19, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 330
    .local v10, "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    const/4 v12, 0x0

    .line 331
    .local v12, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    const/4 v8, 0x2

    .line 333
    .local v8, "vcardVersion":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v3, 0x7f090043

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v21

    .line 335
    .local v21, "vcardType":I
    const/16 v20, 0x0

    .line 336
    .local v20, "shouldUseV30":Z
    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 337
    .local v18, "is":Ljava/io/InputStream;
    new-instance v2, Lcom/sonymobile/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/sonymobile/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_5

    .line 339
    :try_start_1
    new-instance v11, Lcom/sonymobile/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/sonymobile/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .local v11, "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v13, Lcom/sonymobile/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/sonymobile/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    .local v13, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v2

    .line 342
    const-string/jumbo v3, "kddi"

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/sonymobile/android/vcard/VCardSourceDetector;->setVcardType(I)V

    .line 345
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 367
    if-eqz v18, :cond_1

    .line 369
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_1
    :goto_0
    move-object v12, v13

    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .local v12, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    move-object v10, v11

    .line 375
    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .local v10, "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    if-eqz v20, :cond_3

    const/4 v8, 0x1

    .line 381
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    :goto_1
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/accounts/Account;

    move-result-object v3

    .line 383
    invoke-virtual {v12}, Lcom/sonymobile/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->getVCardType(II)I

    move-result v6

    .line 384
    invoke-virtual {v12}, Lcom/sonymobile/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v7

    .line 385
    invoke-virtual {v10}, Lcom/sonymobile/android/vcard/VCardEntryCounter;->getCount()I

    move-result v9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 381
    invoke-direct/range {v2 .. v9}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 370
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/io/IOException;
    goto :goto_0

    .line 348
    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .end local v15    # "e":Ljava/io/IOException;
    .local v10, "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .local v12, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :catch_1
    move-exception v16

    .line 350
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .local v16, "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :goto_2
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 354
    :goto_3
    const/16 v20, 0x1

    .line 355
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 356
    new-instance v2, Lcom/sonymobile/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/sonymobile/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    :try_start_7
    new-instance v11, Lcom/sonymobile/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/sonymobile/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_7
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 359
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    :try_start_8
    new-instance v13, Lcom/sonymobile/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/sonymobile/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_8
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 360
    .restart local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_9
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 367
    if-eqz v18, :cond_1

    .line 369
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_0

    .line 370
    :catch_2
    move-exception v15

    .restart local v15    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 351
    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .end local v15    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v15

    .restart local v15    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 363
    .end local v15    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v17

    .line 364
    .local v17, "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :goto_4
    :try_start_b
    new-instance v2, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 366
    .end local v16    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .end local v17    # "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    .line 367
    :goto_5
    if-eqz v18, :cond_2

    .line 369
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_5

    .line 366
    :cond_2
    :goto_6
    :try_start_d
    throw v2
    :try_end_d
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_d .. :try_end_d} :catch_5

    .line 376
    .end local v18    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v14

    .line 377
    .local v14, "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :goto_7
    const-string/jumbo v2, "ImportVCardActivity"

    const-string/jumbo v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 370
    .end local v14    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v15

    .restart local v15    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 375
    .end local v15    # "e":Ljava/io/IOException;
    .local v10, "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .local v12, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :cond_3
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 376
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :catch_7
    move-exception v14

    .restart local v14    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    move-object v12, v13

    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_7

    .line 366
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .end local v14    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_5

    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :catchall_2
    move-exception v2

    move-object v12, v13

    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_5

    .line 363
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v16    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    :catch_8
    move-exception v17

    .restart local v17    # "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_4

    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v17    # "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :catch_9
    move-exception v17

    .restart local v17    # "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    move-object v12, v13

    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_4

    .line 348
    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v16    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .end local v17    # "e2":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .local v12, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :catch_a
    move-exception v16

    .restart local v16    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_2

    .end local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .end local v16    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .restart local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    :catch_b
    move-exception v16

    .restart local v16    # "e1":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    move-object v12, v13

    .end local v13    # "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    .local v12, "detector":Lcom/sonymobile/android/vcard/VCardSourceDetector;
    move-object v10, v11

    .end local v11    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/sonymobile/android/vcard/VCardEntryCounter;
    goto :goto_2
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 403
    const-string/jumbo v7, "ImportVCardActivity"

    const-string/jumbo v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 404
    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    .line 403
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 406
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 407
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 408
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 409
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 411
    .local v2, "destUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 412
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 413
    .local v2, "destUri":Landroid/net/Uri;
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 414
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 415
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 416
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 417
    const-string/jumbo v7, "ImportVCardActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-eqz v4, :cond_0

    .line 431
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 436
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 438
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 418
    :cond_1
    :goto_2
    return-object v11

    .line 432
    :catch_0
    move-exception v3

    .line 433
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImportVCardActivity"

    const-string/jumbo v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 440
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImportVCardActivity"

    const-string/jumbo v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 420
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 421
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 422
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 428
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "destUri":Landroid/net/Uri;
    .end local v4    # "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    .end local v5    # "outputChannel":Ljava/nio/channels/WritableByteChannel;
    :catchall_0
    move-exception v7

    .line 429
    if-eqz v4, :cond_3

    .line 431
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 436
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 438
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 428
    :cond_4
    :goto_4
    throw v7

    .line 424
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "destUri":Landroid/net/Uri;
    .restart local v4    # "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    .restart local v5    # "outputChannel":Ljava/nio/channels/WritableByteChannel;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 425
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 426
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 429
    :cond_6
    if-eqz v4, :cond_7

    .line 431
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 436
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 438
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 444
    :cond_8
    :goto_7
    return-object v2

    .line 432
    :catch_2
    move-exception v3

    .line 433
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImportVCardActivity"

    const-string/jumbo v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 439
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 440
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImportVCardActivity"

    const-string/jumbo v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 432
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "destUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    .end local v5    # "outputChannel":Ljava/nio/channels/WritableByteChannel;
    :catch_4
    move-exception v3

    .line 433
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "ImportVCardActivity"

    const-string/jumbo v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 439
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 440
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "ImportVCardActivity"

    const-string/jumbo v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getVCardType(II)I
    .locals 2
    .param p1, "estimatedVCardType"    # I
    .param p2, "importVCardType"    # I

    .prologue
    .line 389
    move v0, p1

    .line 391
    .local v0, "result":I
    invoke-static {p2}, Lcom/sonymobile/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 396
    :goto_0
    return v0

    .line 394
    :cond_0
    const v1, -0x8000001

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 176
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "power"

    .line 175
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 179
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "ImportVCardActivity"

    .line 178
    const v3, 0x20000006

    .line 177
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 173
    return-void
.end method

.method private showFailureNotification(I)V
    .locals 4
    .param p1, "reasonId"    # I

    .prologue
    .line 301
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 304
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 305
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v2, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 306
    .local v0, "notification":Landroid/app/Notification;
    const-string/jumbo v2, "VCardServiceFailure"

    .line 307
    const/4 v3, 0x1

    .line 306
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 308
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mCanceled:Z

    .line 447
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 452
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-nez v4, :cond_0

    .line 185
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "vCard read thread must be launched after a service connection is established"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 190
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mCanceled:Z

    if-eqz v4, :cond_2

    .line 191
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "Operation is canceled."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 192
    :cond_1
    return-void

    .line 195
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 205
    .local v9, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 206
    .local v8, "cache_index":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v20, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 208
    .local v2, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mSourceUris:[Landroid/net/Uri;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v21, v4

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    aget-object v3, v22, v21

    .line 209
    .local v3, "sourceUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 212
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "import_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 213
    .local v16, "filename":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 214
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 224
    .local v18, "localDataUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mCanceled:Z

    if-eqz v4, :cond_7

    .line 225
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "vCard read operation is canceled."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v18    # "localDataUri":Landroid/net/Uri;
    :cond_3
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 183
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "cache_index":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_4
    :goto_4
    return-void

    .line 217
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "cache_index":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_5
    const v4, 0x7fffffff

    if-ne v8, v4, :cond_6

    .line 218
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Exceeded cache limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "cache_index":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_0
    move-exception v14

    .line 283
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "OutOfMemoryError occured during caching vCard"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 286
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v21, 0x7f090206

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    goto :goto_4

    .line 220
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "cache_index":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 228
    .restart local v18    # "localDataUri":Landroid/net/Uri;
    :cond_7
    if-nez v18, :cond_8

    .line 229
    :try_start_4
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "destUri is null"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 287
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "cache_index":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v18    # "localDataUri":Landroid/net/Uri;
    .end local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_1
    move-exception v13

    .line 288
    .local v13, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "IOException during caching vCard"

    invoke-static {v4, v5, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 290
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v21, 0x7f090292

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    goto/16 :goto_4

    .line 233
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "cache_index":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v18    # "localDataUri":Landroid/net/Uri;
    .restart local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_8
    const/4 v11, 0x0

    .line 234
    .local v11, "displayName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 238
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_6
    new-array v4, v4, [Ljava/lang/String;

    .line 239
    const-string/jumbo v5, "_display_name"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 240
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 238
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 241
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 242
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    .line 243
    const-string/jumbo v4, "ImportVCardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected multiple rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_9
    const-string/jumbo v4, "_display_name"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 246
    .local v17, "index":I
    if-ltz v17, :cond_a

    .line 247
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v11

    .line 251
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v17    # "index":I
    :cond_a
    if-eqz v10, :cond_b

    .line 252
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_b
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 256
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v11

    .line 261
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->constructImportRequest(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    :try_end_8
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v19

    .line 271
    .local v19, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mCanceled:Z

    if-eqz v4, :cond_12

    .line 272
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "vCard read operation is canceled."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_d

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 273
    :cond_d
    return-void

    .line 250
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v19    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    .restart local v11    # "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 251
    if-eqz v10, :cond_e

    .line 252
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_e
    throw v4
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 291
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "cache_index":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v18    # "localDataUri":Landroid/net/Uri;
    .end local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catchall_1
    move-exception v4

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_f

    .line 294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 291
    :cond_f
    throw v4

    .line 266
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "cache_index":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v18    # "localDataUri":Landroid/net/Uri;
    .restart local v20    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_2
    move-exception v13

    .line 267
    .restart local v13    # "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "Unexpected IOException"

    invoke-static {v4, v5, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    const v4, 0x7f090292

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->showFailureNotification(I)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_10

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 269
    :cond_10
    return-void

    .line 262
    .end local v13    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 263
    .local v12, "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    :try_start_c
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    const v4, 0x7f090294

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->showFailureNotification(I)V
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_11

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 265
    :cond_11
    return-void

    .line 275
    .end local v12    # "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    .restart local v19    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_12
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v4, v21, 0x1

    move/from16 v21, v4

    goto/16 :goto_0

    .line 280
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v18    # "localDataUri":Landroid/net/Uri;
    .end local v19    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_13
    const-string/jumbo v4, "ImportVCardActivity"

    const-string/jumbo v5, "Empty import requests. Ignore it."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3
.end method
