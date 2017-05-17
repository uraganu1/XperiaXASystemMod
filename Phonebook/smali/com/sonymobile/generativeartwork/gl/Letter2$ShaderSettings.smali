.class Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;
.super Ljava/lang/Object;
.source "Letter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/gl/Letter2;
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

.field public uGlobalTransform:I

.field public uMainShapeTransform:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    .line 210
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    .line 212
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uFillTexture:I

    .line 214
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uBackgroundTexture:I

    .line 216
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uMainShapeTransform:I

    .line 218
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uGlobalTransform:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/generativeartwork/gl/Letter2$1;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIDs()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 221
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uFillTexture:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uBackgroundTexture:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uMainShapeTransform:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uGlobalTransform:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aCoords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " aUVs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uFillTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uFillTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uBackgroundTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uBackgroundTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uMainShapeTransform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uMainShapeTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uGlobalTransform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uGlobalTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
