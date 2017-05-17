.class Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$1;
.super Ljava/lang/Object;
.source "GalleryGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->-get0(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->-get0(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;)Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;->galleryFabClicked()V

    .line 133
    :cond_0
    return-void
.end method
