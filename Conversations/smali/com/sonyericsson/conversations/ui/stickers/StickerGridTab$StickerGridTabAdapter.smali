.class Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickerGridTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StickerGridTabAdapter"
.end annotation


# instance fields
.field private mRequestManager:Lcom/bumptech/glide/RequestManager;

.field private final mStickers:Ljava/util/List;
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
    .line 147
    .local p1, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 148
    if-eqz p1, :cond_0

    .end local p1    # "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->mStickers:Ljava/util/List;

    .line 147
    return-void

    .line 148
    .restart local p1    # "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->mStickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->mStickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->getItem(I)Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 172
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->mStickers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    iget-object v1, v1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->previewUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, "currUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadSticker(Lcom/bumptech/glide/RequestManager;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 179
    return-object p2

    .line 173
    .end local v0    # "currUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 174
    const v2, 0x7f03006b

    .line 173
    invoke-static {v1, v2, v3}, Landroid/widget/ImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 0
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 151
    return-void
.end method
