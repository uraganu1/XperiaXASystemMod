.class public final enum Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
.super Ljava/lang/Enum;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AggregationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

.field public static final enum FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

.field public static final enum FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

.field public static final enum FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

.field public static final enum FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

.field public static final enum SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;-><init>(Ljava/lang/String;I)V

    .line 287
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 288
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    const-string/jumbo v1, "FAILURE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;-><init>(Ljava/lang/String;I)V

    .line 289
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 290
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    const-string/jumbo v1, "FAILURE_DISKFULL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;-><init>(Ljava/lang/String;I)V

    .line 294
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 295
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    const-string/jumbo v1, "FAILURE_LINKERROR"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;-><init>(Ljava/lang/String;I)V

    .line 300
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 301
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    const-string/jumbo v1, "FAILURE_TOOMANYLINK"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;-><init>(Ljava/lang/String;I)V

    .line 305
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 285
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    return-object v0
.end method
