.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/bumptech/glide/RequestManager$OptionsApplier;,
        Lcom/bumptech/glide/RequestManager$GenericModelRequest;,
        Lcom/bumptech/glide/RequestManager$DefaultOptions;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private options:Lcom/bumptech/glide/RequestManager$DefaultOptions;

.field private final optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private final treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/bumptech/glide/manager/Lifecycle;
    .param p3, "treeNode"    # Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .prologue
    .line 53
    new-instance v4, Lcom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    new-instance v5, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/bumptech/glide/manager/Lifecycle;
    .param p3, "treeNode"    # Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .param p4, "requestTracker"    # Lcom/bumptech/glide/manager/RequestTracker;
    .param p5, "factory"    # Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 63
    new-instance v1, Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;-><init>(Lcom/bumptech/glide/RequestManager;)V

    iput-object v1, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 65
    new-instance v1, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {v1, p4}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/manager/RequestTracker;)V

    invoke-virtual {p5, p1, v1}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object v0

    .line 71
    .local v0, "connectivityMonitor":Lcom/bumptech/glide/manager/ConnectivityMonitor;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 82
    return-void

    .line 72
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/RequestManager$1;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->options:Lcom/bumptech/glide/RequestManager$DefaultOptions;

    return-object v0
.end method

.method private static getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "model":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 641
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    .line 626
    .local v2, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    .line 628
    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;Landroid/os/ParcelFileDescriptor;>;"
    if-nez p1, :cond_1

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v0, Lcom/bumptech/glide/DrawableTypeRequest;

    iget-object v4, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v8, p0, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0

    .line 628
    :cond_1
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ". You must provide a Model of a type for"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fromString()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v0, Ljava/lang/String;

    .line 304
    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromUri()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v0, Landroid/net/Uri;

    .line 339
    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->fromUri()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->fromString()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->clearRequests()V

    .line 222
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 213
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    .line 89
    return-void
.end method

.method public pauseRequests()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->pauseRequests()V

    .line 149
    return-void
.end method

.method public resumeRequests()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->resumeRequests()V

    .line 181
    return-void
.end method

.method public using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method
