.class public Lcom/android/phone/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/util/ViewUtil$1;
    }
.end annotation


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/phone/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/phone/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resizeText(Landroid/widget/TextView;II)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "originalTextSize"    # I
    .param p2, "minTextSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 97
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 98
    .local v2, "width":I
    if-nez v2, :cond_0

    return-void

    .line 99
    :cond_0
    int-to-float v3, p1

    invoke-virtual {p0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 100
    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float v1, v3, v4

    .line 101
    .local v1, "ratio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 103
    int-to-float v3, p2

    int-to-float v4, p1

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 102
    invoke-virtual {p0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    :cond_1
    return-void
.end method
