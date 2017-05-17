.class public abstract Lcom/google/android/gms/location/places/internal/zzt;
.super Lcom/google/android/gms/common/data/zzc;
.source "Unknown"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string/jumbo v0, "SafeDataBufferRef"

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzt;->TAG:Ljava/lang/String;

    return-void
.end method
