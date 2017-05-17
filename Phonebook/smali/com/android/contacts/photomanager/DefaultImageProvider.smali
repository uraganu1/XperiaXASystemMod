.class abstract Lcom/android/contacts/photomanager/DefaultImageProvider;
.super Ljava/lang/Object;
.source "DefaultImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;
    }
.end annotation


# static fields
.field private static synthetic -com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultAccountAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mDefaultGroupAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mDefaultIceAvatarBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private static synthetic -getcom_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->GROUP:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCircular"    # Z

    .prologue
    const v3, 0x7f0200a5

    const v2, 0x7f0200a2

    const v1, 0x7f020019

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mContext:Landroid/content/Context;

    .line 43
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultIceAvatarBitmap:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultGroupAvatarBitmap:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultAccountAvatarBitmap:Landroid/graphics/Bitmap;

    .line 41
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultIceAvatarBitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultGroupAvatarBitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultAccountAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected adjustDrawableAccordingToRequest(Lcom/android/contacts/photomanager/DefaultImageRequest;Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;)V
    .locals 4
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "drawable"    # Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getColorResId()I

    move-result v2

    const v3, 0x106000b

    .line 167
    invoke-static {v1, v2, v3}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 170
    .local v0, "defaultAvatarColor":I
    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->setAvatarColor(I)V

    .line 171
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getScale()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->setScale(F)V

    .line 172
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getOffset()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->setOffset(F)V

    .line 164
    .end local v0    # "defaultAvatarColor":I
    :cond_0
    return-void
.end method

.method public abstract applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;J)V
.end method

.method public abstract applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)V
.end method

.method public abstract getContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;JLcom/android/contacts/photomanager/DefaultImageProvider$ImageType;)Landroid/graphics/drawable/Drawable;
.end method

.method getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    .locals 5
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    invoke-static {}, Lcom/android/contacts/photomanager/DefaultImageProvider;->-getcom_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getType()Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown request type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :pswitch_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    .end local v1    # "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    iget-object v2, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultIceAvatarBitmap:Landroid/graphics/Bitmap;

    .line 126
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    .line 125
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 127
    .local v1, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    iget-object v2, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getTintColorResId()I

    move-result v3

    const v4, 0x7f080031

    .line 127
    invoke-static {v2, v3, v4}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 129
    .local v0, "defaultTintColor":I
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->setTintColor(I)V

    .line 142
    .end local v0    # "defaultTintColor":I
    :goto_0
    return-object v1

    .line 132
    .local v1, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    .end local v1    # "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    iget-object v2, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultGroupAvatarBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    .line 132
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 134
    .local v1, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    goto :goto_0

    .line 136
    .local v1, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    :pswitch_2
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    .end local v1    # "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    iget-object v2, p0, Lcom/android/contacts/photomanager/DefaultImageProvider;->mDefaultAccountAvatarBitmap:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    .line 136
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 138
    .local v1, "drawable":Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getQuickContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getShortcutDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
.end method
