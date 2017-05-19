.class public Lcom/google/android/gms/location/places/personalized/PlaceAlias;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/zzb;

.field public static final zzaRc:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

.field public static final zzaRd:Lcom/google/android/gms/location/places/personalized/PlaceAlias;


# instance fields
.field final mVersionCode:I

.field private final zzaRe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/location/places/personalized/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/zzb;

    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const-string/jumbo v1, "Home"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRc:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const-string/jumbo v1, "Work"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRd:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRe:Ljava/lang/String;

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
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRe:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRe:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRe:Ljava/lang/String;

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

    const-string/jumbo v1, "alias"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRe:Ljava/lang/String;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/zzb;->zza(Lcom/google/android/gms/location/places/personalized/PlaceAlias;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzzB()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->zzaRe:Ljava/lang/String;

    return-object v0
.end method