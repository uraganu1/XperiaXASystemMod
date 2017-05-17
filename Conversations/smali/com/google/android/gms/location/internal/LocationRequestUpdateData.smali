.class public Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/zzn;


# instance fields
.field mPendingIntent:Landroid/app/PendingIntent;

.field private final mVersionCode:I

.field zzaOU:I

.field zzaOV:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field zzaOW:Lcom/google/android/gms/location/zzd;

.field zzaOX:Lcom/google/android/gms/location/zzc;

.field zzaOY:Lcom/google/android/gms/location/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->CREATOR:Lcom/google/android/gms/location/internal/zzn;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "operation"    # I
    .param p3, "locationRequest"    # Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .param p4, "locationListenerBinder"    # Landroid/os/IBinder;
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "locationCallbackBinder"    # Landroid/os/IBinder;
    .param p7, "fusedLocationProviderCallbackBinder"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOU:I

    iput-object p3, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOV:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/location/zzd$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzd;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOW:Lcom/google/android/gms/location/zzd;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p6, :cond_2

    invoke-static {p6}, Lcom/google/android/gms/location/zzc$zza;->zzce(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzc;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOX:Lcom/google/android/gms/location/zzc;

    if-eqz p7, :cond_0

    invoke-static {p7}, Lcom/google/android/gms/location/internal/zzg$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOY:Lcom/google/android/gms/location/internal/zzg;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/zzn;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzyQ()Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOW:Lcom/google/android/gms/location/zzd;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOW:Lcom/google/android/gms/location/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method zzyR()Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOX:Lcom/google/android/gms/location/zzc;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOX:Lcom/google/android/gms/location/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method zzyS()Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOY:Lcom/google/android/gms/location/internal/zzg;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->zzaOY:Lcom/google/android/gms/location/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method
