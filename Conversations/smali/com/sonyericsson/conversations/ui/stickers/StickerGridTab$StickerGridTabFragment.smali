.class public Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;
.super Landroid/app/Fragment;
.source "StickerGridTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerGridTabFragment"
.end annotation


# instance fields
.field mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

.field mGridView:Landroid/widget/GridView;

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestManager:Lcom/bumptech/glide/RequestManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private hideGridViewScrollBarOnCreation(Landroid/widget/GridView;)V
    .locals 4
    .param p1, "gridView"    # Landroid/widget/GridView;

    .prologue
    .line 102
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 105
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    new-instance v1, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 86
    .local v1, "parcelable":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 87
    .local v0, "numColumns":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 80
    .end local v0    # "numColumns":I
    .end local v1    # "parcelable":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->hideGridViewScrollBarOnCreation(Landroid/widget/GridView;)V

    .line 76
    return-object v0
.end method

.method public setAdapter(Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mAdapter:Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    :cond_0
    return-void
.end method
