.class Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
.super Ljava/lang/Object;
.source "AdnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PbrInfo"
.end annotation


# instance fields
.field public pbrEntities:[[I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    .line 604
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getPbrCapacity()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 613
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPbrCapacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v2, v2, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v4

    aget v0, v0, v3

    return v0
.end method

.method public getPbrRemainCapacity()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 608
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPbrRemainCapacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v2, v2, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v4

    aget v0, v0, v3

    return v0
.end method
