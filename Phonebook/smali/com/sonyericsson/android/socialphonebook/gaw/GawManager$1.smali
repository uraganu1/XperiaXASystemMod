.class Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;
.super Ljava/lang/Object;
.source "GawManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;-><init>(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;Landroid/content/Context;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$settings"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->this$0:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->val$settings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;

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

    .line 114
    new-instance v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;-><init>()V

    .line 115
    .local v0, "generativeArtWork":Lcom/sonymobile/generativeartwork/GenerativeArtWork;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->val$context:Landroid/content/Context;

    .line 116
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->this$0:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->-get1(Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;)I

    move-result v8

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->this$0:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->-get1(Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;)I

    move-result v9

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    .line 115
    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->initLibrary(Landroid/content/Context;IIIIIIII)V

    .line 117
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 118
    .local v11, "bgLayer":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .line 119
    .local v10, "artisticLayer":Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    .line 120
    invoke-virtual {v10, v11}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->registerColorChangeListener(Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;)V

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->val$settings:Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->setSettings(Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 125
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 122
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BackgroundLayer or ArtisticLayer is null"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;->call()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
