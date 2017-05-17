.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzo;


# instance fields
.field private final mVersionCode:I

.field private zzaTP:Lcom/google/android/gms/maps/model/internal/zzi;

.field private zzaTQ:Lcom/google/android/gms/maps/model/TileProvider;

.field private zzaTR:Z

.field private zzaTh:F

.field private zzaTi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTR:Z

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "delegate"    # Landroid/os/IBinder;
    .param p3, "visible"    # Z
    .param p4, "zIndex"    # F
    .param p5, "fadeIn"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTi:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTR:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/internal/zzi$zza;->zzdm(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTP:Lcom/google/android/gms/maps/model/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTP:Lcom/google/android/gms/maps/model/internal/zzi;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTQ:Lcom/google/android/gms/maps/model/TileProvider;

    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTi:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTh:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTR:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTP:Lcom/google/android/gms/maps/model/internal/zzi;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFadeIn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTR:Z

    return v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->mVersionCode:I

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTh:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTi:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzo;->zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzAm()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzaTP:Lcom/google/android/gms/maps/model/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
