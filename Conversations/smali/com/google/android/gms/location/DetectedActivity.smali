.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

.field public static final zzaNy:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaNz:[I


# instance fields
.field private final mVersionCode:I

.field zzaNA:I

.field zzaNB:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/location/DetectedActivity$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivity$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->zzaNy:Ljava/util/Comparator;

    const/16 v0, 0xd

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v3, v0, v3

    const/4 v1, 0x3

    aput v4, v0, v1

    aput v5, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v5

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xe

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->zzaNz:[I

    new-instance v0, Lcom/google/android/gms/location/DetectedActivityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "activityType"    # I
    .param p3, "confidence"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNA:I

    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNB:I

    return-void
.end method

.method private zzhn(I)I
    .locals 1

    .prologue
    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public static zzho(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "IN_VEHICLE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ON_BICYCLE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ON_FOOT"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "STILL"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "TILTING"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "WALKING"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "RUNNING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
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

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_2

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/google/android/gms/location/DetectedActivity;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNA:I

    iget v3, p1, Lcom/google/android/gms/location/DetectedActivity;->zzaNA:I

    if-eq v2, v3, :cond_4

    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNB:I

    iget v3, p1, Lcom/google/android/gms/location/DetectedActivity;->zzaNB:I

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNB:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNA:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->zzhn(I)I

    move-result v0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DetectedActivity [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/location/DetectedActivity;->zzho(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->zzaNB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/DetectedActivityCreator;->zza(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V

    return-void
.end method
