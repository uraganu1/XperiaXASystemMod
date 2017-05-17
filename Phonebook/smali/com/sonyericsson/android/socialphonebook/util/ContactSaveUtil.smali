.class public final Lcom/sonyericsson/android/socialphonebook/util/ContactSaveUtil;
.super Ljava/lang/Object;
.source "ContactSaveUtil.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/ContactSaveUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/ContactSaveUtil;->-assertionsDisabled:Z

    .line 21
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createClipAndScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "aBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I

    .prologue
    const/4 v6, 0x1

    .line 38
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/ContactSaveUtil;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    move v0, v6

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 42
    .local v8, "photoWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 43
    .local v7, "photoHeight":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 44
    .local v3, "shortLength":I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float v9, v0, v1

    .line 45
    .local v9, "sx":F
    int-to-float v0, p2

    int-to-float v1, v3

    div-float v10, v0, v1

    .line 46
    .local v10, "sy":F
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 48
    sub-int v0, v8, v3

    div-int/lit8 v1, v0, 0x2

    .line 49
    sub-int v0, v7, v3

    div-int/lit8 v2, v0, 0x2

    move-object v0, p0

    move v4, v3

    .line 47
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static handleSaveIntentCallback(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "deleteContactSucceeded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const v0, 0x7f09012e

    .line 61
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    :goto_0
    return-void

    .line 67
    :cond_0
    const v0, 0x7f09012f

    .line 65
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
