.class Lcom/android/contacts/photomanager/GawImageProvider;
.super Lcom/android/contacts/photomanager/DefaultImageProvider;
.source "GawImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;,
        Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;
    }
.end annotation


# static fields
.field private static synthetic -com_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues:[I

.field private static synthetic -com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

.field private static KEEP_ALIVE_TIME:I

.field private static NUMBER_OF_CORES:I


# instance fields
.field private final mDefaultPersonAvatarCircularBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultPersonAvatarRectangleBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/photomanager/GawImageProvider;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    return-object v0
.end method

.method private static synthetic -getcom_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/photomanager/GawImageProvider;->-com_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/photomanager/GawImageProvider;->-com_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->values()[Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->THUMBNAIL:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/contacts/photomanager/GawImageProvider;->-com_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/photomanager/GawImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/photomanager/GawImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

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

    const/4 v2, 0x5

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/contacts/photomanager/GawImageProvider;->-com_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 36
    sput v0, Lcom/android/contacts/photomanager/GawImageProvider;->NUMBER_OF_CORES:I

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/photomanager/GawImageProvider;->KEEP_ALIVE_TIME:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCircular"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/photomanager/DefaultImageProvider;-><init>(Landroid/content/Context;Z)V

    .line 49
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    .line 50
    iget-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getColorPalette()[I

    move-result-object v9

    .line 51
    .local v9, "colors":[I
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/contacts/photomanager/GawImageProvider;->NUMBER_OF_CORES:I

    sget v3, Lcom/android/contacts/photomanager/GawImageProvider;->NUMBER_OF_CORES:I

    sget v4, Lcom/android/contacts/photomanager/GawImageProvider;->KEEP_ALIVE_TIME:I

    int-to-long v4, v4

    .line 52
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 51
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v9

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarRectangleBitmaps:Landroid/util/SparseArray;

    .line 56
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v9

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarCircularBitmaps:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 58
    .local v12, "iconSize":I
    if-nez v12, :cond_0

    .line 60
    const-string/jumbo v1, "activity"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 61
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v12

    .line 63
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    const/4 v1, 0x0

    array-length v2, v9

    :goto_0
    if-ge v1, v2, :cond_1

    aget v8, v9, v1

    .line 64
    .local v8, "color":I
    invoke-direct {p0, v8, v12}, Lcom/android/contacts/photomanager/GawImageProvider;->getColorBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 65
    .local v11, "defaultPersonAvatarRectangle":Landroid/graphics/Bitmap;
    invoke-static {p1, v11}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 67
    .local v10, "defaultPersonAvatarCircular":Landroid/graphics/Bitmap;
    invoke-virtual {v11, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 69
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarRectangleBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarCircularBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v8    # "color":I
    .end local v10    # "defaultPersonAvatarCircular":Landroid/graphics/Bitmap;
    .end local v11    # "defaultPersonAvatarRectangle":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private getColorBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "color"    # I
    .param p2, "iconSize"    # I

    .prologue
    .line 76
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 75
    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "defaultPersonAvatarRectangle":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 78
    return-object v0
.end method

.method private getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "initials"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .param p2, "imageType"    # Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;
    .param p3, "isCircular"    # Z

    .prologue
    .line 191
    invoke-static {}, Lcom/android/contacts/photomanager/GawImageProvider;->-getcom_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 206
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getColorForSymbols(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)I

    move-result v0

    .line 207
    .local v0, "colorId":I
    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarCircularBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 209
    .local v2, "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    invoke-direct {v1, v2, p3}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 212
    .end local v0    # "colorId":I
    .local v1, "defaultAvatar":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 193
    .end local v1    # "defaultAvatar":Landroid/graphics/drawable/Drawable;
    .end local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->renderPhoto(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    .restart local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/contacts/photomanager/GawImageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 196
    .restart local v1    # "defaultAvatar":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 198
    .end local v1    # "defaultAvatar":Landroid/graphics/drawable/Drawable;
    .end local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    if-eqz p3, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/GawImageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->renderThumbnail(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 199
    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    .restart local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    invoke-direct {v1, v2, p3}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 203
    .restart local v1    # "defaultAvatar":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 201
    .end local v1    # "defaultAvatar":Landroid/graphics/drawable/Drawable;
    .end local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->renderThumbnail(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 208
    .end local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "colorId":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarRectangleBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .restart local v2    # "defaultAvatarBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;J)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p3, "contactId"    # J

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v1, p3, p4}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContactFromMap(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    .line 85
    .local v0, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    if-eqz v0, :cond_0

    .line 88
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 89
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v2

    .line 88
    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    sget-object v2, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 93
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    .line 92
    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;-><init>(Lcom/android/contacts/photomanager/GawImageProvider;J)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p3, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContactFromMap(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    .line 103
    .local v0, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    if-eqz v0, :cond_0

    .line 106
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 107
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v2

    .line 106
    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    sget-object v2, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 111
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    .line 110
    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;

    invoke-direct {v2, p0, p3}, Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;-><init>(Lcom/android/contacts/photomanager/GawImageProvider;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/GawImageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->resolveChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->THUMBNAIL:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v2

    .line 168
    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;JLcom/android/contacts/photomanager/DefaultImageProvider$ImageType;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "contactId"    # J
    .param p4, "imageType"    # Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .prologue
    .line 130
    invoke-static {}, Lcom/android/contacts/photomanager/GawImageProvider;->-getcom_android_contacts_photomanager_DefaultImageProvider$ImageTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p4}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 138
    invoke-static {}, Lcom/android/contacts/photomanager/GawImageProvider;->-getcom_android_contacts_photomanager_DefaultImageRequest$RequestTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->getType()Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 148
    invoke-super {p0, p1}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;)Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    move-result-object v1

    .line 153
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget-object v3, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    if-eq p4, v3, :cond_0

    move-object v3, v1

    .line 155
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/photomanager/GawImageProvider;->adjustDrawableAccordingToRequest(Lcom/android/contacts/photomanager/DefaultImageRequest;Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;)V

    .line 157
    :cond_0
    return-object v1

    .line 133
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v2

    .line 134
    .local v2, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    invoke-direct {p0, v2, p4, v3}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 140
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getColorForSymbols(J)I

    move-result v0

    .line 141
    .local v0, "colorId":I
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    .line 142
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarCircularBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 145
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v4

    .line 141
    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 146
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 144
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mDefaultPersonAvatarRectangleBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getQuickContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/photomanager/GawImageProvider;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 184
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v2

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "contactId"    # J

    .prologue
    .line 162
    sget-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->THUMBNAIL:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/photomanager/GawImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;JLcom/android/contacts/photomanager/DefaultImageProvider$ImageType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
