.class public Lcom/sonymobile/generativeartwork/layers/LayerFactory;
.super Ljava/lang/Object;
.source "LayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/layers/LayerFactory$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static buildLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    .locals 3
    .param p0, "type"    # Lcom/sonymobile/generativeartwork/layers/LayerType;
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    const/4 v0, 0x0

    .line 33
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerFactory$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

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

    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    goto :goto_0

    .line 39
    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_1
    new-instance v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .end local v0    # "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;-><init>()V

    .local v0, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 2
    .param p0, "layer"    # Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    .line 66
    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

    invoke-interface {p0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
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
        :pswitch_0
        :pswitch_1
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
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    return-void

    .line 55
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 56
    .local v1, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v1, p1}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->initLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V

    goto :goto_0
.end method

.method public static releaseLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;)V
    .locals 2
    .param p0, "layer"    # Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .prologue
    .line 89
    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerFactory$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

    invoke-interface {p0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
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
        :pswitch_0
        :pswitch_1
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
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 81
    .local v1, "layer":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/layers/LayerFactory;->releaseLayer(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;)V

    goto :goto_0
.end method
