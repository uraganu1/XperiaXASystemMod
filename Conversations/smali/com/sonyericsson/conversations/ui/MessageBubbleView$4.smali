.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$4;
.super Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.source "MessageBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;->onFinishInflate()V
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
    .line 287
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get1(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get1(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    .line 289
    :cond_0
    return-void
.end method
