.class public Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;
.super Ljava/lang/Object;
.source "SyncCallStatusManager.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;,
        Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;,
        Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;
    }
.end annotation


# static fields
.field private static final MESSAGE_LOAD_SYNC_STATUS:I = 0x2

.field private static final MESSAGE_SYNC_STATUS_LOADED:I = 0x1

.field private static final QUERY_DELAY_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private final mDataContentObserver:Landroid/database/ContentObserver;

.field private mFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsRegisterContentObserver:Z

.field private mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMarginEnd:I

.field private mResolver:Landroid/content/ContentResolver;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;

.field private mSyncCallIconBitmap:Landroid/graphics/Bitmap;

.field private mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Ljava/util/concurrent/FutureTask;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mFutureTask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->performCachingForSyncContact()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsRegisterContentObserver:Z

    .line 47
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;-><init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 106
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;-><init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mMarginEnd:I

    .line 59
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->getSyncCallStatusIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method

.method private isContactIdSyncCallEnable(J)Z
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNumberSyncCallEnable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private performCachingForSyncContact()V
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sync call icon is not loaded"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->getSyncCallEnableList(Landroid/content/ContentResolver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 171
    :cond_1
    return-void

    .line 174
    :cond_2
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "contact_id"

    aput-object v0, v2, v1

    .line 176
    const-string/jumbo v0, "data1"

    aput-object v0, v2, v5

    .line 178
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=?"

    .line 179
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v1

    .line 182
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 183
    const/4 v5, 0x0

    .line 182
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 184
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    :cond_3
    const/4 v6, 0x0

    .line 187
    .local v6, "contactId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 188
    .local v9, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v0, "contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "contactId":Ljava/lang/String;
    const-string/jumbo v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "phoneNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "number":Ljava/lang/String;
    if-eqz v6, :cond_4

    if-nez v9, :cond_7

    .line 197
    :cond_4
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 199
    .end local v6    # "contactId":Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "phoneNumber":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_1
    if-eqz v10, :cond_b

    throw v10

    .line 194
    .restart local v6    # "contactId":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    .restart local v9    # "phoneNumber":Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 199
    .end local v6    # "contactId":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_2
    if-eqz v7, :cond_8

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_3
    if-eqz v1, :cond_a

    throw v1

    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v5

    if-nez v1, :cond_9

    move-object v1, v5

    goto :goto_3

    :cond_9
    if-eq v1, v5, :cond_8

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    throw v0

    .line 201
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Synccall enabled contacts count "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    .line 199
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnabledContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 285
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mContext:Landroid/content/Context;

    .line 273
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 264
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->performCachingForSyncContact(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method public performCachingForSyncContact(Landroid/widget/BaseAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mFutureTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 127
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$3;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;-><init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;)V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$3;-><init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mFutureTask:Ljava/util/concurrent/FutureTask;

    .line 142
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mFutureTask:Ljava/util/concurrent/FutureTask;

    const-string/jumbo v2, "performCachingForSyncContact init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void

    .line 124
    :cond_1
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sync call icon is not loaded"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    .line 78
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->URI_ADDRESSBOOK_SYNC_CALL:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 77
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    .line 80
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->URI_SYNC_CALL_SETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 79
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsRegisterContentObserver:Z

    .line 71
    return-void
.end method

.method public setSyncCallStatus(Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;J)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "badge"    # Landroid/widget/QuickContactBadge;
    .param p3, "contactId"    # J

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Sync call icon is not loaded"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Sync call status is false or total sync call enabled contacts is zero"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 216
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {p2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 219
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 220
    invoke-virtual {p2}, Landroid/widget/QuickContactBadge;->requestLayout()V

    .line 222
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->isContactIdSyncCallEnable(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    :goto_0
    return-void

    .line 225
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setSyncCallStatus(Landroid/widget/ImageView;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/ListItemType;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "itemType"    # Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    .prologue
    const/16 v0, 0x8

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sync call icon is not loaded"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncEnableNumberList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sync call status is false or total sync call enabled contacts is zero"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->isNumberSyncCallEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSyncCallIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    :goto_0
    return-void

    .line 246
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    if-ne p3, v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsRegisterContentObserver:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsRegisterContentObserver:Z

    .line 87
    :cond_0
    return-void
.end method

.method public updateSyncCallSettingsStatusFlag(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->isSyncCallSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync call settings status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->mIsSyncCallSettingsON:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
