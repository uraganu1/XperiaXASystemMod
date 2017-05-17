.class Lcom/android/contacts/photomanager/ColoredImageProvider;
.super Lcom/android/contacts/photomanager/DefaultImageProvider;
.source "ColoredImageProvider.java"


# static fields
.field private static synthetic -com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I


# instance fields
.field private final mDefaultPersonAvatarCircular:Landroid/graphics/Bitmap;

.field private final mDefaultPersonAvatarRectangle:Landroid/graphics/Bitmap;


# direct methods
.method private static synthetic -getcom_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/photomanager/ColoredImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/photomanager/ColoredImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->values()[Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ACCOUNT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->GROUP:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/contacts/photomanager/ColoredImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCircular"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/photomanager/DefaultImageProvider;-><init>(Landroid/content/Context;Z)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f02003a

    .line 31
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/photomanager/ColoredImageProvider;->mDefaultPersonAvatarRectangle:Landroid/graphics/Bitmap;

    .line 34
    iget-object v1, p0, Lcom/android/contacts/photomanager/ColoredImageProvider;->mDefaultPersonAvatarRectangle:Landroid/graphics/Bitmap;

    .line 33
    invoke-static {p1, v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/photomanager/ColoredImageProvider;->mDefaultPersonAvatarCircular:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;J)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p3, "contactId"    # J

    .prologue
    .line 40
    invoke-virtual {p0, p2}, Lcom/android/contacts/photomanager/ColoredImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    .line 41
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p3, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 47
    invoke-virtual {p0, p2}, Lcom/android/contacts/photomanager/ColoredImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    .line 48
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method public getContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/contacts/photomanager/ColoredImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;JLcom/android/contacts/photomanager/DefaultImageProvider$ImageType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "contactId"    # J
    .param p4, "imageType"    # Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/contacts/photomanager/ColoredImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    return-object v0
.end method

.method getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    .locals 3
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/contacts/photomanager/ColoredImageProvider;->-getcom_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getType()Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    .line 70
    .local v0, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/photomanager/ColoredImageProvider;->adjustDrawableAccordingToRequest(Lcom/android/contacts/photomanager/DefaultImageRequest;Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;)V

    .line 71
    return-object v0

    .line 62
    .end local v0    # "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    .line 63
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/photomanager/ColoredImageProvider;->mDefaultPersonAvatarCircular:Landroid/graphics/Bitmap;

    .line 64
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v2

    .line 62
    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 65
    .restart local v0    # "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    goto :goto_0

    .line 64
    .end local v0    # "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/photomanager/ColoredImageProvider;->mDefaultPersonAvatarRectangle:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getQuickContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/contacts/photomanager/ColoredImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "contactId"    # J

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/contacts/photomanager/ColoredImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v0

    return-object v0
.end method
