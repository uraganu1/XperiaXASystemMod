.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeWallpaper(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$croppedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$croppedBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "val$key"    # Ljava/lang/String;
    .param p5, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$croppedBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$croppedBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$key:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-wrap4(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Failed to store file in data directory, removing wallpaper."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 243
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v2, "Failed to remove wallpaper."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
