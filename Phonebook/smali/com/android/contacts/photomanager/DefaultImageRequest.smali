.class final Lcom/android/contacts/photomanager/DefaultImageRequest;
.super Ljava/lang/Object;
.source "DefaultImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    }
.end annotation


# instance fields
.field private final mColorResId:I

.field private final mIsCircular:Z

.field private final mOffset:F

.field private final mScale:F

.field private final mTintColorResId:I

.field private final mType:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x1010433

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    iput-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mType:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mScale:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mOffset:F

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mIsCircular:Z

    .line 71
    iput v1, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mColorResId:I

    .line 72
    iput v1, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mTintColorResId:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;FFZ)V
    .locals 6
    .param p1, "type"    # Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .param p2, "scale"    # F
    .param p3, "offset"    # F
    .param p4, "isCircular"    # Z

    .prologue
    .line 143
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const v2, 0x1010433

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZ)V
    .locals 7
    .param p1, "type"    # Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .param p2, "colorResId"    # I
    .param p3, "scale"    # F
    .param p4, "offset"    # F
    .param p5, "isCircular"    # Z

    .prologue
    .line 116
    const v6, 0x1010433

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 115
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZI)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZI)V
    .locals 0
    .param p1, "type"    # Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .param p2, "colorResId"    # I
    .param p3, "scale"    # F
    .param p4, "offset"    # F
    .param p5, "isCircular"    # Z
    .param p6, "tintColorAttributeId"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mType:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 135
    iput p2, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mColorResId:I

    .line 136
    iput p3, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mScale:F

    .line 137
    iput p4, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mOffset:F

    .line 138
    iput-boolean p5, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mIsCircular:Z

    .line 139
    iput p6, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mTintColorResId:I

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IZ)V
    .locals 6
    .param p1, "type"    # Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .param p2, "colorResId"    # I
    .param p3, "isCircular"    # Z

    .prologue
    .line 97
    const/high16 v3, 0x3f800000    # 1.0f

    .line 98
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZ)V

    .line 96
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "isCircular"    # Z

    .prologue
    .line 82
    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const v2, 0x1010433

    const/high16 v3, 0x3f800000    # 1.0f

    .line 83
    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/photomanager/DefaultImageRequest;-><init>(Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;IFFZ)V

    .line 81
    return-void
.end method


# virtual methods
.method public getColorResId()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mColorResId:I

    return v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mOffset:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mScale:F

    return v0
.end method

.method public getTintColorResId()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mTintColorResId:I

    return v0
.end method

.method public getType()Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mType:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    return-object v0
.end method

.method public isCircular()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/DefaultImageRequest;->mIsCircular:Z

    return v0
.end method
