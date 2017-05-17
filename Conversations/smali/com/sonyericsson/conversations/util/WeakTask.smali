.class public abstract Lcom/sonyericsson/conversations/util/WeakTask;
.super Ljava/lang/Object;
.source "WeakTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;
    }
.end annotation


# instance fields
.field private final mWeakRunnable:Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;-><init>(Lcom/sonyericsson/conversations/util/WeakTask;Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/WeakTask;->mWeakRunnable:Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;

    .line 16
    return-void
.end method


# virtual methods
.method public getWeakRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/WeakTask;->mWeakRunnable:Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;

    return-object v0
.end method

.method public abstract run()V
.end method
