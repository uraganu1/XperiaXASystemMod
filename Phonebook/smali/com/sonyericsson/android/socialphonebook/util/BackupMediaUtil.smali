.class public Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;
.super Ljava/lang/Object;
.source "BackupMediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;
    }
.end annotation


# static fields
.field public static final DES_INTERNAL_STORAGE:Ljava/lang/String; = "Internal Storage"

.field public static final DES_SD_CARD:Ljava/lang/String; = "SD Card"

.field public static final DES_USB_STORAGE:Ljava/lang/String; = "USB storage"

.field public static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "external_storage_path"

.field public static final FAIL_EXTERNAL_STORAGE_FULL:I = 0x2711

.field public static final SIM_PATH:Ljava/lang/String; = "sim_path"

.field public static final SIM_STATE_ABSENT:I = 0x3

.field public static final SIM_STATE_IO_ERROR:I = 0x4

.field public static final SIM_STATE_OK:I = 0x1

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x9

.field public static final SIM_STATE_UNKNOWN:I = 0x2

.field public static final SIM_SUB1_PATH:Ljava/lang/String; = "sim_sub1_path"

.field public static final SIM_SUB2_PATH:Ljava/lang/String; = "sim_sub2_path"

.field public static final STORAGE_STATE_ABSENT:I = 0x7

.field public static final STORAGE_STATE_OK:I = 0x5

.field public static final STORAGE_STATE_READ_ONLY:I = 0x8

.field public static final STORAGE_STATE_UNKNOWN:I = 0x6

.field private static mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

.field private static mStorageMngr:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;-><init>(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    .line 64
    sput-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mStorageMngr:Landroid/os/storage/StorageManager;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExternalStorageState(Landroid/content/Context;ZLjava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkIfWritable"    # Z
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v1, 0x5

    .line 208
    .local v1, "storageState":I
    invoke-static {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 210
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const/4 v1, 0x5

    .line 230
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    if-eqz p1, :cond_1

    .line 215
    const/16 v1, 0x8

    goto :goto_0

    .line 217
    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    .line 219
    :cond_2
    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 220
    const-string/jumbo v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 219
    if-eqz v2, :cond_4

    .line 221
    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    .line 223
    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    .line 227
    :cond_5
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public static checkSIM(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_0

    .line 169
    return v6

    .line 172
    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 173
    const/4 p1, 0x0

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 177
    const-string/jumbo v3, "msim_mode_setting"

    .line 176
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, "modeFromSettings":I
    shl-int v2, v5, p1

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 180
    return v7

    .line 182
    :cond_2
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSimState(Landroid/content/Context;I)I

    move-result v1

    .line 183
    .local v1, "retInt":I
    packed-switch v1, :pswitch_data_0

    .line 193
    :pswitch_0
    return v5

    .line 185
    :pswitch_1
    return v6

    .line 187
    :pswitch_2
    return v7

    .line 189
    :pswitch_3
    const/4 v2, 0x4

    return v2

    .line 191
    :pswitch_4
    const/16 v2, 0x9

    return v2

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static convertPathToSub(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string/jumbo v0, "sim_sub1_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_0
    const-string/jumbo v0, "sim_sub2_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_1
    const-string/jumbo v0, "sim_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    const/4 v0, -0x1

    return v0

    .line 410
    :cond_2
    const/high16 v0, -0x80000000

    return v0
.end method

.method public static getDefaultExternalStorage(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->prepareEnv(Landroid/content/Context;)V

    .line 353
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "storages":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 356
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 358
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    .line 359
    .local v2, "type":Landroid/os/storage/StorageManager$StorageType;
    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    if-eq v2, v5, :cond_0

    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v2, v5, :cond_1

    .line 360
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkExternalStorageState(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 361
    return-object v0

    .line 356
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "type":Landroid/os/storage/StorageManager$StorageType;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getEMMCMessage(I)V
    .locals 3
    .param p0, "errorType"    # I

    .prologue
    const v2, 0x7f0902b0

    .line 297
    sparse-switch p0, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 300
    :sswitch_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 303
    :sswitch_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f0902c0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 307
    :sswitch_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f090291

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 308
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 311
    :sswitch_3
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f09028d

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 312
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f0902dd

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x7f0e000d -> :sswitch_3
        0x7f0e000e -> :sswitch_2
        0x7f0e0014 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getErrorMessage(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "errorType"    # I

    .prologue
    const v2, 0x7f090291

    .line 243
    if-nez p1, :cond_2

    const v1, 0x7f0e000e

    if-ne p2, v1, :cond_2

    .line 245
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 246
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v2, 0x7f090296

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 260
    :cond_1
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    return-object v1

    .line 244
    :cond_2
    const v1, 0x7f0e0015

    if-eq p2, v1, :cond_0

    .line 247
    const v1, 0x7f0e000f

    if-ne p2, v1, :cond_3

    .line 248
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 249
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v2, 0x7f0902d8

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 252
    .local v0, "type":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_4

    .line 253
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getEMMCMessage(I)V

    goto :goto_0

    .line 254
    :cond_4
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_5

    .line 255
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getSDCardMessage(I)V

    goto :goto_0

    .line 256
    :cond_5
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_1

    .line 257
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getUSBOTGMessage(I)V

    goto :goto_0
.end method

.method public static getExternalCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "extStorages":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 394
    .local v1, "storage":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v4

    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v4, v5, :cond_0

    .line 395
    const/4 v4, 0x1

    invoke-static {p0, v4, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkExternalStorageState(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 396
    return-object v1

    .line 393
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v1    # "storage":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getExternalStorageDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 375
    .local v0, "type":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    .line 376
    const v1, 0x7f0902d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 377
    :cond_0
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_1

    .line 378
    const v1, 0x7f0902b4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 379
    :cond_1
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_2

    .line 380
    const v1, 0x7f0902da

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 382
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getExternalStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->prepareEnv(Landroid/content/Context;)V

    .line 123
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mStorageMngr:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->prepareEnv(Landroid/content/Context;)V

    .line 139
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mStorageMngr:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    return-object v1
.end method

.method public static getExternalStorages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->prepareEnv(Landroid/content/Context;)V

    .line 111
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mStorageMngr:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method private static getSDCardMessage(I)V
    .locals 3
    .param p0, "errorType"    # I

    .prologue
    const v2, 0x7f0902af

    .line 269
    sparse-switch p0, :sswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 272
    :sswitch_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 275
    :sswitch_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f0902bf

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 279
    :sswitch_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f090291

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 280
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 283
    :sswitch_3
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f09028d

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 284
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f0902db

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x7f0e000d -> :sswitch_3
        0x7f0e000e -> :sswitch_2
        0x7f0e0014 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getUSBOTGMessage(I)V
    .locals 3
    .param p0, "errorType"    # I

    .prologue
    const v2, 0x7f0902b1

    .line 325
    sparse-switch p0, :sswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 328
    :sswitch_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 331
    :sswitch_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f0902c1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 335
    :sswitch_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f090291

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 336
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 339
    :sswitch_3
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f09028d

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    .line 340
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mMsg:Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    const v1, 0x7f0902dc

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V

    goto :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x7f0e000d -> :sswitch_3
        0x7f0e000e -> :sswitch_2
        0x7f0e0014 -> :sswitch_2
    .end sparse-switch
.end method

.method public static isSimPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string/jumbo v0, "sim_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sim_sub1_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const-string/jumbo v0, "sim_sub2_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static prepareEnv(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mStorageMngr:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->mStorageMngr:Landroid/os/storage/StorageManager;

    .line 98
    :cond_0
    return-void
.end method
