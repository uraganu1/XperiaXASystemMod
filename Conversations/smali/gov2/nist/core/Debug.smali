.class public Lgov2/nist/core/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static debug:Z

.field public static parserDebug:Z

.field static stackLogger:Lgov2/nist/core/StackLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lgov2/nist/core/Debug;->debug:Z

    .line 39
    sput-boolean v0, Lgov2/nist/core/Debug;->parserDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 58
    sget-boolean v0, Lgov2/nist/core/Debug;->parserDebug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov2/nist/core/Debug;->stackLogger:Lgov2/nist/core/StackLogger;

    if-nez v0, :cond_2

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-boolean v0, Lgov2/nist/core/Debug;->debug:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lgov2/nist/core/Debug;->stackLogger:Lgov2/nist/core/StackLogger;

    invoke-interface {v0, p0, p1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 52
    sget-boolean v0, Lgov2/nist/core/Debug;->parserDebug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov2/nist/core/Debug;->stackLogger:Lgov2/nist/core/StackLogger;

    if-nez v0, :cond_2

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-boolean v0, Lgov2/nist/core/Debug;->debug:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_2
    sget-object v0, Lgov2/nist/core/Debug;->stackLogger:Lgov2/nist/core/StackLogger;

    const-string/jumbo v1, "Stack Trace"

    invoke-interface {v0, v1, p0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static println(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-boolean v0, Lgov2/nist/core/Debug;->parserDebug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov2/nist/core/Debug;->stackLogger:Lgov2/nist/core/StackLogger;

    if-nez v0, :cond_2

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_1
    sget-boolean v0, Lgov2/nist/core/Debug;->debug:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    sget-object v0, Lgov2/nist/core/Debug;->stackLogger:Lgov2/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method
