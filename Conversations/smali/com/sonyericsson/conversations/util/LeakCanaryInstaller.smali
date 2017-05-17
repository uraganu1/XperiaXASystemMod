.class public Lcom/sonyericsson/conversations/util/LeakCanaryInstaller;
.super Ljava/lang/Object;
.source "LeakCanaryInstaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installLeakCanary(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 14
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "On release build, not installing LeakCanary."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method
