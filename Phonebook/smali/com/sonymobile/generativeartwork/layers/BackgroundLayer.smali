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
    const-class v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z

    .line 28
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v2, [I

    aput v3, v1, v3

    aput v2, v1, v5

    const/4 v2, 0x4

    aput v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    .line 30
    new-array v0, v6, [F

    aput v4, v0, v3

    aput v4, v0, v5

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mLayerSize:[F

    .line 32
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/gl/Gradient;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->draw(Ljava/lang/Object;)V

    .line 62
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

    .prologue
    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 47
    return-void

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->init(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpenGLLayer()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized releaseLayer()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->isLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 54
    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Gradient;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setColor([[F)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->setGradientColor([[F)V

    .line 120
    return-void
.end method

.method public setColorPalette([[[F)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 131
    array-length v0, p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v2, v3, [I

    aput v0, v2, v4

    const/4 v0, 0x1

    aput v3, v2, v0

    const/4 v0, 0x4

    const/4 v3, 0x2

    aput v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

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

    .line 134
    return-void
.end method

.method public setColorPaletteId(I)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mColorPalette:[[[F

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColor([[F)V

    goto :goto_0
.end method

.method setGradientAngle(F)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->setGradientAngle(F)V

    .line 106
    return-void
.end method

.method setGradientRanges([F)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mGradient:Lcom/sonymobile/generativeartwork/gl/Gradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Gradient;->setGradientRanges([F)V

    .line 95
    return-void
.end method

.method public setSize(II)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mLayerSize:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->mLayerSize:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 71
    return-void
.end method
