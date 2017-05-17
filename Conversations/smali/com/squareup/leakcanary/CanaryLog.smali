.class public final Lcom/squareup/leakcanary/CanaryLog;
.super Ljava/lang/Object;
.source "CanaryLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/CanaryLog$DefaultLogger;,
        Lcom/squareup/leakcanary/CanaryLog$Logger;
    }
.end annotation


# static fields
.field private static volatile logger:Lcom/squareup/leakcanary/CanaryLog$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/squareup/leakcanary/CanaryLog$DefaultLogger;

    invoke-direct {v0}, Lcom/squareup/leakcanary/CanaryLog$DefaultLogger;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/CanaryLog;->logger:Lcom/squareup/leakcanary/CanaryLog$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 41
    sget-object v0, Lcom/squareup/leakcanary/CanaryLog;->logger:Lcom/squareup/leakcanary/CanaryLog$Logger;

    .line 42
    .local v0, "logger":Lcom/squareup/leakcanary/CanaryLog$Logger;
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1}, Lcom/squareup/leakcanary/CanaryLog$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void

    .line 43
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    sget-object v0, Lcom/squareup/leakcanary/CanaryLog;->logger:Lcom/squareup/leakcanary/CanaryLog$Logger;

    .line 51
    .local v0, "logger":Lcom/squareup/leakcanary/CanaryLog$Logger;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p0, p1, p2}, Lcom/squareup/leakcanary/CanaryLog$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 52
    :cond_0
    return-void
.end method
