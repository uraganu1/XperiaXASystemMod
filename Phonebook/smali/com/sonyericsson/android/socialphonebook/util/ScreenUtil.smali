.class public Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keepScreenOn(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "on"    # Z

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 19
    :cond_0
    return-void
.end method
