.class Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;
.super Ljava/lang/Object;
.source "GaGtmExceptionParser.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 185
    :try_start_0
    invoke-static {p1, p2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 192
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->serializeQueueToFile()V

    .line 194
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    :goto_0
    monitor-exit v1

    .line 205
    :cond_0
    :goto_1
    return-void

    .line 196
    :cond_1
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :catch_0
    move-exception v0

    .line 201
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GaGtmHelper"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "internal exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
