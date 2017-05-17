.class public Lcom/android/contacts/common/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final BITMAP_BYTE_ARRAY_DEFAULT_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contactShortcutIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactPhoto"    # Landroid/graphics/Bitmap;
    .param p2, "actionPhoto"    # Landroid/graphics/Bitmap;
    .param p3, "actionText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 200
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 201
    const v7, 0x7f040041

    .line 200
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 203
    .local v1, "contactShortcutLayout":Landroid/widget/RelativeLayout;
    const v6, 0x7f0e00bf

    .line 202
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 204
    .local v0, "contactPhotoView":Landroid/widget/QuickContactBadge;
    invoke-virtual {v0, v8}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const v6, 0x7f0e00c0

    .line 205
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 208
    .local v3, "shortcutActionImageView":Landroid/widget/ImageView;
    const v6, 0x7f0e00c1

    .line 207
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 212
    .local v4, "shortcutActionTextView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    :cond_0
    if-eqz p3, :cond_1

    .line 217
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1
    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 227
    const/high16 v7, 0x1050000

    .line 226
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 229
    .local v5, "sizeInPixel":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-static {v1, v5, v5}, Lcom/android/contacts/common/util/BitmapUtil;->createBitmapFromLayout(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method public static convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 244
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 245
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static createBitmapFromLayout(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "layout"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 167
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 168
    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 169
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 168
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 174
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 175
    .local v3, "measuredWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 176
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 177
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 181
    return-object v0

    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "measuredHeight":I
    .end local v3    # "measuredWidth":I
    :cond_1
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 172
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 171
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "sampleSize"    # I

    .prologue
    .line 107
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 113
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static findOptimalSampleSize(II)I
    .locals 5
    .param p0, "originalSmallerExtent"    # I
    .param p1, "targetExtent"    # I

    .prologue
    const/4 v2, 0x1

    .line 84
    if-ge p1, v2, :cond_0

    return v2

    .line 85
    :cond_0
    if-ge p0, v2, :cond_1

    return v2

    .line 92
    :cond_1
    move v0, p0

    .line 93
    .local v0, "extent":I
    const/4 v1, 0x1

    .line 94
    .local v1, "sampleSize":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 95
    shl-int/lit8 v1, v1, 0x1

    .line 96
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return v1
.end method

.method public static getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isCircular"    # Z

    .prologue
    .line 264
    if-eqz p2, :cond_0

    .line 265
    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 267
    .local v0, "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 269
    return-object v0

    .line 271
    .end local v0    # "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getRCSeCapableIcon(ILandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "status"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "rcseIcon":Landroid/graphics/Bitmap;
    const/4 v5, 0x5

    if-ne p0, v5, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 145
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 146
    .local v4, "resources":Landroid/content/res/Resources;
    const-string/jumbo v5, "rcs_capability_icon"

    const-string/jumbo v6, "drawable"

    invoke-virtual {v4, v5, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 148
    .local v3, "resId":I
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "rcseIcon":Landroid/graphics/Bitmap;
    .end local v3    # "resId":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v2

    .line 149
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "rcseIcon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Contact"

    const-string/jumbo v6, "Exception in accessing the rcs capability icon"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRotatedDrawable(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .param p2, "angle"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 128
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 129
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .local v1, "rotated":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .local v2, "tempCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, p2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
