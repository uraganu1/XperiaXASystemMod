.class public Lcom/sonyericsson/conversations/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    }
.end annotation


# instance fields
.field private mListenerList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    .line 12
    return-void
.end method

.method private checkRunningThread()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current thread is not UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;->checkRunningThread()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method protected varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;->checkRunningThread()V

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .line 42
    .local v0, "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    .end local v0    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;->checkRunningThread()V

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
