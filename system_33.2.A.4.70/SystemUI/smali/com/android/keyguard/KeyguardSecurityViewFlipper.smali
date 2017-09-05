.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 57
    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .param p1, "maxSize"    # I
    .param p2, "childDimen"    # I

    .prologue
    .line 253
    packed-switch p2, :pswitch_data_0

    .line 263
    const/high16 v0, 0x40000000    # 2.0f

    .line 264
    .local v0, "mode":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 267
    .local v1, "size":I
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 255
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_0
    const/high16 v0, -0x80000000

    .line 256
    .restart local v0    # "mode":I
    move v1, p1

    .line 257
    .restart local v1    # "size":I
    goto :goto_0

    .line 259
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 260
    .restart local v0    # "mode":I
    move v1, p1

    .line 261
    .restart local v1    # "size":I
    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 181
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 186
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 191
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 82
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 128
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 196
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 197
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 198
    .local v9, "heightMode":I
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 199
    const-string/jumbo v19, "KeyguardSecurityViewFlipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onMeasure: widthSpec "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 200
    const-string/jumbo v21, " should be AT_MOST"

    .line 199
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-eq v9, v0, :cond_1

    .line 203
    const-string/jumbo v19, "KeyguardSecurityViewFlipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onMeasure: heightSpec "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 204
    const-string/jumbo v21, " should be AT_MOST"

    .line 203
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 208
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 209
    .local v10, "heightSize":I
    move/from16 v14, v18

    .line 210
    .local v14, "maxWidth":I
    move v13, v10

    .line 211
    .local v13, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v6

    .line 212
    .local v6, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v6, :cond_5

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 214
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 212
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 220
    .local v12, "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_4

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v14, :cond_4

    .line 221
    iget v14, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 223
    :cond_4
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v13, :cond_2

    .line 224
    iget v13, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    goto :goto_1

    .line 228
    .end local v3    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v20

    add-int v15, v19, v20

    .line 229
    .local v15, "wPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v20

    add-int v7, v19, v20

    .line 230
    .local v7, "hPadding":I
    sub-int v19, v14, v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 231
    sub-int v19, v13, v7

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 233
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move/from16 v16, v18

    .line 234
    .local v16, "width":I
    :goto_2
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v9, v0, :cond_7

    move v8, v10

    .line 235
    .local v8, "height":I
    :goto_3
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_8

    .line 236
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 237
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 239
    .restart local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v5

    .line 240
    .local v5, "childWidthSpec":I
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v4

    .line 242
    .local v4, "childHeightSpec":I
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v20, v18, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 245
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v20, v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 235
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 233
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeightSpec":I
    .end local v5    # "childWidthSpec":I
    .end local v8    # "height":I
    .end local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .end local v16    # "width":I
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "width":I
    goto :goto_2

    .line 234
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "height":I
    goto :goto_3

    .line 247
    :cond_8
    add-int v19, v16, v15

    add-int v20, v8, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 112
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 120
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 64
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    const/4 v1, 0x0

    .end local v2    # "result":Z
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 69
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x1

    .local v2, "result":Z
    goto :goto_1

    .line 74
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_2
    return v2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 88
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 96
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 94
    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 148
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/String;I)V

    .line 146
    :cond_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 140
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 164
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 162
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 172
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v1

    return v1

    .line 175
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
