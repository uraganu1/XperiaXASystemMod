.class Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/gl/Gradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShaderSettings"
.end annotation


# instance fields
.field public aCoords:I

.field public uColor1:I

.field public uColor2:I

.field public uColor3:I

.field public uColorDists:I

.field public uGradientDirection:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    .line 102
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColorDists:I

    .line 104
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor1:I

    .line 106
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor2:I

    .line 108
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor3:I

    .line 110
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uGradientDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/generativeartwork/gl/Gradient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/generativeartwork/gl/Gradient$1;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIDs()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 113
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor1:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColorDists:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor2:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor3:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uGradientDirection:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aCoords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uColor1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uColor1Dist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColorDists:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uColor2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uColor3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uGradientDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uGradientDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
