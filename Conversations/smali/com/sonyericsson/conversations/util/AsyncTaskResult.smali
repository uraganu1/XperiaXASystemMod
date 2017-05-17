.class public Lcom/sonyericsson/conversations/util/AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 17
    .local p0, "this":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->mException:Ljava/lang/Exception;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->mResult:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method
