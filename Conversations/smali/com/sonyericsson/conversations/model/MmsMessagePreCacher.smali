.class public Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;
.super Ljava/lang/Object;
.source "MmsMessagePreCacher.java"


# static fields
.field private static final DEBUG:Z

.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private volatile mIsCanceled:Z

.field private volatile mThreadId:J


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mIsCanceled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mThreadId:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->loadMmsCursor()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->setCursorPosition(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->preCacheMessages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    :cond_0
    sput-boolean v1, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->DEBUG:Z

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mIsCanceled:Z

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mThreadId:J

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private loadMmsCursor()Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 116
    sget-boolean v0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "threadId: "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(J)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    .line 123
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mThreadId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 124
    return v6

    .line 126
    :cond_2
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mThreadId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 127
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageProjection;->getMmsProjection()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "thread_id = ? AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    .line 129
    const-string/jumbo v5, "sequence_time DESC"

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private preCacheMessage()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 153
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->MMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .line 152
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v1

    .line 154
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    sget-boolean v2, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 155
    const-string/jumbo v2, "Pre cache message at pos: "

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, ", key: "

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    .line 160
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method

.method private preCacheMessages()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 136
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 137
    .local v1, "startPos":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mIsCanceled:Z

    if-nez v2, :cond_2

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    add-int v3, v1, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->preCacheMessage()V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    sub-int v3, v1, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->preCacheMessage()V

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    sget-boolean v2, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 146
    const-string/jumbo v2, "Finished caching, is canceled: "

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 135
    :cond_3
    return-void
.end method

.method private setCursorPosition(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "idColIndex":I
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 175
    .local v0, "id":J
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 176
    const/4 v3, 0x1

    return v3

    .line 170
    .end local v0    # "id":J
    .end local v2    # "idColIndex":I
    :cond_1
    return v6

    .line 178
    .restart local v0    # "id":J
    .restart local v2    # "idColIndex":I
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    return v6
.end method


# virtual methods
.method public preCacheAdjacent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mIsCanceled:Z

    .line 98
    sget-object v0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;-><init>(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public setThreadId(J)V
    .locals 3
    .param p1, "threadId"    # J
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mThreadId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->mIsCanceled:Z

    .line 78
    sget-object v0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;-><init>(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
