.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzc;


# instance fields
.field private final mVersionCode:I

.field private zzaRk:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzaTa:F

.field private zzaTh:F

.field private zzaTi:Z

.field private zzaTk:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private zzaTl:Lcom/google/android/gms/maps/model/LatLng;

.field private zzaTm:F

.field private zzaTn:F

.field private zzaTo:F

.field private zzaTp:F

.field private zzaTq:F

.field private zzaTr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTi:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTo:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTp:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTq:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTr:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "wrappedImage"    # Landroid/os/IBinder;
    .param p3, "location"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p7, "bearing"    # F
    .param p8, "zIndex"    # F
    .param p9, "visible"    # Z
    .param p10, "transparency"    # F
    .param p11, "anchorU"    # F
    .param p12, "anchorV"    # F
    .param p13, "clickable"    # Z

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTi:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTo:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTp:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTq:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTr:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->mVersionCode:I

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTk:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTl:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTm:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTn:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaRk:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTa:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTh:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTi:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTo:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTp:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTq:F

    iput-boolean p13, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTr:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTp:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTq:F

    return v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTa:F

    return v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaRk:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTn:F

    return v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTl:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTo:F

    return v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->mVersionCode:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTm:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTh:F

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTr:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTi:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzc;->zza(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzAj()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzaTk:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzzH()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
