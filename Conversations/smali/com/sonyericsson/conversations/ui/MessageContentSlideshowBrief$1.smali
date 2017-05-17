.class Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;
.super Ljava/lang/Object;
.source "MessageContentSlideshowBrief.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->initReadMoreButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 94
    const-class v4, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .line 93
    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "INTENT_EXTRA_CONVERSATION_ID"

    .line 96
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 95
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
