.class public Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/formats/zzj;


# instance fields
.field public final versionCode:I

.field public final zzyA:Z

.field public final zzyB:I

.field public final zzyC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/formats/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->CREATOR:Lcom/google/android/gms/ads/internal/formats/zzj;

    return-void
.end method

.method public constructor <init>(IZIZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "shouldReturnUrlsForImageAssets"    # Z
    .param p3, "imageOrientation"    # I
    .param p4, "shouldRequestMultipleImages"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyA:Z

    iput p3, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyB:I

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyC:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/formats/zzj;->zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Landroid/os/Parcel;I)V

    return-void
.end method
