.class public Lcom/sonymobile/systemui/enterprise/KeyguardSecurity;
.super Ljava/lang/Object;
.source "KeyguardSecurity.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    const-string/jumbo v1, "startup-reason"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 18
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "KeyguardSecurity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootReasonIsCrash()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "startupReason":I
    :try_start_0
    invoke-static {}, Lcom/sonymobile/systemui/enterprise/KeyguardSecurity;->getStartupReasonJni()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 36
    :goto_0
    if-ne v1, v2, :cond_0

    :goto_1
    return v2

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "KeyguardSecurity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static native getStartupReasonJni()I
.end method
