.class public Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;
.super Landroid/app/Fragment;
.source "GalleryGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;,
        Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mGalleryFab:Landroid/widget/ImageButton;

.field private mGridView:Landroid/support/v7/widget/RecyclerView;

.field private mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

.field private mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field private mRequestManager:Lcom/bumptech/glide/RequestManager;

.field private mValidAdapter:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mCallback:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mValidAdapter:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mValidAdapter:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mValidAdapter:Z

    .line 40
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 100
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 100
    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 106
    .end local v0    # "parcelable":Landroid/os/Parcelable;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "mDialogContent":Landroid/view/View;
    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    .line 114
    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mEmptyView:Landroid/widget/LinearLayout;

    .line 115
    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGalleryFab:Landroid/widget/ImageButton;

    .line 117
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->refreshGallery()V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGalleryFab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 86
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 71
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;-><init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    .line 124
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 124
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mLayoutMgr:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mImageAdapter:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mGalleryFab:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 121
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->mCallback:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

    .line 66
    return-void
.end method
