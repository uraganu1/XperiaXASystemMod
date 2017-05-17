.class public abstract Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.super Ljava/lang/Object;
.source "ClickFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;
    }
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field private isLocked:Z

.field final unlock:Ljava/lang/Runnable;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/util/ClickFilter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->isLocked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->isLocked:Z

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->handler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;-><init>(Lcom/sonyericsson/conversations/ui/util/ClickFilter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->unlock:Ljava/lang/Runnable;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract action()V
.end method

.method public executeAndFilter(I)V
    .locals 4
    .param p1, "filterTime"    # I

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->isLocked:Z

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->isLocked:Z

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->action()V

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->unlock:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    :cond_0
    return-void
.end method
