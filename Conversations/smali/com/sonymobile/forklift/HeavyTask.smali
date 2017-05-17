.class public abstract Lcom/sonymobile/forklift/HeavyTask;
.super Ljava/lang/Object;
.source "HeavyTask.java"


# instance fields
.field private volatile mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete0;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/forklift/HeavyTask;)Lcom/sonymobile/forklift/OnComplete0;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyTask;->mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete0;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLoader(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 2
    .param p1, "forklift"    # Lcom/sonymobile/forklift/Forklift;

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/forklift/HeavyTask$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/forklift/HeavyTask$1;-><init>(Lcom/sonymobile/forklift/HeavyTask;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/sonymobile/forklift/HeavyTask$1;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/sonymobile/forklift/HeavyTask$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/forklift/HeavyTask$2;-><init>(Lcom/sonymobile/forklift/HeavyTask;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/sonymobile/forklift/HeavyTask$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/forklift/HeavyTask$3;-><init>(Lcom/sonymobile/forklift/HeavyTask;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/PropertyLoader;->onError(Lcom/sonymobile/forklift/OnError;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract onBackground()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected onComplete(Lcom/sonymobile/forklift/OnComplete0;)V
    .locals 0
    .param p1, "onComplete"    # Lcom/sonymobile/forklift/OnComplete0;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyTask;->mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete0;

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 88
    new-instance v0, Lcom/sonymobile/forklift/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lcom/sonymobile/forklift/OnErrorNotImplementedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/forklift/HeavyTask;->createLoader(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 110
    return-void
.end method
