.class public Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
.super Ljava/lang/Object;
.source "DefaultRetryScheme.java"


# static fields
.field private static final sDefaultRetryScheme:[I


# instance fields
.field private mRetriedTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    const/4 v0, 0x0

    const v1, 0xea60

    const v2, 0x493e0

    const v3, 0x927c0

    const v4, 0x1b7740

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "retriedTimes"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 42
    iget v1, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 43
    iget v0, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 44
    sget-object v0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 43
    :goto_1
    iput v0, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 40
    return-void

    .line 42
    :cond_0
    iget v0, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    goto :goto_1
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    return v0
.end method

.method public getWaitingInterval()J
    .locals 3

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Next int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v2, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 55
    :cond_0
    sget-object v0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
