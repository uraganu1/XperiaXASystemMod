.class public Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private maxLoopCount:I

.field private resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "maxLoopCount"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 38
    iput p2, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    .line 39
    return-void
.end method


# virtual methods
.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 7
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3d4ccccd    # 0.05f

    .line 52
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 67
    iput-object p1, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 68
    iget v3, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 70
    return-void

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v4, v3

    .line 60
    .local v2, "viewRatio":F
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 61
    .local v0, "drawableRatio":F
    sub-float v3, v2, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    sub-float v3, v0, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 63
    new-instance v1, Lcom/bumptech/glide/request/target/SquaringDrawable;

    iget-object v3, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V

    .end local p1    # "resource":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .local v1, "resource":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    move-object p1, v1

    .end local v1    # "resource":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .restart local p1    # "resource":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    goto :goto_0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/request/animation/GlideAnimation;

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    goto :goto_0
.end method

.method protected setResource(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->setResource(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V

    return-void
.end method
