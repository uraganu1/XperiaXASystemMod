.class public Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequest"
.end annotation


# static fields
.field public static EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;


# instance fields
.field public contactType:I

.field public displayName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public isCircular:Z

.field public offset:F

.field public photoId:J

.field public scale:F

.field public subId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>()V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 350
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 349
    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 357
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 356
    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 364
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v4, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 363
    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 277
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 306
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->photoId:J

    .line 332
    iput v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->subId:I

    .line 337
    iput-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 366
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "scale"    # F
    .param p5, "offset"    # F
    .param p6, "isCircular"    # Z

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 306
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->photoId:J

    .line 332
    iput v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->subId:I

    .line 337
    iput-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 380
    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 381
    iput-object p2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 382
    iput p3, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 383
    iput p4, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 384
    iput p5, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 385
    iput-boolean p6, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 379
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "isCircular"    # Z

    .prologue
    .line 375
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    .line 374
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "isCircular"    # Z

    .prologue
    .line 370
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    .line 369
    return-void
.end method
