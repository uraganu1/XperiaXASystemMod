.class Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;
.super Ljava/lang/Thread;
.source "GenerativeArtWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/GenerativeArtWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderThread"
.end annotation


# static fields
.field private static synthetic -com_sonymobile_generativeartwork_GenerativeArtWork$RequestSwitchesValues:[I


# instance fields
.field mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

.field final synthetic this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;


# direct methods
.method private static synthetic -getcom_sonymobile_generativeartwork_GenerativeArtWork$RequestSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->-com_sonymobile_generativeartwork_GenerativeArtWork$RequestSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->-com_sonymobile_generativeartwork_GenerativeArtWork$RequestSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->values()[Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_ADDED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_REMOVED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->RENDER:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->-com_sonymobile_generativeartwork_GenerativeArtWork$RequestSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/sonymobile/generativeartwork/GenerativeArtWork;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;
    .param p2, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 380
    iput-object p2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 379
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 387
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get6(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get2(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v2}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get2(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I

    move-result-object v2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v3}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get2(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    .line 388
    iget-object v4, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get2(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v5}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get2(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I

    move-result-object v5

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v6}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get2(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)[I

    move-result-object v6

    const/4 v7, 0x5

    aget v6, v6, v7

    .line 389
    iget-object v7, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v7}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get11(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)I

    move-result v7

    iget-object v8, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v8}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get3(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)I

    move-result v8

    .line 387
    invoke-virtual/range {v0 .. v8}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;->init(IIIIIIII)V

    .line 394
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get5(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0, v1}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->initLayers(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    .line 396
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get4(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-set0(Lcom/sonymobile/generativeartwork/GenerativeArtWork;Z)Z

    .line 398
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get4(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit v1

    .line 401
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get7(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get10(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 405
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get8(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get10(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 408
    :catch_0
    move-exception v9

    :cond_0
    monitor-exit v1

    .line 413
    invoke-static {}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->-getcom_sonymobile_generativeartwork_GenerativeArtWork$RequestSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get1(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 434
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get10(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 435
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-set1(Lcom/sonymobile/generativeartwork/GenerativeArtWork;Z)Z

    .line 436
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get10(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 396
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 402
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get9(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get6(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get9(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v2}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get5(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->Stretch:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;->render(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;)V

    goto :goto_2

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get0(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get0(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0, v1}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->initLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    goto :goto_2

    .line 426
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get0(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get0(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->releaseLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;)V

    goto :goto_2

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get5(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->releaseLayers(Ljava/util/ArrayList;)V

    .line 442
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get5(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$RenderThread;->this$0:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->-get6(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;->release()V

    .line 385
    return-void

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
