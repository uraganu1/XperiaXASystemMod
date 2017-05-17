.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;
.super Ljava/lang/Object;
.source "VoicemailFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;
    }
.end annotation


# static fields
.field public static final FETCH_CONTENT_TIMEOUT_MS:J = 0x4e20L

.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_HAS_CONTENT_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

.field private mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

.field private mOnVoicemailFetchListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mOnVoicemailFetchListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->queryHasContent(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/net/Uri;)V
    .locals 0
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->requestContent(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "has_content"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 60
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "voicemaiFetchListener"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VoicemailFetcher"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mApplicationContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mOnVoicemailFetchListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    .line 86
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    .line 82
    return-void
.end method

.method private queryHasContent(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 160
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryHasContent : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v7

    .line 169
    :goto_0
    if-eqz v6, :cond_0

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_0
    return v1

    :cond_1
    move v1, v8

    goto :goto_0

    .line 169
    :cond_2
    if-eqz v6, :cond_3

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_3
    return v8

    .line 168
    :catchall_0
    move-exception v1

    .line 169
    if-eqz v6, :cond_4

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_4
    throw v1
.end method

.method private requestContent(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 141
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestContent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->destroy()V

    .line 145
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 140
    return-void
.end method

.method private sendFetchVoicemailRequest(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 154
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendFetchVoicemailRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->destroy()V

    .line 93
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    .line 89
    :cond_0
    return-void
.end method

.method public requestVoicemail(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 105
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->CHECK_FOR_CONTENT:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    return-void
.end method
