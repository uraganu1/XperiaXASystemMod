.class public Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;
.super Ljava/lang/Object;
.source "ReliableArtWorkGenerator.java"


# instance fields
.field private mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ArtworkGenerator;

.field private final mContext:Landroid/content/Context;

.field private mFallbackJohnnyGenerator:Lcom/sonyericsson/conversations/util/JohnnyGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mContext:Landroid/content/Context;

    .line 29
    :try_start_0
    new-instance v1, Lcom/sonyericsson/conversations/util/ArtworkGenerator;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonyericsson/conversations/util/ArtworkGenerator;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ArtworkGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Couldn\'t init GAW lib"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private genFallbackContactBadge(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mFallbackJohnnyGenerator:Lcom/sonyericsson/conversations/util/JohnnyGenerator;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/JohnnyGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mFallbackJohnnyGenerator:Lcom/sonyericsson/conversations/util/JohnnyGenerator;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mFallbackJohnnyGenerator:Lcom/sonyericsson/conversations/util/JohnnyGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->generateJohnny(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateLetterTile(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ArtworkGenerator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->generateLetterTile(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Couldn\'t generate contact badge"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->genFallbackContactBadge(II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getBaseColorIgnoreSelf(Lcom/sonyericsson/conversations/model/Participant;)I
    .locals 3
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ArtworkGenerator;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/conversations/util/ArtworkGenerator;->getBaseColor(Lcom/sonyericsson/conversations/model/Participant;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Couldn\'t load base color from GAW lib"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    const/4 v1, -0x1

    return v1
.end method
