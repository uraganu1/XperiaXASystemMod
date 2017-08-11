.class public final Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
.super Ljava/lang/Object;
.source "BackgroundLayer.java"

# interfaces
.implements Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
.implements Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLayerInitialized:Z

.field private mColorPalette:[[[F

.field private mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

.field private mLayerSize:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z

    .line 28
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x4

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mLayerSize:[F

    .line 32
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/gl/Gradient;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    .line 37
    return-void

    .line 30
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->draw(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public getType()Lcom/sonymobile/generativeartwork/layers/LayerType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    return-object v0
.end method

.method declared-synchronized initLayer(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 1
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->init(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 40
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseLayer()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Gradient;->release()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 49
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setColor([[F)V
    .locals 1
    .param p1, "gradient"    # [[F

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->setGradientColor([[F)V

    .line 118
    return-void
.end method

.method public setColorPalette([[[F)V
    .locals 5
    .param p1, "palette"    # [[[F

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 131
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v3, [I

    array-length v2, p1

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    .line 132
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    array-length v1, v1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {p0, v4}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColorPaletteId(I)V

    .line 130
    return-void
.end method

.method public setColorPaletteId(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColor([[F)V

    .line 140
    :cond_0
    return-void
.end method

.method setGradientAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->setGradientAngle(F)V

    .line 104
    return-void
.end method

.method setGradientRanges([F)V
    .locals 1
    .param p1, "ranges"    # [F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->setGradientRanges([F)V

    .line 93
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mLayerSize:[F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mLayerSize:[F

    int-to-float v1, p2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 68
    return-void
.end method
