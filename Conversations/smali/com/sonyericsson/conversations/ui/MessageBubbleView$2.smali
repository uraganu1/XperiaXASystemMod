.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;
.super Ljava/lang/Object;
.source "MessageBubbleView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 140
    instance-of v1, p2, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    if-eqz v1, :cond_0

    move-object v7, p2

    .line 141
    check-cast v7, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 143
    .local v7, "textView":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getClickableUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getClickableUri()Landroid/net/Uri;

    move-result-object v4

    .line 145
    .local v4, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get2(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get3(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    const/4 v5, 0x0

    .line 145
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 147
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->createLinkContextMenu(Landroid/view/ContextMenu;)V

    .line 148
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->removeClickableUri()V

    .line 139
    .end local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v7    # "textView":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    :cond_0
    return-void
.end method