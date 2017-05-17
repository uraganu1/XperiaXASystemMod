.class Lcom/google/android/gms/maps/model/TileOverlayOptions$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>(ILandroid/os/IBinder;ZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final zzaTS:Lcom/google/android/gms/maps/model/internal/zzi;

.field final synthetic zzaTT:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->zzaTT:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->zzaTT:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->zzaTS:Lcom/google/android/gms/maps/model/internal/zzi;

    return-void
.end method
