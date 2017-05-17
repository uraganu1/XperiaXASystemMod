.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->preLoad(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-wrap3(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-wrap0(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const-string/jumbo v1, "Failed to load file"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
