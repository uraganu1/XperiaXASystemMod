.class Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactGawRequest"
.end annotation


# instance fields
.field private mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

.field private mSize:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mSize:I

    return v0
.end method

.method public constructor <init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V
    .locals 0
    .param p1, "symobls"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .param p2, "size"    # I

    .prologue
    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    iput-object p1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 1056
    iput p2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mSize:I

    .line 1054
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1066
    if-ne p0, p1, :cond_0

    return v5

    .line 1067
    :cond_0
    if-nez p1, :cond_1

    return v4

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    move-object v1, p1

    .line 1069
    check-cast v1, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1070
    .local v1, "that":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    iget v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mSize:I

    iget v3, v1, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mSize:I

    if-eq v2, v3, :cond_3

    return v4

    .line 1071
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    iget-object v2, v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    array-length v2, v2

    iget-object v3, v1, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    iget-object v3, v3, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    array-length v3, v3

    if-eq v2, v3, :cond_4

    return v4

    .line 1073
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    iget-object v2, v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1074
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    iget-object v2, v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    aget-char v2, v2, v0

    iget-object v3, v1, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    iget-object v3, v3, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_5

    .line 1075
    return v4

    .line 1073
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    :cond_6
    return v5
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1061
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mInitials:Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    iget-object v1, v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->mSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
