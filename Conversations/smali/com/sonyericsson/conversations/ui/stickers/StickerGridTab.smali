.class public abstract Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;
.super Ljava/lang/Object;
.source "StickerGridTab.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$StickerPickerTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

.field final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "icl"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 43
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;-><init>()V

    .line 50
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->setAdapter(Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;)V

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-object v0
.end method
