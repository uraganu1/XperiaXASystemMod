.class Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mGalleryMediaStoreLoader:Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;

.field private mMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;Landroid/app/Activity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mMedia:Ljava/util/List;

    .line 185
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mActivity:Landroid/app/Activity;

    .line 186
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mGalleryMediaStoreLoader:Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;

    .line 184
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mMedia:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 207
    .local v0, "adapterPos":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mMedia:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    .line 208
    .local v1, "currItem":Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 209
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d0035

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 210
    .local v2, "image":Landroid/widget/ImageView;
    const v5, 0x7f0d0034

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 212
    .local v3, "video":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->getmType()Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->VIDEO:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    if-ne v5, v6, :cond_0

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->-get1(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->getmUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadGalleryImage(Lcom/bumptech/glide/RequestManager;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 219
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 205
    return-void

    .line 215
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->-get2(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    .line 153
    .local v0, "clickedItem":Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->-get0(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->getmUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->getmType()Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;->galleryMediaSelected(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;)V

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->-set0(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;Z)Z

    .line 150
    .end local v0    # "clickedItem":Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "ViewType"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "ViewType"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 200
    const v2, 0x7f030012

    const/4 v3, 0x0

    .line 199
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;-><init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    const-string/jumbo v0, "message_list"

    const-string/jumbo v1, "inline_gallery"

    .line 165
    const-string/jumbo v2, "long_press"

    .line 164
    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public refreshGallery()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mGalleryMediaStoreLoader:Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;->mMedia:Ljava/util/List;

    .line 192
    return-void
.end method
