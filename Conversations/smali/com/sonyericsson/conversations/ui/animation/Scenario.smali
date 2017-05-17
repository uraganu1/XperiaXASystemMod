.class public Lcom/sonyericsson/conversations/ui/animation/Scenario;
.super Ljava/lang/Object;
.source "Scenario.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;,
        Lcom/sonyericsson/conversations/ui/animation/Scenario$1;
    }
.end annotation


# instance fields
.field private mActionIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPaused:Z

.field private mOnActionCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/animation/Scenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario;->startNexActionOrFinish()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionIterator:Ljava/util/ListIterator;

    .line 35
    new-instance v0, Lcom/sonyericsson/conversations/ui/animation/Scenario$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$1;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mOnActionCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mIsPaused:Z

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionList:Ljava/util/List;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/sonyericsson/conversations/ui/animation/Scenario;)V
    .locals 0
    .param p1, "actionList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private startNexActionOrFinish()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionIterator:Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mIsPaused:Z

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;

    .line 79
    .local v0, "nextAction":Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mOnActionCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;->start(Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V

    .line 72
    .end local v0    # "nextAction":Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;
    :cond_2
    return-void
.end method


# virtual methods
.method public start()Lcom/sonyericsson/conversations/ui/animation/Scenario;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionIterator:Ljava/util/ListIterator;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mIsPaused:Z

    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario;->startNexActionOrFinish()V

    .line 54
    return-object p0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario;->mActionIterator:Ljava/util/ListIterator;

    .line 60
    return-void
.end method
