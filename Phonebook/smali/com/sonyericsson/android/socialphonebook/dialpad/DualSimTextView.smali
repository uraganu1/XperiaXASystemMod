.class public Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;
.super Landroid/widget/TextView;
.source "DualSimTextView.java"


# static fields
.field private static final DECREASE_FONT_EXTRA_VALUE:F = 0.3f

.field private static final MAX_CHARS_BEFORE_FIRST_ROW_BREAK:I = 0xc


# instance fields
.field private final mDualSimMaxTextHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    const v1, 0x7f0d0035

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->mDualSimMaxTextHeight:F

    .line 40
    return-void
.end method

.method private fitTextInTextView()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getCompoundPaddingStart()I

    move-result v11

    sub-int v7, v10, v11

    .line 65
    .local v7, "textViewWidth":I
    if-nez v7, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 69
    .local v2, "newTextSize":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getTextSize()F

    move-result v6

    .line 70
    .local v6, "textSize":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "originalText":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "words":[Ljava/lang/String;
    aget-object v1, v9, v12

    .line 75
    .local v1, "longestWord":Ljava/lang/String;
    array-length v10, v9

    if-le v10, v13, :cond_1

    .line 76
    aget-object v10, v9, v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aget-object v11, v9, v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_5

    aget-object v1, v9, v12

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 81
    .local v8, "textWidth":F
    int-to-float v10, v7

    cmpl-float v10, v8, v10

    if-lez v10, :cond_2

    .line 82
    int-to-float v10, v7

    div-float v0, v10, v8

    .line 83
    .local v0, "diff":F
    mul-float v2, v6, v0

    .line 87
    .end local v0    # "diff":F
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v5, "textRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v3, v12, v11, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 89
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 90
    .local v4, "textHeight":I
    int-to-float v10, v4

    iget v11, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->mDualSimMaxTextHeight:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 91
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->mDualSimMaxTextHeight:F

    int-to-float v11, v4

    div-float v0, v10, v11

    .line 92
    .restart local v0    # "diff":F
    mul-float v10, v6, v0

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 95
    .end local v0    # "diff":F
    :cond_3
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v10, v2, v10

    if-eqz v10, :cond_4

    .line 96
    const v10, 0x3e99999a    # 0.3f

    sub-float v10, v2, v10

    invoke-virtual {p0, v12, v10}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->setTextSize(IF)V

    .line 63
    :cond_4
    return-void

    .line 76
    .end local v4    # "textHeight":I
    .end local v5    # "textRect":Landroid/graphics/Rect;
    .end local v8    # "textWidth":F
    :cond_5
    aget-object v1, v9, v13

    goto :goto_0
.end method

.method private reformatOperatorName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 111
    move-object v1, p1

    .line 114
    .local v1, "returnText":Ljava/lang/String;
    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v6

    const/4 v4, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 118
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_0
    :goto_0
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    array-length v3, v2

    if-le v3, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_1
    return-object v1

    .line 122
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 56
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->fitTextInTextView()V

    .line 55
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->reformatOperatorName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
