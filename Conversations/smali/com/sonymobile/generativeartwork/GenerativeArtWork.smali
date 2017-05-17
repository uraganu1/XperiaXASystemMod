.class public Lcom/sonymobile/generativeartwork/GenerativeArtWork;
.super Ljava/lang/Object;
.source "GenerativeArtWork.java"

# interfaces
.implements Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/GenerativeArtWork$1;,
        Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;,
        Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangingLayer:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentRequest:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

.field private mGLConfig:[I

.field private mHeight:I

.field private final mInitSync:Ljava/lang/Object;

.field private mIsInitialized:Z

.field private mLastSettings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;

.field private mLayersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mOfscreenRenderer:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

.field private mReleaseLibrary:Z

.field private final mReleaseSync:Ljava/lang/Object;

.field private mRenderThread:Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;

.field private mRequestDone:Z

.field private mResultingImg:Landroid/graphics/Bitmap;

.field private final mSyncObj:Ljava/lang/Object;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLayersList:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mOfscreenRenderer:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    const/4 v0, 0x6

    .line 74
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    .line 76
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mIsInitialized:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mInitSync:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mReleaseSync:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mResultingImg:Landroid/graphics/Bitmap;

    .line 83
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mReleaseLibrary:Z

    .line 84
    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRenderThread:Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z

    .line 86
    sget-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_ADDED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mCurrentRequest:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    .line 87
    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mChangingLayer:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 89
    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLastSettings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mCurrentRequest:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mResultingImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mChangingLayer:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mOfscreenRenderer:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLayersList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mInitSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/generativeartwork/GenerativeArtWork;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mReleaseLibrary:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sonymobile/generativeartwork/GenerativeArtWork;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z

    return p1
.end method


# virtual methods
.method public addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    .locals 4
    .param p1, "type"    # Lcom/sonymobile/generativeartwork/layers/LayerType;

    .prologue
    .line 180
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 185
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mIsInitialized:Z

    if-nez v1, :cond_2

    .line 221
    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    return-object v0

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "LayerType is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .restart local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mReleaseLibrary:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 189
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 196
    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_ADDED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mCurrentRequest:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    .line 197
    invoke-static {p1, p0}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->buildLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v0

    .line 198
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    if-nez v0, :cond_4

    .line 207
    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z

    .line 208
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    :goto_4
    :try_start_4
    iget-boolean v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_6

    :goto_5
    const/4 v1, 0x0

    .line 219
    :try_start_5
    iput-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mChangingLayer:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 190
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_3
    :try_start_6
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 194
    :catch_0
    move-exception v1

    goto :goto_2

    .line 199
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_4
    :try_start_7
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLayersList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    .line 203
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    goto :goto_3

    .line 200
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_5
    iget v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mWidth:I

    iget v3, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mHeight:I

    invoke-interface {v0, v1, v3}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->setSize(II)V

    .line 201
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mChangingLayer:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 212
    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_6
    :try_start_8
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 216
    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFBResult()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mOfscreenRenderer:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;->getCurrentTexture()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/sonymobile/generativeartwork/settings/LayerSettings;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLastSettings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    invoke-direct {v0, v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;-><init>(Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    return-object v0
.end method

.method public initLibrary(Landroid/content/Context;IIIIIIII)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    const/16 v0, 0x780

    const/4 v2, 0x0

    .line 117
    if-gez p8, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong size parameters for library init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    if-gt p8, v0, :cond_0

    if-ltz p9, :cond_0

    if-gt p9, v0, :cond_0

    .line 119
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mIsInitialized:Z

    if-nez v0, :cond_2

    .line 122
    iput p8, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mWidth:I

    .line 123
    iput p9, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mHeight:I

    .line 126
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mContext:Landroid/content/Context;

    .line 128
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    aput p2, v0, v2

    .line 129
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 130
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 131
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    const/4 v1, 0x3

    aput p5, v0, v1

    .line 132
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    const/4 v1, 0x4

    aput p6, v0, v1

    .line 133
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mGLConfig:[I

    const/4 v1, 0x5

    aput p7, v0, v1

    .line 135
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mReleaseLibrary:Z

    .line 136
    new-instance v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;

    invoke-direct {v0, p0, p0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;-><init>(Lcom/sonymobile/generativeartwork/GenerativeArtWork;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRenderThread:Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;

    .line 137
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRenderThread:Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->setPriority(I)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRenderThread:Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->start()V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mInitSync:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 149
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    return-void

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The library is initialized already, you should release it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mInitSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public render(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "resultingImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 287
    if-eqz p1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mIsInitialized:Z

    if-nez v0, :cond_2

    .line 321
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    return-void

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultingImage is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mReleaseLibrary:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 297
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 304
    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->RENDER:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mCurrentRequest:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    .line 305
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mResultingImg:Landroid/graphics/Bitmap;

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z

    .line 308
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mRequestDone:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :goto_4
    const/4 v0, 0x0

    .line 319
    :try_start_5
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mResultingImg:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 298
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    goto :goto_2

    .line 312
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 316
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public setSettings(Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLayersList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->setSettings(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 357
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->mLastSettings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .line 358
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "settings is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
