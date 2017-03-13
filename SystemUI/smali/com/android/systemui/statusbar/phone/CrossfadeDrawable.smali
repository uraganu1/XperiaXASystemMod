.class public Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "CrossfadeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mCurLayer:I

.field private mDuration:I

.field private mNewLayer:I

.field private mNewLayerAlpha:I

.field private mOldLayer:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTransitionState:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setPaddingMode(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 132
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    packed-switch v3, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    .line 174
    .local v0, "alpha":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    if-ne v3, v9, :cond_5

    .line 176
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    :goto_1
    return-void

    .line 134
    .end local v0    # "alpha":I
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    if-lez v3, :cond_1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mStartTimeMillis:J

    .line 136
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    goto :goto_0

    .line 138
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    .line 139
    iput v9, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    goto :goto_0

    .line 144
    :pswitch_2
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mStartTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 145
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    if-lez v3, :cond_4

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mStartTimeMillis:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    .line 147
    iget v4, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    int-to-float v4, v4

    .line 146
    div-float v2, v3, v4

    .line 150
    .local v2, "normalized":F
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 151
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    .line 154
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 155
    const/high16 v2, 0x3f800000    # 1.0f

    .line 156
    iput v9, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    .line 160
    :cond_3
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v2

    .line 159
    const/4 v4, 0x0

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    goto :goto_0

    .line 162
    .end local v2    # "normalized":F
    :cond_4
    iput v9, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    .line 163
    iput v8, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    goto :goto_0

    .line 180
    .restart local v0    # "alpha":I
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mOldLayer:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    rsub-int v3, v0, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 182
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 185
    if-lez v0, :cond_6

    .line 186
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->invalidateSelf()V

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public finishAnimation()V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setLayer(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public resetTransition()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setLayer(I)V

    .line 105
    return-void
.end method

.method public setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    .line 116
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->invalidateSelf()V

    .line 114
    return-void
.end method

.method public startTransition(II)V
    .locals 2
    .param p1, "toLayer"    # I
    .param p2, "durationMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getNumberOfLayers()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    if-eq p1, v0, :cond_1

    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mOldLayer:I

    .line 89
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    .line 90
    iput v1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    .line 91
    iput p2, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    .line 92
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mReverse:Z

    .line 93
    iput v1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->invalidateSelf()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setLayer(I)V

    goto :goto_0
.end method
