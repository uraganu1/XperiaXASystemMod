.class public Lcom/sonymobile/jms/util/ErrorUtil;
.super Ljava/lang/Object;
.source "ErrorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->throwOnUIThread(Ljava/lang/RuntimeException;)V

    .line 34
    invoke-static {p0, p1}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public static handleUnsupportedCase(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->throwOnUIThread(Ljava/lang/RuntimeException;)V

    .line 27
    invoke-static {p0}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private static throwOnUIThread(Ljava/lang/RuntimeException;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonymobile/jms/util/ErrorUtil$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/jms/util/ErrorUtil$1;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method
