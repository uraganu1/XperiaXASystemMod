.class Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;
.super Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTileDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>()V

    return-void
.end method

.method public static getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    const/4 v2, 0x0

    .line 420
    new-instance v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;-><init>(Landroid/content/res/Resources;)V

    .line 421
    .local v0, "drawable":Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;
    if-eqz p1, :cond_0

    .line 426
    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_0
    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setContactType(I)V

    .line 433
    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setScale(F)V

    .line 434
    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setOffset(F)V

    .line 435
    iget-boolean v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setIsCircular(Z)V

    .line 437
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setSIMProperty(Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 439
    :cond_0
    return-object v0

    .line 429
    :cond_1
    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 430
    iget-object v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 429
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z
    .param p4, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method
