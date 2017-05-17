.class public Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
.super Ljava/lang/Object;
.source "SketchStickerPack.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/conversations/stickers/SketchStickerPack;",
        ">;"
    }
.end annotation


# instance fields
.field public final iconSmallUri:Ljava/lang/String;

.field public final iconUri:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final order:I

.field public final packageId:Ljava/lang/String;

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .param p1, "packageId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconUri"    # Ljava/lang/String;
    .param p4, "iconSmallUri"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p7, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->packageId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->name:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->iconUri:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->iconSmallUri:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->type:Ljava/lang/String;

    .line 73
    iput p6, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->order:I

    .line 74
    iput-object p7, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->stickers:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/conversations/stickers/SketchStickerPack;)I
    .locals 2
    .param p1, "stickerPack"    # Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->order:I

    iget v1, p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "stickerPack"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    .end local p1    # "stickerPack":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->compareTo(Lcom/sonyericsson/conversations/stickers/SketchStickerPack;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 84
    instance-of v1, p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    if-nez v1, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->packageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 93
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->iconUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->iconSmallUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->order:I

    add-int v0, v1, v2

    .line 98
    return v0
.end method
