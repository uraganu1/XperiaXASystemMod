.class public final Lcom/sonyericsson/android/socialphonebook/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final BRAND_NAME_DOCOMO:Ljava/lang/String; = "docomo"

.field public static final BRAND_NAME_KDDI:Ljava/lang/String; = "kddi"

.field public static final BRAND_NAME_TMOUS:Ljava/lang/String; = "tmous"

.field public static final BRAND_NAME_VERIZON:Ljava/lang/String; = "verizon"

.field private static final EXTRA_LARGE_PHOTO_HEIGHT:I = 0x100

.field private static final EXTRA_LARGE_PHOTO_WIDTH:I = 0x100

.field public static final FAVORITES_STARRED:I = 0x1

.field private static final LARGE_PHOTO_HEIGHT:I = 0x100

.field private static final LARGE_PHOTO_WIDTH:I = 0x100

.field private static final MATCHING_METHOD_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.contacts"

.field private static final MATCHING_METHOD_RESOURCE_NAME:Ljava/lang/String; = "matching_method"

.field private static final MATCHING_METHOD_RESOURCE_TYPE:Ljava/lang/String; = "string"

.field private static final MATCHING_METHOD_STRICT:Ljava/lang/String; = "strict"

.field private static final SMALL_PHOTO_HEIGHT:I = 0x60

.field private static final SMALL_PHOTO_WIDTH:I = 0x60

.field private static final TAG:Ljava/lang/String;

.field private static sSelf:Lcom/sonyericsson/android/socialphonebook/Configuration;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisabledContactFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteMode:I

.field private mLargePhotoHeight:I

.field private mLargePhotoWidth:I

.field private mResources:Landroid/content/res/Resources;

.field private mSmallPhotoHeight:I

.field private mSmallPhotoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/Configuration;->sSelf:Lcom/sonyericsson/android/socialphonebook/Configuration;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x60

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mFavoriteMode:I

    .line 59
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mSmallPhotoHeight:I

    .line 61
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mSmallPhotoWidth:I

    .line 63
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoHeight:I

    .line 65
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoWidth:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mDisabledContactFields:Ljava/util/HashSet;

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->initLargePhotoMetrics()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x60

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mFavoriteMode:I

    .line 59
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mSmallPhotoHeight:I

    .line 61
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mSmallPhotoWidth:I

    .line 63
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoHeight:I

    .line 65
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoWidth:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mDisabledContactFields:Ljava/util/HashSet;

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->initLargePhotoMetrics()V

    .line 123
    return-void
.end method

.method private getImServiceDisabled(I)Z
    .locals 9
    .param p1, "imProtocol"    # I

    .prologue
    .line 355
    const/4 v5, 0x0

    .line 356
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 357
    .local v1, "disabledProtocolsList":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "disabledProtocols":Ljava/lang/String;
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calling getImServiceDisabled(), disabled_im_services is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 359
    const-string/jumbo v8, ", read from overlay or local file."

    .line 358
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 362
    :try_start_0
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 367
    .end local v1    # "disabledProtocolsList":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, "protocol":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 370
    array-length v6, v1

    if-lez v6, :cond_1

    .line 371
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 372
    aget-object v6, v1, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 373
    const/4 v5, 0x1

    .line 378
    .end local v3    # "i":I
    :cond_1
    return v5

    .line 363
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local v1    # "disabledProtocolsList":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to split im protocol types!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v1    # "disabledProtocolsList":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v4    # "protocol":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/sonyericsson/android/socialphonebook/Configuration;

    monitor-enter v2

    .line 87
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->sSelf:Lcom/sonyericsson/android/socialphonebook/Configuration;

    if-nez v1, :cond_1

    .line 88
    if-eqz p0, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "aContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 91
    move-object v0, p0

    .line 93
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->sSelf:Lcom/sonyericsson/android/socialphonebook/Configuration;

    .line 98
    .end local v0    # "aContext":Landroid/content/Context;
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->sSelf:Lcom/sonyericsson/android/socialphonebook/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 95
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Context is null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initLargePhotoMetrics()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_0

    .line 142
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoHeight:I

    .line 143
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoWidth:I

    .line 139
    :cond_0
    return-void
.end method

.method public static isLayoutDirectionLTR(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 640
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private loadDisabledContactFields()V
    .locals 7

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "disabledContactFieldsList":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    .line 396
    const v5, 0x7f090028

    .line 395
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "disabledContactFields":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Calling loadDisabledContactFields(), disabled_contact_fields is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    const-string/jumbo v6, ", read from overlay or local file."

    .line 397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 401
    :try_start_0
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 406
    .end local v1    # "disabledContactFieldsList":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 407
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mDisabledContactFields:Ljava/util/HashSet;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    .end local v3    # "i":I
    .restart local v1    # "disabledContactFieldsList":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to split disabled contact fields!"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v1    # "disabledContactFieldsList":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static declared-synchronized setTestConfiguration(Lcom/sonyericsson/android/socialphonebook/Configuration;)V
    .locals 2
    .param p0, "configuration"    # Lcom/sonyericsson/android/socialphonebook/Configuration;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const-class v0, Lcom/sonyericsson/android/socialphonebook/Configuration;

    monitor-enter v0

    .line 113
    :try_start_0
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->sSelf:Lcom/sonyericsson/android/socialphonebook/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 112
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBrandName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getBrandName(), the brand is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    const-string/jumbo v3, ", read from overlay or local file."

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method public getCollapseCallLogMatchingMethod()Ljava/lang/String;
    .locals 4

    .prologue
    .line 624
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getCollapseCallLogMatchingMethod(), result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-object v0
.end method

.method public getDisableIntegratedAppPresence()Z
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 224
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getDisableIntegratedAppPresence(), disable_integrated_app_presence is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string/jumbo v3, ", read from overlay or local file."

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return v0
.end method

.method public getDisableSDN()Z
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 282
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getDisableSDN(), sdn_disable is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string/jumbo v3, ", read from overlay or local file."

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return v0
.end method

.method public getDisabledVoicemail()Z
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 236
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getDisabledVoicemail(), disabled_voicemail is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v3, ", read from overlay or local file."

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return v0
.end method

.method public getDisplayOrder()I
    .locals 4

    .prologue
    .line 455
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 456
    .local v0, "value":I
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getDisplayOrder(), the contacts_display_order is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 457
    const-string/jumbo v3, ", read from overlay or local file."

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return v0
.end method

.method public getEnableAdnLookup()Z
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 501
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableAdnLookup(), the enable_adn_lookup is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 502
    const-string/jumbo v3, ", read from overlay or local file."

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return v0
.end method

.method public getEnableExportToSim()Z
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 261
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableExportToSim(), enable_export_contacts_to_sim is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    const-string/jumbo v3, ", read from overlay or local file."

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return v0
.end method

.method public getEnableSimPhoneNumberAutoLoading()Z
    .locals 4

    .prologue
    .line 273
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 274
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableSimCardNumberAutoLoading(), enable_sim_phone_number_auto_loading is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    const-string/jumbo v3, ", read from overlay or local file."

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return v0
.end method

.method public getEnableSmartSearch()Z
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 192
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableSmartSearch(), the enable_smart_search is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    const-string/jumbo v3, ", read from overlay or local file."

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return v0
.end method

.method public getEnableSmartSearchLabels()Z
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 213
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableSmartSearchLabels(), the enable_smart_search_labels is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    const-string/jumbo v3, ", read from overlay or local file."

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return v0
.end method

.method public getEnableSpeedDial()Z
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 169
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableSpeedDial(), enable_speed_dial is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    const-string/jumbo v3, ", read from overlay or local file."

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return v0
.end method

.method public getEnableTogglingOfSmartSearch()Z
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 202
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getEnableTogglingOfSmartSearch(), the enable_toggling_of_smart_search is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    const-string/jumbo v3, ", read from overlay or local file."

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return v0
.end method

.method public getFavoriteMode()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mFavoriteMode:I

    return v0
.end method

.method public getHideSimContacts()Z
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 247
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getHideSimContacts(), hide_sim_contacts is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    const-string/jumbo v3, ", read from overlay or local file."

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v0
.end method

.method public getLargePhotoHeight()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoHeight:I

    return v0
.end method

.method public getLargePhotoWidth()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mLargePhotoWidth:I

    return v0
.end method

.method public getPresetProrityAccounts()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 421
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "accounts":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getPresetProrityAccounts(), the account_types is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    const-string/jumbo v3, ", read from overlay or local file."

    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSdCardContactsPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getSdContactsPath(), the contact path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    const-string/jumbo v3, ", read from overlay or local file."

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method public getSmallPhotoHeight()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mSmallPhotoHeight:I

    return v0
.end method

.method public getSmallPhotoWidth()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mSmallPhotoWidth:I

    return v0
.end method

.method public getSortOrder()I
    .locals 4

    .prologue
    .line 467
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 468
    .local v0, "value":I
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getSortOrder(), the contacts_sort_order is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    const-string/jumbo v3, ", read from overlay or local file."

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return v0
.end method

.method public getSpeedDialMaxNumber()I
    .locals 4

    .prologue
    .line 578
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 579
    .local v0, "maxNumber":I
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getSpeedDialMaxNumber(), the speed dial max number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return v0
.end method

.method public isActionBarWithCancelTextEnabled()Z
    .locals 4

    .prologue
    .line 697
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 698
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isActionBarWithCancelTextEnabled(), result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return v0
.end method

.method public isActionBarWithContactsTextEnabled()Z
    .locals 4

    .prologue
    .line 710
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 711
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isActionBarWithContactsTextEnabled(), result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return v0
.end method

.method public isAddPrefixForSoftbankEnabled()Z
    .locals 4

    .prologue
    .line 649
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 650
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isAddPrefixForSoftbankEnabled(), the \"Add Prefix\" contacts is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return v0
.end method

.method public isAddingEmergencyNumberInSpeedDialEnabled()Z
    .locals 4

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 180
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isAddingEmergencyNumberInSpeedDialEnabled(),enable_adding_emergency_number_in_speed_dial is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    const-string/jumbo v3, ", read from overlay or local file."

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return v0
.end method

.method public isChameleonHiddenMenuEnabled()Z
    .locals 4

    .prologue
    .line 539
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 540
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isChameleonHiddenMenuEnabled(), the Chameleon hidden menu feature is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return v0
.end method

.method public isChameleonSpeedDialEnabled()Z
    .locals 4

    .prologue
    .line 551
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 552
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isChameleonSpeedDialEnabled(), the Chameleon speed dial feature is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return v0
.end method

.method public isConferenceCallEnabled()Z
    .locals 4

    .prologue
    .line 661
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 662
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isConferenceCallEnabled(), conference call configuration is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return v0
.end method

.method public isContactFieldDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->loadDisabledContactFields()V

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mDisabledContactFields:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 390
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public isDisplayOrderDisabled()Z
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 433
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isDisplayOrderDisabled(), disabled_display_order is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    const-string/jumbo v3, ", read from overlay or local file."

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return v0
.end method

.method public isForbidden(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Z
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "editType"    # Lcom/android/contacts/common/model/account/AccountType$EditType;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 332
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget v1, p2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getImServiceDisabled(I)Z

    move-result v0

    .line 336
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public isGawEnabled()Z
    .locals 4

    .prologue
    .line 675
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 676
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isGawEnabled(), result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return v0
.end method

.method public isIceContactsEnabled()Z
    .locals 4

    .prologue
    .line 527
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 529
    .local v0, "enabled":Z
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isIceContactsEnabled(), the ICE contacts is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return v0

    .line 528
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 527
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public isIceStarOfLifeIconEnabled()Z
    .locals 4

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isIceContactsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    const/4 v1, 0x0

    return v1

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 567
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isIceStarOfLifeIconEnabled(), the ICE star of life icon is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return v0
.end method

.method public isNumberMatchingMethodStrict()Z
    .locals 7

    .prologue
    .line 590
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 591
    const-string/jumbo v5, "com.android.providers.contacts"

    .line 590
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 592
    .local v3, "resources":Landroid/content/res/Resources;
    const-string/jumbo v4, "matching_method"

    .line 593
    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.android.providers.contacts"

    .line 592
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 594
    .local v2, "resourceId":I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "matchingMethod":Ljava/lang/String;
    const-string/jumbo v4, "strict"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    const/4 v4, 0x1

    return v4

    .line 598
    .end local v1    # "matchingMethod":Ljava/lang/String;
    .end local v2    # "resourceId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to get the number matching method."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public isRegisteredEmailAddressesEnabled()Z
    .locals 4

    .prologue
    .line 730
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 731
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isRegisteredEmailAddressesEnabled(), result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return v0
.end method

.method public isShowingVideoCapabilityInCallLogEnabled()Z
    .locals 4

    .prologue
    .line 687
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 688
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isShowingVideoCapabilityInCallLogEnabled(), result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return v0
.end method

.method public isSimcardExtranameEnabled()Z
    .locals 4

    .prologue
    .line 477
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 478
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isSimcardExtranameEnabled(), enable-simcard-extraname is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 479
    const-string/jumbo v3, ", read from overlay or local file."

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return v0
.end method

.method public isSkinningContactPictureEnabled()Z
    .locals 5

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 744
    .local v1, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 748
    .end local v1    # "enabled":Z
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling isSkinningContactPictureEnabled(), result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return v1

    .line 745
    .restart local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t found resource use_static_contact_picture"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSortOrderDisabled()Z
    .locals 4

    .prologue
    .line 443
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 444
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isSortOrderDisabled(), disabled_sort_order is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    const-string/jumbo v3, ", read from overlay or local file."

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return v0
.end method

.method public isSpeedDialEnabled()Z
    .locals 4

    .prologue
    .line 512
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    .line 513
    const v2, 0x7f0b000d

    .line 512
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    .line 512
    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isOutgoingCallsAllowed(Landroid/content/Context;)Z

    move-result v0

    .line 515
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling getSpeedDialEnabled(), the speed dial is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return v0

    .line 512
    :cond_0
    const/4 v0, 0x0

    .local v0, "enabled":Z
    goto :goto_0
.end method

.method public isStreetBeforeNeighborhoodEnabled()Z
    .locals 4

    .prologue
    .line 611
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    .line 612
    const v2, 0x7f0b001a

    .line 611
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 613
    .local v0, "isStreetBeforeNeighborhoodEnabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isStreetBeforeNeighborhood(), result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return v0
.end method

.method public isVerizonCloudContactsIntegrationSupported()Z
    .locals 4

    .prologue
    .line 487
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    .line 488
    const v2, 0x7f0b0017

    .line 487
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 489
    .local v0, "flag":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isVerizonCloudContactsIntegrationSupported(), enable_verizon_cloud_contacts_integration is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 491
    const-string/jumbo v3, ", read from overlay or local file."

    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return v0
.end method

.method public isVideoCallButtonAlwaysVisible()Z
    .locals 4

    .prologue
    .line 720
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/Configuration;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 721
    .local v0, "enabled":Z
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling isVideoCallButtonAlwaysVisible(), result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return v0
.end method
