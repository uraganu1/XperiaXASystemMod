.class public abstract Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;
.super Ljava/lang/Object;
.source "ClippingTargetHelper.java"


# instance fields
.field private mClippingSources:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/ClippingSources;",
            ">;"
        }
    .end annotation
.end field

.field private mDimmerDrawn:Z

.field private mDrawingEnabled:Z

.field private mEnabled:Z

.field private mMasterScaleContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mClippingSources:Ljava/lang/ref/WeakReference;

    .line 21
    iput-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mPanelContainer:Ljava/lang/ref/WeakReference;

    .line 22
    iput-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mMasterScaleContainer:Ljava/lang/ref/WeakReference;

    .line 23
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mEnabled:Z

    .line 24
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mDrawingEnabled:Z

    .line 25
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mDimmerDrawn:Z

    .line 18
    return-void
.end method

.method private drawSource(Landroid/graphics/Canvas;[IFFLcom/sonymobile/keyguard/themedanimation/ClippingSource;Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "targetLocation"    # [I
    .param p3, "masterScaleX"    # F
    .param p4, "masterScaleY"    # F
    .param p5, "src"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    .param p6, "srcView"    # Landroid/view/View;
    .param p7, "parent"    # Landroid/view/View;

    .prologue
    .line 187
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 188
    .local v5, "srcLocation":[I
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 189
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 190
    .local v1, "parentLocation":[I
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    const/high16 v3, 0x3f800000    # 1.0f

    .line 193
    .local v3, "scaleX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 194
    .local v4, "scaleY":F
    invoke-interface/range {p5 .. p5}, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;->getScalingParent()Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, "scaleView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 201
    :cond_0
    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x0

    aget v7, p2, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 202
    const/4 v7, 0x1

    aget v7, v1, v7

    const/4 v8, 0x1

    aget v8, p2, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 201
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 203
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 204
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, p3

    mul-float/2addr v8, v3

    .line 205
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, p4

    mul-float/2addr v9, v4

    .line 203
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 208
    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v7, 0x0

    aget v7, v1, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 209
    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 208
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 211
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 214
    iget-boolean v6, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mDimmerDrawn:Z

    move-object/from16 v0, p5

    invoke-interface {v0, p1, v6}, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;->drawToClip(Landroid/graphics/Canvas;Z)V

    .line 186
    return-void
.end method

.method private drawWithClippingSources(Landroid/graphics/Canvas;Landroid/view/View;Ljava/util/List;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/ClippingSource;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/sonymobile/keyguard/themedanimation/ClippingSource;>;>;"
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 144
    .local v17, "targetLocation":[I
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    const/high16 v11, 0x3f800000    # 1.0f

    .line 148
    .local v11, "masterScaleX":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 149
    .local v12, "masterScaleY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mMasterScaleContainer:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mMasterScaleContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 151
    :goto_0
    if-eqz v10, :cond_0

    .line 152
    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v11

    .line 153
    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F

    move-result v12

    .line 157
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    .line 158
    const/16 v8, 0x15

    move-object/from16 v2, p1

    .line 157
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v13

    .line 163
    .local v13, "sc":I
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->drawOriginal(Landroid/graphics/Canvas;)V

    .line 166
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "srcObj$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 167
    .local v15, "srcObj":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonymobile/keyguard/themedanimation/ClippingSource;>;"
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;

    .line 168
    .local v7, "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    if-eqz v7, :cond_1

    .line 169
    invoke-interface {v7}, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;->getView()Landroid/view/View;

    move-result-object v8

    .line 170
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    .line 172
    .local v18, "viewParent":Landroid/view/ViewParent;
    if-eqz v18, :cond_1

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .local v14, "scForView":I
    move-object/from16 v9, v18

    .line 175
    check-cast v9, Landroid/view/View;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    move v5, v11

    move v6, v12

    .line 174
    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->drawSource(Landroid/graphics/Canvas;[IFFLcom/sonymobile/keyguard/themedanimation/ClippingSource;Landroid/view/View;Landroid/view/View;)V

    .line 176
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 150
    .end local v7    # "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    .end local v8    # "v":Landroid/view/View;
    .end local v13    # "sc":I
    .end local v14    # "scForView":I
    .end local v15    # "srcObj":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonymobile/keyguard/themedanimation/ClippingSource;>;"
    .end local v16    # "srcObj$iterator":Ljava/util/Iterator;
    .end local v18    # "viewParent":Landroid/view/ViewParent;
    :cond_2
    const/4 v10, 0x0

    .local v10, "masterScaleView":Landroid/view/View;
    goto :goto_0

    .line 181
    .end local v10    # "masterScaleView":Landroid/view/View;
    .restart local v13    # "sc":I
    .restart local v16    # "srcObj$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "drawn":Z
    iget-boolean v5, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mEnabled:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mDrawingEnabled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mClippingSources:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mClippingSources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .line 110
    .local v4, "sourcesObj":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v4}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->getEntries()Ljava/util/List;

    move-result-object v3

    .line 112
    .local v3, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/sonymobile/keyguard/themedanimation/ClippingSource;>;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    const/4 v2, 0x1

    .line 114
    .local v2, "panelViewVisible":Z
    iget-object v5, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mPanelContainer:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mPanelContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 116
    :goto_0
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x1

    .line 119
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 120
    invoke-direct {p0, p1, p2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->drawWithClippingSources(Landroid/graphics/Canvas;Landroid/view/View;Ljava/util/List;)V

    .line 121
    const/4 v0, 0x1

    .line 127
    .end local v2    # "panelViewVisible":Z
    .end local v3    # "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/sonymobile/keyguard/themedanimation/ClippingSource;>;>;"
    .end local v4    # "sourcesObj":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    :cond_1
    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->drawOriginal(Landroid/graphics/Canvas;)V

    .line 106
    :cond_2
    return-void

    .line 115
    .restart local v2    # "panelViewVisible":Z
    .restart local v3    # "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/sonymobile/keyguard/themedanimation/ClippingSource;>;>;"
    .restart local v4    # "sourcesObj":Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    :cond_3
    const/4 v1, 0x0

    .local v1, "panelView":Landroid/view/View;
    goto :goto_0

    .line 117
    .end local v1    # "panelView":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected abstract drawOriginal(Landroid/graphics/Canvas;)V
.end method

.method public updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V
    .locals 1
    .param p1, "sources"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mClippingSources:Ljava/lang/ref/WeakReference;

    .line 39
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mClippingSources:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public updateDimmerDrawn(Z)V
    .locals 0
    .param p1, "drawn"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mDimmerDrawn:Z

    .line 78
    return-void
.end method

.method public updateDrawingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mDrawingEnabled:Z

    .line 96
    return-void
.end method

.method public updateEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mEnabled:Z

    .line 87
    return-void
.end method

.method public updateMasterScaleContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mMasterScaleContainer:Ljava/lang/ref/WeakReference;

    .line 65
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mMasterScaleContainer:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public updatePanelContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mPanelContainer:Ljava/lang/ref/WeakReference;

    .line 52
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->mPanelContainer:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
