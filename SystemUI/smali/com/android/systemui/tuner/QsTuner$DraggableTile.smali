.class Lcom/android/systemui/tuner/QsTuner$DraggableTile;
.super Lcom/android/systemui/qs/QSTile;
.source "QsTuner.java"

# interfaces
.implements Lcom/android/systemui/tuner/QsTuner$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DraggableTile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/tuner/QsTuner$DropListener;"
    }
.end annotation


# instance fields
.field private mSpec:Ljava/lang/String;

.field private mView:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/QsTuner$DraggableTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    return-object v0
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating tile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iput-object p2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    .line 406
    return-void
.end method

.method private getIcon()I
    .locals 3

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getTileIcon(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, "id":I
    if-eqz v0, :cond_0

    return v0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0200cb

    return v1

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "bt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020065

    return v1

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "inversion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02004c

    return v1

    .line 467
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0200b2

    return v1

    .line 468
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "airplane"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0200d3

    return v1

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "dnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f020078

    return v1

    .line 470
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "rotation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f02005c

    return v1

    .line 471
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "flashlight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0200d7

    return v1

    .line 472
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0200df

    return v1

    .line 473
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "cast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f020071

    return v1

    .line 474
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "hotspot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f020045

    return v1

    .line 476
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "audioprofile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f020072

    return v1

    .line 477
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v2, "hotknot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f0200db

    return v1

    .line 479
    :cond_d
    const/high16 v1, 0x7f020000

    return v1
.end method

.method private getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/tuner/QsTuner;->-wrap0(Ljava/lang/String;)I

    move-result v1

    .line 445
    .local v1, "resource":I
    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v3, "intent("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 450
    .local v0, "lastDot":I
    if-ltz v0, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string/jumbo v3, "intent("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 456
    .end local v0    # "lastDot":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mView:Lcom/android/systemui/qs/QSTileView;

    .line 415
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mView:Lcom/android/systemui/qs/QSTileView;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 489
    instance-of v0, p1, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 492
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 484
    const/16 v0, 0x4e20

    return v0
.end method

.method protected handleClick()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->getIcon()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 437
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onDrop(Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceText"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    check-cast v0, Lcom/android/systemui/tuner/QsTuner$CustomHost;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 424
    return-void
.end method

.method public supportsDualTargets()Z
    .locals 2

    .prologue
    .line 420
    const-string/jumbo v0, "wifi"

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "bt"

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
