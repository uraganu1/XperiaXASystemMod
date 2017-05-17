.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;
.super Landroid/view/View;
.source "DragFavoritesBitmapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;,
        Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$1;
    }
.end annotation


# static fields
.field public static final GRAVITY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCol:I

.field private mInvalid:Z

.field private mMaxR:F

.field private mPixelsPerVertex:I

.field private mProgress:F

.field private mPx:F

.field private mPy:F

.field private mR:[F

.field private mRow:I

.field private mSVerts:[F

.field private mVerts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$1;

    const-string/jumbo v1, "gravity"

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$1;-><init>(Ljava/lang/String;)V

    .line 58
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->GRAVITY:Landroid/util/Property;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mProgress:F

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mInvalid:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 111
    const/4 v2, 0x5

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPixelsPerVertex:I

    .line 106
    return-void
.end method

.method private createMesh()V
    .locals 23

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPx:F

    .line 157
    .local v8, "px":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPy:F

    .line 161
    .local v9, "py":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPixelsPerVertex:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mCol:I

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPixelsPerVertex:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mRow:I

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mCol:I

    move/from16 v21, v0

    add-int/lit8 v7, v21, 0x1

    .line 165
    .local v7, "hCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mRow:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, 0x1

    .line 167
    .local v13, "vCount":I
    mul-int v21, v7, v13

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mSVerts:[F

    .line 168
    mul-int v21, v7, v13

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mVerts:[F

    .line 169
    mul-int v21, v7, v13

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mR:[F

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mCol:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 173
    .local v18, "w":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mRow:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v6, v21, v22

    .line 175
    .local v6, "h":F
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mMaxR:F

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mSVerts:[F

    .line 178
    .local v3, "V":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mR:[F

    .line 180
    .local v2, "R":[F
    const/4 v14, 0x0

    .line 181
    .local v14, "vOffset":I
    const/4 v11, 0x0

    .line 182
    .local v11, "rOffset":I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v13, :cond_1

    .line 183
    const/16 v19, 0x0

    .local v19, "x":I
    move v12, v11

    .end local v11    # "rOffset":I
    .local v12, "rOffset":I
    move v15, v14

    .end local v14    # "vOffset":I
    .local v15, "vOffset":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v7, :cond_0

    .line 184
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v16, v18, v21

    .line 185
    .local v16, "vx":F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v17, v6, v21

    .line 187
    .local v17, "vy":F
    sub-float v4, v8, v16

    .line 188
    .local v4, "dx":F
    sub-float v5, v9, v17

    .line 190
    .local v5, "dy":F
    mul-float v21, v4, v4

    mul-float v22, v5, v5

    add-float v10, v21, v22

    .line 191
    .local v10, "r":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mMaxR:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mMaxR:F

    .line 192
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "rOffset":I
    .restart local v11    # "rOffset":I
    aput v10, v2, v12

    .line 194
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "vOffset":I
    .restart local v14    # "vOffset":I
    aput v16, v3, v15

    .line 195
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "vOffset":I
    .restart local v15    # "vOffset":I
    aput v17, v3, v14

    .line 183
    add-int/lit8 v19, v19, 0x1

    move v12, v11

    .end local v11    # "rOffset":I
    .restart local v12    # "rOffset":I
    goto :goto_1

    .line 182
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v10    # "r":F
    .end local v16    # "vx":F
    .end local v17    # "vy":F
    :cond_0
    add-int/lit8 v20, v20, 0x1

    move v11, v12

    .end local v12    # "rOffset":I
    .restart local v11    # "rOffset":I
    move v14, v15

    .end local v15    # "vOffset":I
    .restart local v14    # "vOffset":I
    goto :goto_0

    .line 155
    .end local v19    # "x":I
    :cond_1
    return-void
.end method

.method private updateMesh()V
    .locals 20

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPx:F

    .line 203
    .local v14, "tx":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPy:F

    .line 204
    .local v15, "ty":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mMaxR:F

    .line 205
    .local v5, "maxR":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mProgress:F

    .line 211
    .local v8, "progress":F
    const/4 v10, 0x0

    .line 213
    .local v10, "rOffset":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mSVerts:[F

    .line 214
    .local v4, "in":[F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mVerts:[F

    .line 215
    .local v7, "out":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mR:[F

    .line 217
    .local v12, "radius":[F
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mVerts:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 218
    aget v16, v4, v6

    .line 219
    .local v16, "x":F
    add-int/lit8 v18, v6, 0x1

    aget v17, v4, v18

    .line 221
    .local v17, "y":F
    sub-float v2, v14, v16

    .line 222
    .local v2, "dx":F
    sub-float v3, v15, v17

    .line 224
    .local v3, "dy":F
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "rOffset":I
    .local v11, "rOffset":I
    aget v9, v12, v10

    .line 226
    .local v9, "r":F
    const/16 v18, 0x0

    cmpl-float v18, v9, v18

    if-eqz v18, :cond_0

    .line 227
    div-float v13, v5, v9

    .line 232
    .local v13, "s":F
    :goto_1
    mul-float v18, v8, v13

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 234
    mul-float v18, v2, v13

    add-float v18, v18, v16

    aput v18, v7, v6

    .line 235
    add-int/lit8 v18, v6, 0x1

    mul-float v19, v3, v13

    add-float v19, v19, v17

    aput v19, v7, v18

    .line 217
    add-int/lit8 v6, v6, 0x2

    move v10, v11

    .end local v11    # "rOffset":I
    .restart local v10    # "rOffset":I
    goto :goto_0

    .line 229
    .end local v10    # "rOffset":I
    .end local v13    # "s":F
    .restart local v11    # "rOffset":I
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "s":F
    goto :goto_1

    .line 200
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v9    # "r":F
    .end local v11    # "rOffset":I
    .end local v13    # "s":F
    .end local v16    # "x":F
    .end local v17    # "y":F
    .restart local v10    # "rOffset":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mInvalid:Z

    if-eqz v0, :cond_1

    .line 143
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mInvalid:Z

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->createMesh()V

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->updateMesh()V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mCol:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mRow:I

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mVerts:[F

    move-object v0, p1

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "w":I
    const/4 v0, 0x0

    .line 120
    .local v0, "h":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    invoke-static {v1, p1, v3}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->resolveSizeAndState(III)I

    move-result v1

    .line 129
    invoke-static {v0, p2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->resolveSizeAndState(III)I

    move-result v0

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->requestLayout()V

    .line 76
    return-void
.end method

.method public setGravityPivotX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPx:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mInvalid:Z

    .line 92
    return-void
.end method

.method public setGravityPivotY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mPy:F

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mInvalid:Z

    .line 97
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 86
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 87
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->mProgress:F

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->invalidate()V

    .line 85
    :cond_0
    return-void
.end method
