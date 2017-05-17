.class public Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
.super Ljava/lang/Object;
.source "VerizonContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VilteContentStatus"
.end annotation


# instance fields
.field public isAirplaneModeEnabled:Z

.field public isCallStateIdle:Z

.field public isImsVopsEnabled:Z

.field public isMobileDataEnabled:Z

.field public isTtyModeEnabled:Z

.field public isVilteEnabled:Z

.field public isVilteProvisioned:Z

.field public isVolteEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;)V
    .locals 1
    .param p1, "contentStatus"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    .prologue
    .line 489
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    .line 490
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    .line 491
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    .line 492
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    .line 493
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    .line 494
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    .line 495
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    .line 496
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    .line 488
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 501
    if-ne p0, p1, :cond_0

    return v4

    .line 502
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    .line 504
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    .line 506
    .local v0, "that":Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    if-eq v1, v2, :cond_3

    return v3

    .line 507
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    if-eq v1, v2, :cond_4

    return v3

    .line 508
    :cond_4
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    if-eq v1, v2, :cond_5

    return v3

    .line 509
    :cond_5
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    if-eq v1, v2, :cond_6

    return v3

    .line 510
    :cond_6
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    if-eq v1, v2, :cond_7

    return v3

    .line 511
    :cond_7
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    if-eq v1, v2, :cond_8

    return v3

    .line 512
    :cond_8
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    if-eq v1, v2, :cond_9

    return v3

    .line 513
    :cond_9
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    if-eq v1, v2, :cond_a

    return v3

    .line 515
    :cond_a
    return v4
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 520
    const/16 v0, 0x1f

    .line 522
    .local v0, "prime":I
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 523
    .local v1, "result":I
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 524
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v5, v2

    .line 525
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v5, v2

    .line 526
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v5, v2

    .line 527
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v5, v2

    .line 528
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v5, v2

    .line 529
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    if-eqz v5, :cond_7

    :goto_7
    add-int v1, v2, v3

    .line 530
    return v1

    .end local v1    # "result":I
    :cond_0
    move v2, v4

    .line 522
    goto :goto_0

    .restart local v1    # "result":I
    :cond_1
    move v2, v4

    .line 523
    goto :goto_1

    :cond_2
    move v2, v4

    .line 524
    goto :goto_2

    :cond_3
    move v2, v4

    .line 525
    goto :goto_3

    :cond_4
    move v2, v4

    .line 526
    goto :goto_4

    :cond_5
    move v2, v4

    .line 527
    goto :goto_5

    :cond_6
    move v2, v4

    .line 528
    goto :goto_6

    :cond_7
    move v3, v4

    .line 529
    goto :goto_7
.end method
