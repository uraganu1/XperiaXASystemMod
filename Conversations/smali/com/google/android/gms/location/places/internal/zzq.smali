.class public Lcom/google/android/gms/location/places/internal/zzq;
.super Lcom/google/android/gms/location/places/internal/zzt;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/location/places/PlacePhotoMetadata;


# instance fields
.field private final zzaQR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzt;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string/jumbo v0, "photo_fife_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/zzq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzq;->zzaQR:Ljava/lang/String;

    return-void
.end method
