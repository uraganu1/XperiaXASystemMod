.class public Lcom/sonyericsson/conversations/ui/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTopToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 57
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->setTopGravity(Landroid/content/Context;Landroid/widget/Toast;)V

    .line 58
    return-object v0

    .line 60
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-object v1
.end method

.method private static setTopGravity(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 65
    .local v0, "heightOffset":I
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 63
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 26
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
