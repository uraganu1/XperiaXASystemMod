.class Lcom/sonyericsson/conversations/ui/MessageItemView$2;
.super Ljava/lang/Object;
.source "MessageItemView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageItemView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageItemView;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "objectUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 344
    if-nez p2, :cond_0

    .line 346
    return-void

    .line 349
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/MessageItemView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p3

    .line 349
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 351
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    .line 342
    return-void
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method
