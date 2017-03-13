.class public Lcom/android/systemui/statusbar/phone/BarTransitions;
.super Ljava/lang/Object;
.source "BarTransitions.java"


# static fields
.field public static final HIGH_END:Z


# instance fields
.field private final mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

.field private mMode:I

.field private final mTag:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gradientResourceId"    # I
    .param p3, "nonSkinnableGradientResourceId"    # I
    .param p4, "semiTransparentResourceId"    # I
    .param p5, "fullyTransparentResourceId"    # I
    .param p6, "opaqueResourceId"    # I
    .param p7, "opaqueLightResourceId"    # I
    .param p8, "opaqueLightsOutResourceId"    # I
    .param p9, "warningResourceId"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BarTransitions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mTag:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    const/16 v5, 0x8

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 95
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 96
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 97
    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 98
    invoke-virtual {v3, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 99
    invoke-virtual {v3, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 100
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 101
    move/from16 v0, p9

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 93
    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 104
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getNumberOfLayers()I

    move-result v2

    .line 105
    .local v2, "nLayers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4, v1, v1}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setId(II)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->resetTransition()V

    .line 111
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->LOW_RAM_SUPPORT:Z

    if-eqz v4, :cond_2

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_2
    return-void
.end method

.method protected static isLightsOut(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 239
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 240
    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 242
    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isOpaque(I)Z
    .locals 3
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    if-eqz p0, :cond_0

    .line 250
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    .line 252
    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 219
    if-nez p0, :cond_0

    const-string/jumbo v0, "MODE_OPAQUE"

    return-object v0

    .line 220
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "MODE_SEMI_TRANSPARENT"

    return-object v0

    .line 221
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "MODE_TRANSLUCENT"

    return-object v0

    .line 222
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "MODE_LIGHTS_OUT"

    return-object v0

    .line 223
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "MODE_TRANSPARENT"

    return-object v0

    .line 224
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "MODE_WARNING"

    return-object v0

    .line 225
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "MODE_LIGHTS_OUT_TRANSPARENT"

    return-object v0

    .line 226
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "MODE_OPAQUE_LIGHT"

    return-object v0

    .line 227
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "MODE_TRANSLUCENT_LIGHTS_OUT"

    return-object v0

    .line 228
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "MODE_TRANSLUCENT_NON_SKINNABLE"

    return-object v0

    .line 229
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 230
    const-string/jumbo v0, "MODE_TRANSLUCENT_LIGHTS_OUT_NON_SKINNABLE"

    return-object v0

    .line 231
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyModeBackground(IIZ)V
    .locals 3
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getBackgroundLayer(I)I

    move-result v2

    .line 215
    if-eqz p3, :cond_0

    const/16 v0, 0xc8

    .line 214
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->startTransition(II)V

    .line 211
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->finishAnimation()V

    .line 234
    return-void
.end method

.method protected getBackgroundLayer(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x4

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 200
    return v0

    .line 173
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 177
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 180
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 184
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 187
    :pswitch_4
    return v0

    .line 190
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 193
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 196
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    return v0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->LOW_RAM_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 204
    :cond_1
    return-void
.end method

.method protected setResourceIds(IIIIIIII)V
    .locals 4
    .param p1, "gradientResourceId"    # I
    .param p2, "nonSkinnableGradientResourceId"    # I
    .param p3, "semiTransparentResourceId"    # I
    .param p4, "fullyTransparentResourceId"    # I
    .param p5, "opaqueResourceId"    # I
    .param p6, "opaqueLightResourceId"    # I
    .param p7, "opaqueLightsOutResourceId"    # I
    .param p8, "warningResourceId"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 152
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 154
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 156
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 158
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 160
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 159
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 162
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 164
    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;

    .line 166
    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 165
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 148
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 123
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 127
    sget-boolean v1, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->LOW_RAM_SUPPORT:Z

    if-eqz v1, :cond_3

    .line 130
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    if-ne v1, p1, :cond_4

    return-void

    .line 124
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    .line 131
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 132
    .local v0, "oldMode":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 135
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 120
    return-void
.end method
