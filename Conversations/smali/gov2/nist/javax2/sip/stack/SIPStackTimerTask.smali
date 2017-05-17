.class public abstract Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.super Ljava/util/TimerTask;
.source "SIPStackTimerTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;->runTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "SIP stack timer task failed due to exception:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract runTask()V
.end method
