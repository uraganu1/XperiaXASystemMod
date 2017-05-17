.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzi;


# instance fields
.field private mColor:I

.field private final mVersionCode:I

.field private final zzaTJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private zzaTL:Z

.field private zzaTh:F

.field private zzaTi:Z

.field private zzaTm:F

.field private zzaTr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzi;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTm:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTh:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTi:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTL:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTr:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mVersionCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTJ:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZZ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "points"    # Ljava/util/List;
    .param p3, "width"    # F
    .param p4, "color"    # I
    .param p5, "zIndex"    # F
    .param p6, "visible"    # Z
    .param p7, "geodesic"    # Z
    .param p8, "clickable"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTm:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTh:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTi:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTL:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTr:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTJ:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTm:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTh:F

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTi:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTL:Z

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTr:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTJ:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mVersionCode:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTm:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTh:F

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTr:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTL:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzaTi:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzi;->zza(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    return-void
.end method
