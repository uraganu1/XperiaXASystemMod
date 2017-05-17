.class final Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhotoHolder"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->mImageView:Ljava/lang/ref/WeakReference;

    .line 195
    iput-object p2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    return-void
.end method


# virtual methods
.method applyDrawableAndSetVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 206
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    return-void

    .line 210
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
