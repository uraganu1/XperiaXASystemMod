.class Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;
.super Ljava/lang/Object;
.source "StickerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->cachePackageName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localImageUri:Landroid/net/Uri;

.field final synthetic val$stickerPackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    .param p2, "val$localImageUri"    # Landroid/net/Uri;
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$stickerPackId"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->val$localImageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->val$stickerPackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->val$localImageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;->val$stickerPackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-wrap0(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-wrap2(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Landroid/net/Uri;Ljava/lang/String;)V

    .line 309
    return-void
.end method
