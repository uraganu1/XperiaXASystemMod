.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "ConversationWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperAsHeavyProperty(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Ljava/lang/Object;Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p2, "$anonymous0"    # Ljava/lang/Object;
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$view"    # Landroid/view/View;
    .param p5, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0, p2}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onBackground()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-wrap1(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->onBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
