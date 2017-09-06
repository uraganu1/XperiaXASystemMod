.class public Lcom/sonymobile/generativeartwork/layers/LayerFactory;
.super Ljava/lang/Object;
.source "LayerFactory.java"


# static fields
.field private static synthetic -com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->-com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->-com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerType;->values()[Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->-com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    .locals 3
    .param p0, "type"    # Lcom/sonymobile/generativeartwork/layers/LayerType;
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->-getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 43
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Uknown layer type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_0
    new-instance v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;-><init>()V

    .line 36
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    goto :goto_0

    .line 39
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_1
    new-instance v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;-><init>()V

    .line 40
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static initLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 2
    .param p0, "layer"    # Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 66
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->-getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I

    move-result-object v0

    invoke-interface {p0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    .end local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :goto_0
    return-void

    .line 68
    .restart local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_0
    check-cast p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .end local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-virtual {p0, p1}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->initLayer(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    goto :goto_0

    .line 71
    .restart local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_1
    check-cast p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .end local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-virtual {p0, p1}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->initLayer(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static initLayers(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 3
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;",
            ">;",
            "Lcom/sonymobile/generativeartwork/GenerativeArtWork;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 56
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v0, p1}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->initLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    goto :goto_0

    .line 54
    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_0
    return-void
.end method

.method public static releaseLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;)V
    .locals 2
    .param p0, "layer"    # Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .prologue
    .line 89
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->-getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I

    move-result-object v0

    invoke-interface {p0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    .end local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :goto_0
    return-void

    .line 91
    .restart local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_0
    check-cast p0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .end local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-virtual {p0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->releaseLayer()V

    goto :goto_0

    .line 94
    .restart local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_1
    check-cast p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .end local p0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-virtual {p0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->releaseLayer()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static releaseLayers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 81
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v0}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->releaseLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;)V

    goto :goto_0

    .line 79
    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_0
    return-void
.end method
