.class Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;
.super Ljava/lang/Object;
.source "MessageTimestampView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setIcons(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampView;
    .param p2, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 246
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-get1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->starMessage()V

    .line 245
    return-void
.end method
