.class public Lcom/sonyericsson/conversations/view/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# instance fields
.field private mOldResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/conversations/view/RoundedImageView;->mOldResId:I

    .line 30
    invoke-static {p1}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->createForBitmap(Landroid/graphics/Bitmap;)Lcom/sonyericsson/conversations/view/RoundedDrawable;

    move-result-object v0

    .line 31
    .local v0, "roundedDrawable":Lcom/sonyericsson/conversations/view/RoundedDrawable;
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/conversations/view/RoundedImageView;->mOldResId:I

    .line 23
    invoke-static {p1}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->createForDrawable(Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/conversations/view/RoundedDrawable;

    move-result-object v0

    .line 24
    .local v0, "roundedDrawable":Lcom/sonyericsson/conversations/view/RoundedDrawable;
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 36
    iget v1, p0, Lcom/sonyericsson/conversations/view/RoundedImageView;->mOldResId:I

    if-eq v1, p1, :cond_0

    .line 37
    iput p1, p0, Lcom/sonyericsson/conversations/view/RoundedImageView;->mOldResId:I

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/RoundedImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
