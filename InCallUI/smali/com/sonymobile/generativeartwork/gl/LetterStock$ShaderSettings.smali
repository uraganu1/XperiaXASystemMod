.class Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;
.super Ljava/lang/Object;
.source "LetterStock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/gl/LetterStock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShaderSettings"
.end annotation


# instance fields
.field public aCoords:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIDs()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aCoords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
