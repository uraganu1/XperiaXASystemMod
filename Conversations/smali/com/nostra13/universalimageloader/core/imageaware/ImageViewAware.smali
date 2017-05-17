.class public Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
.super Ljava/lang/Object;
.source "ImageViewAware.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;


# instance fields
.field protected checkActualViewSize:Z

.field protected imageViewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "checkActualViewSize"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    .line 70
    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    .line 71
    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "value":I
    :try_start_0
    const-class v4, Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 156
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 158
    .local v2, "fieldValue":I
    if-gtz v2, :cond_1

    .line 164
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_0
    :goto_0
    return v3

    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "fieldValue":I
    :cond_1
    const v4, 0x7fffffff

    .line 158
    if-ge v2, v4, :cond_0

    .line 159
    move v3, v2

    goto :goto_0

    .line 163
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 114
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 124
    return v4

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 117
    .local v0, "height":I
    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    if-nez v3, :cond_3

    .line 120
    :cond_1
    :goto_0
    if-lez v0, :cond_4

    .line 121
    :cond_2
    :goto_1
    if-lez v0, :cond_5

    .line 122
    :goto_2
    return v0

    .line 117
    :cond_3
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 120
    :cond_4
    if-eqz v2, :cond_2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "mMaxHeight"

    .line 121
    invoke-static {v1, v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 149
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 133
    return-object v2

    .line 131
    :cond_0
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v1

    return-object v1
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 97
    return v4

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 90
    .local v2, "width":I
    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    if-nez v3, :cond_3

    .line 93
    :cond_1
    :goto_0
    if-lez v2, :cond_4

    .line 94
    :cond_2
    :goto_1
    if-lez v2, :cond_5

    .line 95
    :goto_2
    return v2

    .line 90
    :cond_3
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    goto :goto_0

    .line 93
    :cond_4
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "mMaxWidth"

    .line 94
    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    goto :goto_2
.end method

.method public bridge synthetic getWrappedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 184
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    const/4 v1, 0x1

    return v1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 174
    const/4 v1, 0x0

    return v1

    .line 171
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/4 v1, 0x1

    return v1
.end method
