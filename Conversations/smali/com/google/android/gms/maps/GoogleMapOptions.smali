.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/zza;


# instance fields
.field private final mVersionCode:I

.field private zzaRP:Ljava/lang/Boolean;

.field private zzaRQ:Ljava/lang/Boolean;

.field private zzaRR:I

.field private zzaRS:Lcom/google/android/gms/maps/model/CameraPosition;

.field private zzaRT:Ljava/lang/Boolean;

.field private zzaRU:Ljava/lang/Boolean;

.field private zzaRV:Ljava/lang/Boolean;

.field private zzaRW:Ljava/lang/Boolean;

.field private zzaRX:Ljava/lang/Boolean;

.field private zzaRY:Ljava/lang/Boolean;

.field private zzaRZ:Ljava/lang/Boolean;

.field private zzaSa:Ljava/lang/Boolean;

.field private zzaSb:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/zza;

    invoke-direct {v0}, Lcom/google/android/gms/maps/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRR:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBBB)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "zOrderOnTop"    # B
    .param p3, "useViewLifecycleInFragment"    # B
    .param p4, "mapType"    # I
    .param p5, "camera"    # Lcom/google/android/gms/maps/model/CameraPosition;
    .param p6, "zoomControlsEnabled"    # B
    .param p7, "compassEnabled"    # B
    .param p8, "scrollGesturesEnabled"    # B
    .param p9, "zoomGesturesEnabled"    # B
    .param p10, "tiltGesturesEnabled"    # B
    .param p11, "rotateGesturesEnabled"    # B
    .param p12, "liteMode"    # B
    .param p13, "mapToolbarEnabled"    # B
    .param p14, "ambientEnabled"    # B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRR:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRP:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRQ:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRR:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRS:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRT:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRU:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRV:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRW:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRX:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRY:Ljava/lang/Boolean;

    invoke-static {p12}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRZ:Ljava/lang/Boolean;

    invoke-static {p13}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaSa:Ljava/lang/Boolean;

    invoke-static {p14}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaSb:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRS:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRR:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/zza;->zza(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzzK()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRP:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzL()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRQ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzM()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRT:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzN()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRU:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzO()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRV:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzP()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRW:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzQ()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRX:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzR()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRY:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzS()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaRZ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzT()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaSa:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzzU()B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaSb:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method
