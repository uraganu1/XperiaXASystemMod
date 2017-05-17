.class public Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;
.super Ljava/lang/Object;
.source "SketchStickerPack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sticker"
.end annotation


# instance fields
.field public final contentUri:Ljava/lang/String;

.field public final packageId:Ljava/lang/String;

.field public final previewUri:Ljava/lang/String;

.field public final stickerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->contentUri:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->stickerId:Ljava/lang/String;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->packageId:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->contentUri:Ljava/lang/String;

    const-string/jumbo v2, "sticker-large"

    const-string/jumbo v3, "sticker-icon"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->previewUri:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageId"    # Ljava/lang/String;
    .param p2, "stickerId"    # Ljava/lang/String;
    .param p3, "contentUri"    # Ljava/lang/String;
    .param p4, "previewUri"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->packageId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->stickerId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->contentUri:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->previewUri:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 42
    instance-of v1, p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    if-nez v1, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->hashCode()I

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
    .line 50
    iget-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->packageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 51
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->stickerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 52
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->contentUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 53
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->previewUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 54
    return v0
.end method
