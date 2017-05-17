.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1418
    instance-of v4, p1, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-nez v4, :cond_0

    .line 1419
    return-void

    :cond_0
    move-object v2, p1

    .line 1422
    check-cast v2, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 1423
    .local v2, "clickedView":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    .line 1425
    .local v3, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-wrap1(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_NOTIFICATION:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    if-ne v4, v5, :cond_1

    .line 1427
    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v3    # "message":Lcom/sonyericsson/conversations/model/Message;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/model/MmsMessage;->setRetrievalStatus(I)V

    .line 1428
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 1429
    return-void

    .line 1432
    .restart local v3    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1433
    return-void

    .line 1436
    :cond_2
    const/4 v0, 0x1

    .line 1437
    .local v0, "animateClickedBubble":Z
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1439
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->getMessageBubble()Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v1

    .line 1440
    .local v1, "bubbleFromHolder":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    if-eq v1, v2, :cond_4

    .line 1441
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->isTimestampAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1442
    const/4 v0, 0x0

    .line 1445
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getLastAnimationState()Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    move-result-object v4

    .line 1446
    sget-object v5, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->OPENED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 1445
    if-ne v4, v5, :cond_4

    .line 1447
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->animateTimestampFromLastState()V

    .line 1452
    .end local v1    # "bubbleFromHolder":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    :cond_4
    if-eqz v0, :cond_5

    .line 1453
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->animateTimestampFromLastState()V

    .line 1454
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    new-instance v5, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    invoke-direct {v5, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set1(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    .line 1416
    :cond_5
    return-void
.end method
