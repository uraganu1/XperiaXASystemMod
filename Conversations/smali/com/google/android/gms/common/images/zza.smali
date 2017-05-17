.class public abstract Lcom/google/android/gms/common/images/zza;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/zza$zza;,
        Lcom/google/android/gms/common/images/zza$zzc;
    }
.end annotation


# instance fields
.field final zzajO:Lcom/google/android/gms/common/images/zza$zza;

.field protected zzajQ:I

.field protected zzajS:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field protected zzajW:I


# direct methods
.method private zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmd;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/zza;->zzajW:I

    if-gtz v0, :cond_0

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzmd$zza;

    iget v0, p0, Lcom/google/android/gms/common/images/zza;->zzajW:I

    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/zzmd$zza;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzmd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/common/images/zza;->zzajW:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/zzmd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected zza(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzmb;->zza(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzb;->zzv(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/zza;->zzajW:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza;->zzajS:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, p3, v3, v4}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzmb;->zzb(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/images/zza;->zzajS:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/zza;->zzajO:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v2, v2, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmd;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/zza;->zzajQ:I

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/images/zza;->zzajS:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, p3, v3, v3}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/images/zza;->zzajQ:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmd;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/images/zza;->zzajS:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/zza;->zzajO:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v2, v2, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1
.end method

.method protected abstract zza(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method
