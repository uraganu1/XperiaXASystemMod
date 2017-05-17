.class public final Lcom/google/android/gms/location/LocationStatusCodes;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eC(I)I
    .locals 2

    const/4 v1, 0x1

    if-gez p0, :cond_1

    :cond_0
    const/16 v0, 0x3e8

    if-le v0, p0, :cond_3

    :goto_0
    return v1

    :cond_1
    if-gt p0, v1, :cond_0

    :cond_2
    return p0

    :cond_3
    const/16 v0, 0x3ea

    if-le p0, v0, :cond_2

    goto :goto_0
.end method

.method public static eD(I)Lcom/google/android/gms/common/api/Status;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object v0

    :pswitch_0
    const/16 p0, 0xd

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
