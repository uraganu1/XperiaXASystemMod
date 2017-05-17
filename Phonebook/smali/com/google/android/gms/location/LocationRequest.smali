.class public final Lcom/google/android/gms/location/LocationRequest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/d;

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x64

.field public static final PRIORITY_LOW_POWER:I = 0x68

.field public static final PRIORITY_NO_POWER:I = 0x69


# instance fields
.field private final CK:I

.field Wg:Z

.field age:J

.field agr:J

.field ags:J

.field agt:I

.field agu:F

.field agv:J

.field mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->CK:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->agu:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agv:J

    return-void
.end method

.method constructor <init>(IIJJZJIFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->CK:I

    iput p2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    iput-wide p3, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    iput-wide p5, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    iput-wide p8, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    iput p11, p0, Lcom/google/android/gms/location/LocationRequest;->agu:F

    iput-wide p12, p0, Lcom/google/android/gms/location/LocationRequest;->agv:J

    return-void
.end method

.method private static a(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static create()Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method private static ey(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static ez(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "???"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "PRIORITY_HIGH_ACCURACY"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "PRIORITY_BALANCED_POWER_ACCURACY"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "PRIORITY_LOW_POWER"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "PRIORITY_NO_POWER"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static v(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/LocationRequest;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    if-eq v2, v3, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->agr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->ags:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->age:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->agt:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->agu:F

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->agu:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->agu:F

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->CK:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->agu:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/jv;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 11

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v8, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    iput-wide v8, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    :goto_2
    if-nez v0, :cond_0

    iput-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    :cond_0
    return-object p0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-long v2, p1, v4

    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setExpirationTime(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 5

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->v(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    return-object p0
.end method

.method public setInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 5

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->v(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Wg:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    goto :goto_0
.end method

.method public setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    if-lez p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->ey(I)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->a(F)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->agu:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    invoke-static {v2}, Lcom/google/android/gms/location/LocationRequest;->ez(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    const/16 v2, 0x69

    if-ne v1, v2, :cond_1

    :goto_0
    const-string/jumbo v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->age:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string/jumbo v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->agr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->agt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V

    return-void
.end method
