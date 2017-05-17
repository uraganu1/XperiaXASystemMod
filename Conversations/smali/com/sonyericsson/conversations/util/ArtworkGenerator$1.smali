.class Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;
.super Ljava/lang/Object;
.source "ArtworkGenerator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/ArtworkGenerator;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/sonymobile/generativeartwork/GenerativeArtWork;",
        "Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ArtworkGenerator;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/ArtworkGenerator;Landroid/content/Context;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ArtworkGenerator;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$width"    # I
    .param p4, "val$height"    # I

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->this$0:Lcom/sonyericsson/conversations/util/ArtworkGenerator;

    iput-object p2, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$width:I

    iput p4, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/generativeartwork/GenerativeArtWork;",
            "Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x8

    .line 44
    new-instance v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;-><init>()V

    .line 45
    .local v0, "engine":Lcom/sonymobile/generativeartwork/GenerativeArtWork;
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$context:Landroid/content/Context;

    .line 46
    iget v8, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$width:I

    iget v9, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$height:I

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    .line 45
    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->initLibrary(Landroid/content/Context;IIIIIIII)V

    .line 48
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 49
    .local v11, "bgLayer":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .line 50
    .local v10, "artLayer":Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    .line 51
    invoke-virtual {v10, v11}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->registerColorChangeListener(Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;)V

    .line 55
    :goto_0
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->setSettings(Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 56
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 53
    :cond_0
    const-string/jumbo v1, "BackgroundLayer or ArtisticLayer is null"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;->call()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
