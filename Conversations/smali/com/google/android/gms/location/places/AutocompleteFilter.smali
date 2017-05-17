.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zzc;


# instance fields
.field final mVersionCode:I

.field final zzaPg:Z

.field final zzaPh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzaPi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/zzc;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 3
    .param p1, "versionCode"    # I
    .param p2, "includeQueryPredictions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "typeFilterAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPh:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzg(Ljava/util/Collection;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPi:I

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->mVersionCode:I

    if-lt v2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPg:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPg:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static zzg(Ljava/util/Collection;)I
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
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

    instance-of v2, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    .end local p1    # "object":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPi:I

    iget v3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPi:I

    if-eq v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    return v0

    :cond_2
    return v1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPg:Z

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPg:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const-string/jumbo v1, "includeQueryPredictions"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPg:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "typeFilter"

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaPi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzc;->zza(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method
