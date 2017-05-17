.class public final Lcom/google/android/gms/maps/model/CameraPosition;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zza;


# instance fields
.field public final bearing:F

.field private final mVersionCode:I

.field public final target:Lcom/google/android/gms/maps/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zza;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/zza;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;FFF)V
    .locals 7
    .param p1, "versionCode"    # I
    .param p2, "target"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "zoom"    # F
    .param p4, "tilt"    # F
    .param p5, "bearing"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "null camera target"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v0, v6, p4

    if-gtz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Tilt needs to be between 0 and 90 inclusive: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput p3, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    add-float v0, p4, v6

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    float-to-double v0, p5

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    rem-float v0, p5, v5

    add-float p5, v0, v5

    .end local p5    # "bearing":F
    :cond_0
    rem-float v0, p5, v5

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    return-void

    .restart local p5    # "bearing":F
    :cond_1
    move v0, v2

    goto :goto_0
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
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/maps/model/CameraPosition;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    return v0

    :cond_3
    return v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

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

    const-string/jumbo v1, "target"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "zoom"

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "tilt"

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "bearing"

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zza;->zza(Lcom/google/android/gms/maps/model/CameraPosition;Landroid/os/Parcel;I)V

    return-void
.end method
