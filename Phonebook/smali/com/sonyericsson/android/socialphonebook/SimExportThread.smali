.class public Lcom/sonyericsson/android/socialphonebook/SimExportThread;
.super Ljava/lang/Thread;
.source "SimExportThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;,
        Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;,
        Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;
    }
.end annotation


# static fields
.field private static final INSERT_ONCE:I = 0x63

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdnInserter:Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

.field private mCanceled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeleteErr:Z

.field private mExportBundle:Landroid/os/Bundle;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

.field private mReplace:Z

.field private mSubscription:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Bundle;ZLandroid/content/Context;Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;I)V
    .locals 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "exportBundle"    # Landroid/os/Bundle;
    .param p3, "replace"    # Z
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;
    .param p6, "sub"    # I

    .prologue
    .line 92
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mSubscription:I

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mExportBundle:Landroid/os/Bundle;

    .line 95
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mReplace:Z

    .line 96
    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    .line 97
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    .line 98
    iput p6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mSubscription:I

    .line 100
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, p6}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getUiccType()I

    move-result v0

    .line 102
    .local v0, "iccType":I
    packed-switch v0, :pswitch_data_0

    .line 112
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unknown SIM type!"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo v3, "power"

    .line 116
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 119
    .local v1, "powerManager":Landroid/os/PowerManager;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    .line 118
    const v3, 0x20000006

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    .end local v0    # "iccType":I
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    return-void

    .line 105
    .restart local v0    # "iccType":I
    :pswitch_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v4, p6}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mAdnInserter:Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    goto :goto_0

    .line 109
    :pswitch_1
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v4, p6}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mAdnInserter:Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private simExport(Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;)I
    .locals 22
    .param p1, "adnInserter"    # Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    .prologue
    .line 178
    const/16 v18, 0x0

    .line 180
    .local v18, "iSimMax":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mSubscription:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v14

    .line 182
    .local v14, "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getTotalCapacity()I

    move-result v18

    .line 185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mReplace:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_1

    .line 186
    const/4 v9, 0x0

    .line 189
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mSubscription:I

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 190
    const/4 v7, 0x0

    .line 189
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 191
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 192
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    sub-int v18, v18, v2

    .line 197
    :cond_0
    if-eqz v9, :cond_1

    .line 198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 199
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_0
    const/4 v9, 0x0

    .line 204
    :cond_1
    const/16 v17, 0x0

    .line 205
    .local v17, "iCntSuccess":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mDeleteErr:Z

    .line 206
    .local v12, "errflg":Z
    const/16 v21, 0x0

    .line 207
    .local v21, "successflg":Z
    const/4 v13, 0x0

    .line 208
    .local v13, "fullflg":Z
    const/16 v20, 0x0

    .line 209
    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mExportBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v15

    .line 210
    .local v15, "iBundleSize":I
    const/4 v10, -0x1

    .line 213
    .local v10, "currentAvailablePbr":I
    const/16 v16, 0x0

    .end local v12    # "errflg":Z
    .local v16, "iCnt":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v15, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mCanceled:Z

    if-eqz v2, :cond_7

    .line 257
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->insertAdnContactToDB()V

    .line 259
    if-eqz v21, :cond_3

    if-eqz v12, :cond_d

    .line 261
    :cond_3
    if-eqz v21, :cond_4

    if-eqz v13, :cond_e

    .line 263
    :cond_4
    if-eqz v13, :cond_5

    .line 264
    const/16 v20, 0x3

    .line 267
    :cond_5
    :goto_3
    return v20

    .line 194
    .end local v10    # "currentAvailablePbr":I
    .end local v13    # "fullflg":Z
    .end local v15    # "iBundleSize":I
    .end local v16    # "iCnt":I
    .end local v17    # "iCntSuccess":I
    .end local v20    # "result":I
    .end local v21    # "successflg":Z
    :catch_0
    move-exception v11

    .line 195
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ": Query adn contacts exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    if-eqz v9, :cond_1

    .line 198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 196
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 197
    if-eqz v9, :cond_6

    .line 198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 199
    const/4 v9, 0x0

    .line 196
    :cond_6
    throw v2

    .line 218
    .restart local v10    # "currentAvailablePbr":I
    .restart local v13    # "fullflg":Z
    .restart local v15    # "iBundleSize":I
    .restart local v16    # "iCnt":I
    .restart local v17    # "iCntSuccess":I
    .restart local v20    # "result":I
    .restart local v21    # "successflg":Z
    :cond_7
    const/16 v19, 0x0

    .line 219
    .local v19, "inserted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mExportBundle:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 221
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_8

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAvailablePbr(Landroid/content/Context;)I

    move-result v10

    .line 224
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    const/4 v2, -0x1

    if-eq v10, v2, :cond_8

    .line 225
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->insertAdn(Landroid/os/Bundle;I)Z

    move-result v19

    .line 230
    .end local v19    # "inserted":Z
    :cond_8
    if-nez v19, :cond_9

    .line 231
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM Insert error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v12, 0x1

    .line 234
    .local v12, "errflg":Z
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 235
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->TAG:Ljava/lang/String;

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Maximum number of SIM card saved. count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 237
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v13, 0x1

    .line 239
    goto/16 :goto_2

    .line 242
    .end local v12    # "errflg":Z
    :cond_9
    add-int/lit8 v17, v17, 0x1

    .line 244
    rem-int/lit8 v2, v17, 0x63

    if-nez v2, :cond_a

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->insertAdnContactToDB()V

    .line 248
    :cond_a
    const/16 v21, 0x1

    .line 252
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    if-eqz v2, :cond_c

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;->incrementProgressBy(I)V

    .line 213
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 260
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_d
    const/16 v20, 0x1

    .line 259
    goto/16 :goto_3

    .line 262
    :cond_e
    const/16 v20, 0x2

    .line 261
    goto/16 :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mCanceled:Z

    .line 167
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 822
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .local v0, "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mCanceled:Z

    .line 133
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mDeleteErr:Z

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mAdnInserter:Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    if-nez v2, :cond_1

    .line 136
    return-void

    .line 140
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mReplace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mAdnInserter:Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->deleteAllAdn()V

    .line 144
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 145
    :cond_2
    return-void

    .line 148
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;->sweepFinished()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :cond_4
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mAdnInserter:Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->simExport(Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;)I

    move-result v1

    .line 157
    .local v1, "result":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    if-eqz v2, :cond_5

    .line 158
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mListener:Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;->exportFinished(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    :cond_6
    return-void

    .line 151
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mDeleteErr:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 161
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 162
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 160
    :cond_7
    throw v2
.end method
