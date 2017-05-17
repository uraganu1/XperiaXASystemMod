.class public abstract Lcom/android/contacts/photomanager/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final ACCOUNT_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static final DEFAULT_IMAGE_EXTENT:I = 0x0

.field public static final GROUP_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

.field public static final ICE_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

.field public static final IS_CIRCULAR:Z = true

.field public static final OFFSET_DEFAULT:F = 0.0f

.field public static final PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

.field public static final PERSON_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

.field public static final QUICKCONTACT_OFFSET:F = -0.1f

.field public static final QUICKCONTACT_SCALE:F = 0.75f

.field public static final SCALE_DEFAULT:F = 1.0f

.field static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/contacts/photomanager/ContactPhotoManager;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

.field protected mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

.field protected final mIsGawEnabled:Z

.field protected final mPhotosRatio:F

.field public final mQuickContactDefaultRequest:Lcom/android/contacts/photomanager/DefaultImageRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v2, 0x1010433

    const/4 v5, 0x1

    .line 96
    const-class v0, Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->TAG:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest;

    invoke-direct {v0}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>()V

    .line 126
    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 134
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest;

    invoke-direct {v0, v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Z)V

    .line 133
    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 141
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest;

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ACCOUNT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 142
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 141
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZ)V

    .line 140
    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->ACCOUNT_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 149
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest;

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const v3, 0x106000b

    invoke-direct {v0, v1, v3, v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IZ)V

    .line 148
    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->ICE_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 156
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest;

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->GROUP:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IZ)V

    .line 155
    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->GROUP_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 91
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mContext:Landroid/content/Context;

    .line 271
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 272
    .local v0, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSkinningContactPictureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mIsGawEnabled:Z

    .line 273
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 274
    .local v1, "photoRatio":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0232

    invoke-virtual {v2, v5, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 275
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mPhotosRatio:F

    .line 276
    iget-boolean v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mIsGawEnabled:Z

    if-eqz v2, :cond_2

    .line 277
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    .line 278
    new-instance v2, Lcom/android/contacts/photomanager/DefaultImageRequest;

    sget-object v5, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 279
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 278
    invoke-direct {v2, v5, v6, v7, v3}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;FFZ)V

    iput-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mQuickContactDefaultRequest:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 280
    new-instance v2, Lcom/android/contacts/photomanager/GawImageProvider;

    iget-object v3, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/contacts/photomanager/GawImageProvider;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    .line 268
    :goto_1
    return-void

    .end local v1    # "photoRatio":Landroid/util/TypedValue;
    :cond_1
    move v2, v4

    .line 272
    goto :goto_0

    .line 282
    .restart local v1    # "photoRatio":Landroid/util/TypedValue;
    :cond_2
    new-instance v2, Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 283
    sget-object v5, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, -0x42333333    # -0.1f

    .line 282
    invoke-direct {v2, v5, v6, v7, v3}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;FFZ)V

    iput-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mQuickContactDefaultRequest:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 285
    new-instance v2, Lcom/android/contacts/photomanager/ColoredImageProvider;

    iget-object v3, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/contacts/photomanager/ColoredImageProvider;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    goto :goto_1
.end method

.method public static declared-synchronized clearInstance()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/contacts/photomanager/ContactPhotoManager;

    monitor-enter v0

    .line 265
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/photomanager/ContactPhotoManager;->sInstance:Lcom/android/contacts/photomanager/ContactPhotoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 264
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->sInstance:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-nez v0, :cond_1

    .line 255
    const-class v1, Lcom/android/contacts/photomanager/ContactPhotoManager;

    monitor-enter v1

    .line 256
    :try_start_0
    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->sInstance:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->sInstance:Lcom/android/contacts/photomanager/ContactPhotoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 261
    :cond_1
    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->sInstance:Lcom/android/contacts/photomanager/ContactPhotoManager;

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract clearCache()V
.end method

.method public generateContactThumbnail(Lcom/android/contacts/photomanager/DefaultImageRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultContactAvatar(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "contactId"    # J

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;JLcom/android/contacts/photomanager/DefaultImageProvider$ImageType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public generateQuickContactPhoto(J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mQuickContactDefaultRequest:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 246
    sget-object v2, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 245
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;JLcom/android/contacts/photomanager/DefaultImageProvider$ImageType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public generateQuickContactPhoto(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    .line 232
    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mQuickContactDefaultRequest:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 231
    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getQuickContactDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 171
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->generateDefaultContactAvatar(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultShortcutAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p2, "contactId"    # J

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/photomanager/DefaultImageProvider;->getShortcutDrawable(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "contactId"    # J
    .param p5, "requestedExtent"    # I
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 362
    int-to-float v0, p5

    iget v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mPhotosRatio:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 363
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p6

    .line 362
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V

    .line 361
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "contactId"    # J
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 303
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V

    .line 302
    return-void
.end method

.method protected abstract loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JLandroid/net/Uri;Lcom/android/contacts/photomanager/DefaultImageRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 312
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JLandroid/net/Uri;Lcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V

    .line 311
    return-void
.end method

.method protected abstract loadThumbnail(Landroid/widget/ImageView;JLandroid/net/Uri;Lcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;Landroid/net/Uri;JLcom/android/contacts/photomanager/DefaultImageRequest;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "contactId"    # J
    .param p5, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;

    .prologue
    .line 322
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManager;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    .line 321
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V

    .line 320
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 403
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 413
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method
