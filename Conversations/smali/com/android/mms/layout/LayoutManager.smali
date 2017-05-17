.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/layout/LayoutManager$LayoutManagerHolder;
    }
.end annotation


# instance fields
.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/layout/LayoutManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/mms/layout/LayoutManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/mms/layout/LayoutManager$LayoutManagerHolder;->INSTANCE:Lcom/android/mms/layout/LayoutManager;

    return-object v0
.end method

.method private getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .locals 3
    .param p1, "displayType"    # I

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    return-object v0

    .line 66
    :pswitch_1
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    return-object v0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized initLayoutParameters(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    monitor-enter p0

    .line 51
    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    const/16 v0, 0xb

    .line 50
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 55
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LayoutParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTypeDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, ": "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "x"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 49
    return-void

    .line 53
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .locals 2

    .prologue
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "Already initialized."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 73
    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 85
    return-void
.end method
