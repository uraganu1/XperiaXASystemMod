.class Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;
.super Ljava/lang/Object;
.source "Letter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/gl/Letter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShaderSettings"
.end annotation


# instance fields
.field public aCoords:I

.field public aUVs:I

.field public uBackgroundTexture:I

.field public uFillTexture:I

.field public uFirstClr:I

.field public uGlobalTransform:I

.field public uMainShapeTransform:I

.field public uSecondClr:I

.field public uStockImgTexture:I

.field public uTextureType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    .line 173
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    .line 175
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    .line 177
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    .line 179
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uBackgroundTexture:I

    .line 181
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uMainShapeTransform:I

    .line 183
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uGlobalTransform:I

    .line 185
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFirstClr:I

    .line 187
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uSecondClr:I

    .line 189
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uTextureType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/generativeartwork/gl/Letter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/generativeartwork/gl/Letter$1;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIDs()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 192
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uBackgroundTexture:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uMainShapeTransform:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uGlobalTransform:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFirstClr:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uSecondClr:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uTextureType:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aCoords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " aUVs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uFillTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uBackgroundTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uBackgroundTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uMainShapeTransform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uMainShapeTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uGlobalTransform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uGlobalTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uFirstClr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFirstClr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uSecondClr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uSecondClr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uTextureType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uTextureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uStockImgTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
