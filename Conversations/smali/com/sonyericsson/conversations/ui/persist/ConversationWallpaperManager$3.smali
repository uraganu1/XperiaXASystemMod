.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "ConversationWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Ljava/lang/Object;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p2, "$anonymous0"    # Ljava/lang/Object;
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0, p2}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-wrap2(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->onBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
