.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzafB:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field final mVersionCode:I

.field private final zzade:I

.field private final zzafC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzafB:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "statusCode"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "statusMessage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzade:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->zzafC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static getStatusString(I)Ljava/lang/String;
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SERVICE_MISSING"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "SERVICE_DISABLED"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "INVALID_ACCOUNT"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "NETWORK_ERROR"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "INTERNAL_ERROR"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "SERVICE_INVALID"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "DEVELOPER_ERROR"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "CANCELED"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "TIMEOUT"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "INTERRUPTED"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "API_UNAVAILABLE"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "SIGN_IN_FAILED"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "SERVICE_UPDATING"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "SERVICE_MISSING_PERMISSION"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "RESTRICTED_PROFILE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
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

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzade:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzade:I

    if-eq v2, v3, :cond_4

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
    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzafC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzafC:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzade:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzafC:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzade:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzafC:Ljava/lang/String;

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

    const-string/jumbo v1, "statusCode"

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzade:I

    invoke-static {v2}, Lcom/google/android/gms/common/ConnectionResult;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzafC:Ljava/lang/String;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/zzb;->zza(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method
