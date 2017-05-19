.class public Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;
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
            "Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaQM:Lcom/google/android/gms/location/places/internal/PlaceImpl;

.field final zzaQN:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/internal/PlaceImpl;F)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "place"    # Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .param p3, "likelihood"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQM:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iput p3, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQN:F

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
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQM:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQM:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    return v0

    :cond_2
    return v1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_3
    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQN:F

    iget v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQN:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQM:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQN:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "place"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQM:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "likelihood"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->zzaQN:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzm;->zza(Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;Landroid/os/Parcel;I)V

    return-void
.end method