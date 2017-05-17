.class Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->reReadRecents(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask$1;->this$1:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
