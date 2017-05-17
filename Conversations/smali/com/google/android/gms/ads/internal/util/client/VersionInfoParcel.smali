.class public final Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/util/client/zzc;


# instance fields
.field public afmaVersion:Ljava/lang/String;

.field public final versionCode:I

.field public zzMZ:I

.field public zzNa:I

.field public zzNb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/util/client/zzc;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "afmaVersion"    # Ljava/lang/String;
    .param p3, "buddyApkVersion"    # I
    .param p4, "clientJarVersion"    # I
    .param p5, "isClientJar"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzMZ:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzNa:I

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzNb:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzc;->zza(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method
