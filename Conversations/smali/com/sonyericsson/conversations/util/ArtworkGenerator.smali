.class public Lcom/sonyericsson/conversations/util/ArtworkGenerator;
.super Ljava/lang/Object;
.source "ArtworkGenerator.java"


# instance fields
.field private final mArt:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/generativeartwork/GenerativeArtWork;",
            "Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/ArtworkGenerator$1;-><init>(Lcom/sonyericsson/conversations/util/ArtworkGenerator;Landroid/content/Context;II)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->mArt:Ljava/util/concurrent/FutureTask;

    .line 59
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->mArt:Ljava/util/concurrent/FutureTask;

    const-string/jumbo v2, "ArtworkGenerator init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method private getRenderOutputSymbols(Lcom/sonyericsson/conversations/model/Participant;Z)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 6
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "ignoreSelf"    # Z

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "address":Ljava/lang/String;
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->isMe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-static {v1, v5, v5}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v2

    .line 105
    .local v2, "outputSymbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :goto_0
    return-object v2

    .line 93
    .end local v2    # "outputSymbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 94
    invoke-static {v1, v5, v0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v2

    .restart local v2    # "outputSymbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    goto :goto_0

    .line 96
    .end local v2    # "outputSymbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :cond_1
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_2
    :goto_1
    invoke-static {v1, v0, v5}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v2

    .restart local v2    # "outputSymbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    goto :goto_0

    .line 98
    .end local v2    # "outputSymbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :cond_3
    if-nez v1, :cond_2

    .line 101
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public generateLetterTile(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "resultingBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->mArt:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 80
    .local v0, "art":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/generativeartwork/GenerativeArtWork;Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->getRenderOutputSymbols(Lcom/sonyericsson/conversations/model/Participant;Z)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setLetters(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)V

    .line 81
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-virtual {v2, v1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->render(Landroid/graphics/Bitmap;)V

    .line 82
    return-object v1
.end method

.method public getBaseColor(Lcom/sonyericsson/conversations/model/Participant;Z)I
    .locals 2
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "ignoreSelf"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->mArt:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->getRenderOutputSymbols(Lcom/sonyericsson/conversations/model/Participant;Z)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->getBaseColor(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)I

    move-result v0

    return v0
.end method
