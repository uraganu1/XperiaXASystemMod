.class final Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I

.field private static DAY_TO_BIT_MASK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 274
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->DAY_MAP:[I

    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->DAY_MAP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 288
    sget-object v1, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void

    .line 274
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->mDays:I

    .line 295
    return-void
.end method


# virtual methods
.method public getCoded()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DaysOfWeek{mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->mDays:I

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    const/16 v1, 0x7d

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
