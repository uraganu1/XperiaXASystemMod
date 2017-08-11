.class public Lcom/sonymobile/incallui/SomcResizingTextTextView;
.super Landroid/widget/TextView;
.source "SomcResizingTextTextView.java"


# instance fields
.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mOriginalTextSize:I

    .line 42
    sget-object v1, Lcom/android/phone/common/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mOriginalTextSize:I

    int-to-float v1, v1

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mMinTextSize:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method

.method private resizeText(I)V
    .locals 7
    .param p1, "textSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 62
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->getWidth()I

    move-result v3

    .line 63
    .local v3, "width":I
    if-nez v3, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    int-to-float v4, p1

    invoke-virtual {p0, v6, v4}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->setTextSize(IF)V

    .line 68
    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float v2, v4, v5

    .line 69
    .local v2, "ratio":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 70
    iget v4, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mMinTextSize:I

    int-to-float v4, v4

    int-to-float v5, p1

    mul-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 71
    .local v0, "newTextSize":F
    invoke-virtual {p0, v6, v0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->setTextSize(IF)V

    .line 72
    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mMinTextSize:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 73
    float-to-int v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->resizeText(I)V

    .line 60
    .end local v0    # "newTextSize":F
    :cond_1
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 57
    iget v0, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mOriginalTextSize:I

    invoke-direct {p0, v0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->resizeText(I)V

    .line 55
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 51
    iget v0, p0, Lcom/sonymobile/incallui/SomcResizingTextTextView;->mOriginalTextSize:I

    invoke-direct {p0, v0}, Lcom/sonymobile/incallui/SomcResizingTextTextView;->resizeText(I)V

    .line 49
    return-void
.end method
