.class public Lcom/android/contacts/common/vcard/ImportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardEntryHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private volatile mCanceled:Z

.field private mCurrentCount:I

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

.field private mImportStarted:Z

.field private final mIsFromNfc:Z

.field private final mJobId:I

.field private final mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;

.field private mTotalCount:I

.field private mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/contacts/common/vcard/ImportProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;IZ)V
    .locals 2
    .param p1, "service"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .param p3, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p4, "jobId"    # I
    .param p5, "isFromNfc"    # Z

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    .line 71
    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    .line 72
    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    .line 78
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 79
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 80
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .line 82
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    .line 83
    iput p4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    .line 84
    iput-boolean p5, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mIsFromNfc:Z

    .line 77
    return-void
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/sonymobile/android/vcard/VCardInterpreter;[I)Z
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "vcardType"    # I
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "interpreter"    # Lcom/sonymobile/android/vcard/VCardInterpreter;
    .param p5, "possibleVCardVersions"    # [I

    .prologue
    .line 234
    const/4 v8, 0x0

    .line 235
    .local v8, "successful":Z
    move-object/from16 v0, p5

    array-length v7, v0

    .line 236
    .local v7, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 237
    aget v9, p5, v6

    .line 239
    .local v9, "vcardVersion":I
    if-lez v6, :cond_0

    :try_start_0
    move-object/from16 v0, p4

    instance-of v10, v0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;

    if-eqz v10, :cond_0

    .line 241
    move-object/from16 v0, p4

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->clear()V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 249
    sget-object v10, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cancel parsing job "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    const/4 v10, 0x1

    .line 283
    if-eqz p1, :cond_1

    .line 285
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :cond_1
    :goto_1
    return v10

    .line 286
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    goto :goto_1

    .line 252
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 254
    :try_start_3
    new-instance v10, Lcom/sonymobile/android/vcard/VCardParser_V30;

    invoke-direct {v10, p2}, Lcom/sonymobile/android/vcard/VCardParser_V30;-><init>(I)V

    .line 253
    :goto_2
    iput-object v10, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    .line 256
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 257
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    invoke-virtual {v10, p1}, Lcom/sonymobile/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    const/4 v8, 0x1

    .line 283
    if-eqz p1, :cond_3

    .line 285
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 292
    .end local v9    # "vcardVersion":I
    :cond_3
    :goto_3
    return v8

    .line 254
    .restart local v9    # "vcardVersion":I
    :cond_4
    :try_start_6
    new-instance v10, Lcom/sonymobile/android/vcard/VCardParser_V21;

    invoke-direct {v10, p2}, Lcom/sonymobile/android/vcard/VCardParser_V21;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 252
    :catchall_0
    move-exception v10

    :try_start_7
    monitor-exit p0

    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/sonymobile/android/vcard/exception/VCardNestedException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/sonymobile/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 261
    :catch_1
    move-exception v5

    .line 262
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_8
    sget-object v10, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException was emitted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 283
    if-eqz p1, :cond_5

    .line 285
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 236
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 286
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 280
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 281
    .local v1, "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    :try_start_a
    sget-object v10, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonymobile/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 283
    if-eqz p1, :cond_5

    .line 285
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 286
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 274
    .end local v1    # "e":Lcom/sonymobile/android/vcard/exception/VCardException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 275
    .local v4, "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    add-int/lit8 v10, v7, -0x1

    if-ne v6, v10, :cond_6

    .line 276
    :try_start_c
    sget-object v10, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Appropriate version for this vCard is not found."

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 283
    :cond_6
    if-eqz p1, :cond_5

    .line 285
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_4

    .line 286
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 272
    .end local v4    # "e":Lcom/sonymobile/android/vcard/exception/VCardVersionException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 273
    .local v3, "e":Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;
    :try_start_e
    sget-object v10, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 283
    if-eqz p1, :cond_5

    .line 285
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_4

    .line 286
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 263
    .end local v3    # "e":Lcom/sonymobile/android/vcard/exception/VCardNotSupportedException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 271
    .local v2, "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :try_start_10
    sget-object v10, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Nested Exception is found."

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 283
    if-eqz p1, :cond_5

    .line 285
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_4

    .line 286
    :catch_a
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v2    # "e":Lcom/sonymobile/android/vcard/exception/VCardNestedException;
    :catch_b
    move-exception v5

    goto :goto_4

    .line 282
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 283
    if-eqz p1, :cond_7

    .line 285
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 282
    :cond_7
    :goto_5
    throw v10

    .line 286
    :catch_c
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method private runInternal()V
    .locals 23

    .prologue
    .line 139
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v19, "vCard import (id: %d) has started."

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    .line 141
    .local v15, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Canceled before actually handling parameter ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 146
    :cond_0
    iget v4, v15, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    if-nez v4, :cond_4

    .line 152
    const/4 v4, 0x2

    .line 153
    const/16 v19, 0x1

    .line 151
    move/from16 v0, v19

    filled-new-array {v4, v0}, [I

    move-result-object v9

    .line 161
    .local v9, "possibleVCardVersions":[I
    :goto_0
    iget-object v0, v15, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 162
    .local v17, "uri":Landroid/net/Uri;
    iget-object v10, v15, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 163
    .local v10, "account":Landroid/accounts/Account;
    iget v6, v15, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    .line 164
    .local v6, "estimatedVCardType":I
    iget-object v7, v15, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 165
    .local v7, "estimatedCharset":Ljava/lang/String;
    iget v14, v15, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    .line 166
    .local v14, "entryCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    add-int/2addr v4, v14

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    .line 169
    new-instance v8, Lcom/sonymobile/android/vcard/VCardEntryConstructor;

    invoke-direct {v8, v6, v10}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 170
    .local v8, "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    new-instance v11, Lcom/sonymobile/android/vcard/VCardEntryCommitter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v11, v4}, Lcom/sonymobile/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 171
    .local v11, "committer":Lcom/sonymobile/android/vcard/VCardEntryCommitter;
    invoke-virtual {v8, v11}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/sonymobile/android/vcard/VCardEntryHandler;)V

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/sonymobile/android/vcard/VCardEntryHandler;)V

    .line 174
    const/4 v5, 0x0

    .line 175
    .local v5, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 177
    .local v16, "successful":Z
    if-eqz v17, :cond_1

    .line 178
    :try_start_0
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "start importing one vCard (Uri: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 182
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    if-eqz v5, :cond_2

    move-object/from16 v4, p0

    .line 183
    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/common/vcard/ImportProcessor;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/sonymobile/android/vcard/VCardInterpreter;[I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 189
    .end local v16    # "successful":Z
    :cond_2
    if-eqz v5, :cond_3

    .line 191
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishImportNotification(IZ)V

    .line 200
    if-eqz v16, :cond_9

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "vCard import has been canceled (uri: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_2
    return-void

    .line 156
    .end local v6    # "estimatedVCardType":I
    .end local v7    # "estimatedCharset":Ljava/lang/String;
    .end local v8    # "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    .end local v9    # "possibleVCardVersions":[I
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v11    # "committer":Lcom/sonymobile/android/vcard/VCardEntryCommitter;
    .end local v14    # "entryCount":I
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 157
    iget v4, v15, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    const/16 v19, 0x0

    aput v4, v9, v19

    .line 156
    .restart local v9    # "possibleVCardVersions":[I
    goto/16 :goto_0

    .line 192
    .restart local v6    # "estimatedVCardType":I
    .restart local v7    # "estimatedCharset":Ljava/lang/String;
    .restart local v8    # "constructor":Lcom/sonymobile/android/vcard/VCardEntryConstructor;
    .restart local v10    # "account":Landroid/accounts/Account;
    .restart local v11    # "committer":Lcom/sonymobile/android/vcard/VCardEntryCommitter;
    .restart local v14    # "entryCount":I
    .restart local v17    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 186
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v16    # "successful":Z
    :catch_1
    move-exception v12

    .line 187
    .local v12, "e":Ljava/io/IOException;
    const/16 v16, 0x0

    .line 189
    if-eqz v5, :cond_3

    .line 191
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 192
    :catch_2
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 188
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 189
    if-eqz v5, :cond_5

    .line 191
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 188
    :cond_5
    :goto_3
    throw v4

    .line 192
    :catch_3
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 207
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "successful":Z
    :cond_6
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Successfully finished importing one vCard file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v18

    .line 209
    .local v18, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 212
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_7

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v21, v0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mIsFromNfc:Z

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;Z)V

    goto/16 :goto_2

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v21, v0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;Z)V

    goto/16 :goto_2

    .line 220
    :cond_8
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v19, "Created Uris is null or 0 length though the creation itself is successful."

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mIsFromNfc:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v22

    move/from16 v3, v21

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;Z)V

    goto/16 :goto_2

    .line 226
    .end local v18    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_9
    sget-object v4, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to read one vCard file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    .line 297
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ImportProcessor received cancel request"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 301
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCanceled:Z

    .line 302
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/sonymobile/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardParser;->cancel()V

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportStarted:Z

    if-nez v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 312
    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 317
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onEntryCreated(Lcom/sonymobile/android/vcard/VCardEntry;)V
    .locals 6
    .param p1, "entry"    # Lcom/sonymobile/android/vcard/VCardEntry;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    .line 100
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    iget v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/sonymobile/android/vcard/VCardEntry;II)V

    .line 98
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 113
    return-void

    .line 115
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 119
    :try_start_2
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->runInternal()V

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 132
    :cond_1
    monitor-enter p0

    .line 133
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 132
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    sget-object v2, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeException thrown during import"

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v2

    .line 132
    monitor-enter p0

    .line 133
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    .line 131
    throw v2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    sget-object v2, Lcom/android/contacts/common/vcard/ImportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "OutOfMemoryError thrown during import"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 132
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_3
    move-exception v2

    monitor-exit p0

    throw v2
.end method
