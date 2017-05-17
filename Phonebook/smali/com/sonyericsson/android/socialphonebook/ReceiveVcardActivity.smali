.class public Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;
.super Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.source "ReceiveVcardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "/"

.field public static final KEY_STATE_KILL_PROCESS:Ljava/lang/String; = "state_kill_process"

.field private static final MEMORY_FULL_JUDGE_PERCENT:I = 0xa

.field private static final PROBABILITY:J = 0x64L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlertDialog:Landroid/app/AlertDialog;

.field private mFileDirectory:Ljava/lang/String;

.field protected mSelectedFileUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mFileDirectory:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private isStorageAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getDefaultExternalStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getSdCardContactsPath()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mFileDirectory:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mFileDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    return v3

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    return v3

    .line 335
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check directory error : Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v1, 0x0

    return v1
.end method

.method private showAlertDialog(I)V
    .locals 4
    .param p1, "stringRscId"    # I

    .prologue
    .line 188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const v2, 0x7f0901fa

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 188
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    const v3, 0x7f090200

    .line 188
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 186
    return-void
.end method


# virtual methods
.method protected final checkInstanceState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 237
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkInstanceState"

    const-string/jumbo v2, "start"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const-string/jumbo v0, "state_kill_process"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkInstanceState"

    const-string/jumbo v2, "Process was killed"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->finish()V

    .line 244
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_0
    return v3
.end method

.method protected final clearAlertDialog()V
    .locals 3

    .prologue
    .line 292
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearAlertDialog"

    const-string/jumbo v2, "start."

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    :cond_0
    return-void
.end method

.method protected getMemoryStatus()Z
    .locals 14

    .prologue
    .line 262
    sget-object v10, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getMemoryStatus"

    const-string/jumbo v12, "start."

    invoke-virtual {p0, v10, v11, v12}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    .line 264
    .local v8, "path":Ljava/io/File;
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 265
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 266
    .local v4, "blockSize":J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 267
    .local v0, "availableBlocks":J
    mul-long v2, v0, v4

    .line 270
    .local v2, "availableSpace":J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v4

    .line 271
    const-wide/16 v12, 0x64

    .line 270
    div-long v6, v10, v12

    .line 275
    .local v6, "onePercentMemory":J
    const-wide/16 v10, 0xa

    .line 274
    mul-long/2addr v10, v6

    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    .line 276
    sget-object v10, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getMemoryStatus() memory is less than 10%."

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v10, 0x0

    return v10

    .line 280
    :cond_0
    const/4 v10, 0x1

    return v10
.end method

.method protected final logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "onCreate"

    const-string/jumbo v25, "start"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->checkInstanceState(Landroid/os/Bundle;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 99
    .local v14, "intent":Landroid/content/Intent;
    const/16 v22, 0x0

    .line 100
    .local v22, "uri":Landroid/net/Uri;
    const-string/jumbo v23, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 101
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mIsFromNfc:Z

    .line 102
    const/4 v12, 0x0

    .line 103
    .local v12, "filePath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->isStorageAvailable()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 104
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mFileDirectory:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f090397

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 109
    .local v12, "filePath":Ljava/lang/String;
    const-string/jumbo v23, "android.nfc.extra.NDEF_MESSAGES"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v19

    .line 111
    .local v19, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 112
    const/16 v23, 0x0

    aget-object v16, v19, v23

    check-cast v16, Landroid/nfc/NdefMessage;

    .line 113
    .local v16, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v20

    .line 114
    .local v20, "record":[Landroid/nfc/NdefRecord;
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 115
    move-object/from16 v0, v20

    array-length v15, v0

    .line 116
    .local v15, "length":I
    const/16 v17, 0x0

    .line 118
    .local v17, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v17    # "os":Ljava/io/OutputStream;
    .local v18, "os":Ljava/io/OutputStream;
    if-eqz v18, :cond_3

    .line 120
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_2

    .line 121
    :try_start_1
    aget-object v23, v20, v13

    invoke-virtual/range {v23 .. v23}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    .line 122
    .local v8, "buff":[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 120
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 106
    .end local v8    # "buff":[B
    .end local v13    # "i":I
    .end local v15    # "length":I
    .end local v16    # "msg":Landroid/nfc/NdefMessage;
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v19    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v20    # "record":[Landroid/nfc/NdefRecord;
    .local v12, "filePath":Ljava/lang/String;
    :cond_1
    return-void

    .line 124
    .local v12, "filePath":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v15    # "length":I
    .restart local v16    # "msg":Landroid/nfc/NdefMessage;
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v19    # "rawMsgs":[Landroid/os/Parcelable;
    .restart local v20    # "record":[Landroid/nfc/NdefRecord;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 126
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v11, "file":Ljava/io/File;
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v22

    .line 132
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "i":I
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v18, :cond_4

    .line 134
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "length":I
    .end local v16    # "msg":Landroid/nfc/NdefMessage;
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v19    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v20    # "record":[Landroid/nfc/NdefRecord;
    :cond_4
    :goto_1
    if-eqz v22, :cond_a

    .line 150
    const-string/jumbo v23, "file"

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 151
    const-string/jumbo v23, "content"

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 157
    :cond_5
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mSelectedFileUri:Landroid/net/Uri;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->getMemoryStatus()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 159
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "importOneVCardFromBT ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mSelectedFileUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v7

    .line 162
    .local v7, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v5

    .line 163
    .local v5, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    .line 164
    .local v21, "size":I
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 166
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 168
    .local v6, "accountSelectedListener":Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;
    const/16 v23, 0x0

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v9

    .line 169
    .local v9, "dialog":Landroid/app/Dialog;
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 89
    .end local v5    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v6    # "accountSelectedListener":Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;
    .end local v7    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v9    # "dialog":Landroid/app/Dialog;
    .end local v21    # "size":I
    :goto_2
    return-void

    .line 135
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v15    # "length":I
    .restart local v16    # "msg":Landroid/nfc/NdefMessage;
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v19    # "rawMsgs":[Landroid/os/Parcelable;
    .restart local v20    # "record":[Landroid/nfc/NdefRecord;
    :catch_0
    move-exception v10

    .line 136
    .local v10, "e":Ljava/io/IOException;
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Cannot close FileOutputStream"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    .end local v10    # "e":Ljava/io/IOException;
    .end local v18    # "os":Ljava/io/OutputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    .restart local v22    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 130
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "IOException occurs.File path is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    if-eqz v17, :cond_4

    .line 134
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 135
    :catch_2
    move-exception v10

    .line 136
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Cannot close FileOutputStream"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 131
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    .line 132
    :goto_4
    if-eqz v17, :cond_6

    .line 134
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 131
    :cond_6
    :goto_5
    throw v23

    .line 135
    :catch_3
    move-exception v10

    .line 136
    .restart local v10    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot close FileOutputStream"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 142
    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "length":I
    .end local v16    # "msg":Landroid/nfc/NdefMessage;
    .end local v20    # "record":[Landroid/nfc/NdefRecord;
    :cond_7
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "the Message is null, receive nothing"

    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->finish()V

    .line 144
    return-void

    .line 147
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v19    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_8
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .local v22, "uri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 152
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_9
    const-string/jumbo v23, "android.resource"

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 153
    :cond_a
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "unsupported URI "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const v23, 0x7f0902bb

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->showAlertDialog(I)V

    .line 155
    return-void

    .line 171
    .restart local v5    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v7    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .restart local v21    # "size":I
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 172
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->importOneVCardFromBT(Landroid/net/Uri;Landroid/accounts/Account;)V

    goto/16 :goto_2

    .line 171
    :cond_c
    const/4 v4, 0x0

    .local v4, "account":Landroid/accounts/Account;
    goto :goto_6

    .line 175
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v7    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v21    # "size":I
    :cond_d
    sget-object v23, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "onCreate() System Memory Full"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v23, 0x7f090206

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->showAlertDialog(I)V

    goto/16 :goto_2

    .line 131
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v15    # "length":I
    .restart local v16    # "msg":Landroid/nfc/NdefMessage;
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v19    # "rawMsgs":[Landroid/os/Parcelable;
    .restart local v20    # "record":[Landroid/nfc/NdefRecord;
    .local v22, "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v23

    move-object/from16 v17, v18

    .end local v18    # "os":Ljava/io/OutputStream;
    .local v17, "os":Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 129
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v17, v18

    .end local v18    # "os":Ljava/io/OutputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    goto/16 :goto_3
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    const-string/jumbo v2, "start"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->onDestroy()V

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->onImportVcardDestroy()V

    .line 211
    return-void
.end method

.method protected final onImportVcardDestroy()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->clearAlertDialog()V

    .line 285
    return-void
.end method

.method protected final onResume()V
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    const-string/jumbo v2, "start"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->onResume()V

    .line 202
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveInstanceState"

    const-string/jumbo v2, "start"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string/jumbo v0, "state_kill_process"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    return-void
.end method
