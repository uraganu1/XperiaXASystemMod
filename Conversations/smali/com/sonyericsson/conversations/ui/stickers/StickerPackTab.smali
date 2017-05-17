.class public Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;
.super Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;
.source "StickerPackTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;

.field private final mIconUri:Ljava/lang/String;

.field private final mPackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/stickers/SketchStickerPack;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "pack"    # Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    .param p2, "icl"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 26
    iget-object v0, p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->packageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mPackId:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->iconUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mIconUri:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;

    iget-object v1, p1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->stickers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mAdapterWrapper:Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;

    .line 24
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mAdapterWrapper:Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;->getAdapter()Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    .line 40
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mAdapterWrapper:Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab$AdapterLazyLoadWrapper;

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mPackId:Ljava/lang/String;

    return-object v0
.end method

.method public renderTabIcon(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "targetView"    # Landroid/widget/ImageView;

    .prologue
    .line 33
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerPackTab;->mIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 32
    return-void
.end method
