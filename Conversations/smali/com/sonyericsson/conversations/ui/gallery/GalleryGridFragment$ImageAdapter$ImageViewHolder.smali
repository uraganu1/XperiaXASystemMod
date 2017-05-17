.class Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter$ImageViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$ImageAdapter;

    .line 174
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 173
    return-void
.end method
