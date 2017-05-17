.class Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;
.super Ljava/lang/Object;
.source "StickerPackTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterLazyLoadWrapper"
.end annotation


# instance fields
.field private mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

.field private mStickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->mStickers:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->mStickers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    .line 65
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->mStickers:Ljava/util/List;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    return-object v0
.end method
