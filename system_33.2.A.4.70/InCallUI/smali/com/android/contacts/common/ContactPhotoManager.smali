.class public abstract Lcom/android/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;
    }
.end annotation


# static fields
.field public static DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGE_URI:Landroid/net/Uri;

.field private static sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

.field private static sInstance:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string/jumbo v0, "defaultimage://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    .line 124
    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    .line 458
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 460
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/contacts/common/ContactPhotoManager;

    monitor-enter v1

    .line 475
    :try_start_0
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 237
    new-instance v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 238
    const-string/jumbo v6, "display_name"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    const-string/jumbo v7, "identifier"

    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 237
    invoke-direct {v4, v6, v7, v8}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    .local v4, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :try_start_0
    const-string/jumbo v6, "contact_type"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "contactType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 246
    :cond_0
    const-string/jumbo v6, "scale"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "scale":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 248
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 251
    :cond_1
    const-string/jumbo v6, "offset"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "offset":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 253
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 256
    :cond_2
    const-string/jumbo v6, "is_circular"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "isCircular":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 258
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0    # "contactType":Ljava/lang/String;
    .end local v2    # "isCircular":Ljava/lang/String;
    .end local v3    # "offset":Ljava/lang/String;
    .end local v5    # "scale":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v4

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "ContactPhotoManager"

    const-string/jumbo v7, "Invalid DefaultImageRequest image parameters provided, ignoring and using defaults."

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v1, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 465
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    .line 466
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 467
    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 471
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v1
.end method

.method public static injectContactPhotoManagerForTesting(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p0, "photoManager"    # Lcom/android/contacts/common/ContactPhotoManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 480
    sput-object p0, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    .line 479
    return-void
.end method

.method public static isBusinessContactUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 227
    if-nez p0, :cond_0

    .line 228
    return v1

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "encodedFragment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 232
    :cond_1
    return v1
.end method

.method public static removeContactType(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "encodedFragment":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 214
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 217
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected isDefaultImageUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 269
    const-string/jumbo v0, "defaultimage"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z
    .param p4, "isCircular"    # Z
    .param p5, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 547
    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 546
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 594
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 604
    return-void
.end method

.method public abstract preloadPhotosInBackground()V
.end method
