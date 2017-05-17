.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;
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
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

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
    const/4 v5, 0x0

    .line 116
    const v1, 0x7f0d00c7

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 117
    .local v7, "tag":Ljava/lang/Object;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    :goto_0
    const v1, 0x7f0d00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 119
    instance-of v1, v7, Landroid/net/Uri;

    if-eqz v1, :cond_1

    move-object v4, v7

    check-cast v4, Landroid/net/Uri;

    .line 121
    :goto_1
    if-eqz v4, :cond_2

    .line 122
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get2(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get3(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    .line 122
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 124
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-set0(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 129
    :goto_2
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->createObjectContextMenu(Landroid/view/ContextMenu;)V

    .line 114
    return-void

    .line 117
    .end local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    :cond_0
    const/4 v6, 0x0

    .local v6, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "uri":Landroid/net/Uri;
    goto :goto_1

    .line 126
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get2(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get3(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    .line 126
    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V

    .restart local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    goto :goto_2
.end method
