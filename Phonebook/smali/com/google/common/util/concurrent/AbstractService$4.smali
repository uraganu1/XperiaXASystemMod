.class Lcom/google/common/util/concurrent/AbstractService$4;
.super Lcom/google/common/util/concurrent/Monitor$Guard;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/Monitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/AbstractService;
    .param p2, "$anonymous0"    # Lcom/google/common/util/concurrent/Monitor;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$4;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0, p2}, Lcom/google/common/util/concurrent/Monitor$Guard;-><init>(Lcom/google/common/util/concurrent/Monitor;)V

    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$4;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Service$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
