.class Lcom/sonyericsson/conversations/ui/MessageListFragment$14;
.super Lcom/sonymobile/forklift/HeavyTask;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->preLoadWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p2, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "val$applicationContext"    # Landroid/content/Context;

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonymobile/forklift/HeavyTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 3

    .prologue
    .line 1207
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v0

    .line 1208
    .local v0, "wallpapers":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->isWallpaperSupportedFor(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->preLoad(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 1205
    :cond_0
    return-void
.end method
