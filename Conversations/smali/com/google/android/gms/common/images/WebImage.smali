.class public final Lcom/google/android/gms/common/images/WebImage;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzajZ:Landroid/net/Uri;

.field private final zzoG:I

.field private final zzoH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/images/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/images/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;II)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/images/WebImage;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/images/WebImage;->zzajZ:Landroid/net/Uri;

    iput p3, p0, Lcom/google/android/gms/common/images/WebImage;->zzoG:I

    iput p4, p0, Lcom/google/android/gms/common/images/WebImage;->zzoH:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_2

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/common/images/WebImage;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->zzajZ:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/common/images/WebImage;->zzajZ:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    :goto_0
    move v0, v1

    :cond_4
    return v0

    :cond_5
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->zzoG:I

    iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->zzoG:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->zzoH:I

    iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->zzoH:I

    if-eq v2, v3, :cond_4

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->zzoH:I

    return v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->zzajZ:Landroid/net/Uri;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->mVersionCode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->zzoG:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->zzajZ:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->zzoG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->zzoH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "Image %dx%d %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->zzoG:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->zzoH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/common/images/WebImage;->zzajZ:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/images/zzb;->zza(Lcom/google/android/gms/common/images/WebImage;Landroid/os/Parcel;I)V

    return-void
.end method
