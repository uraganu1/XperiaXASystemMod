.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;
.super Landroid/database/ContentObserver;
.source "VoicemailFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResultHandler"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVoicemailUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 4
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    .line 185
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FetchResultHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mHandler:Landroid/os/Handler;

    .line 188
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {p0, v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method private registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    return-void
.end method

.method private unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "destroy : "

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 218
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    .line 220
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)V

    .line 219
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run onTimeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;->onTimeout(Landroid/net/Uri;)V

    .line 194
    :cond_0
    return-void
.end method
