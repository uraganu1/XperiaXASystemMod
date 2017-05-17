.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;
.super Lcom/sonymobile/forklift/HeavyTask;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->applyWallpaper(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$selectedWallpaper:Landroid/net/Uri;

.field final synthetic val$wallpapers:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$wallpapers"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$selectedWallpaper"    # Landroid/net/Uri;
    .param p5, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$wallpapers:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$selectedWallpaper:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Lcom/sonymobile/forklift/HeavyTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$wallpapers:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$selectedWallpaper:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->applyWallpaper(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 1197
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->onComplete(Lcom/sonymobile/forklift/OnComplete0;)V

    .line 1195
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1208
    const-string/jumbo v0, "Could not store/delete wallpaper."

    invoke-static {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v0

    .line 1210
    const v1, 0x7f0b005a

    .line 1211
    const/4 v2, 0x0

    .line 1209
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1207
    return-void
.end method
