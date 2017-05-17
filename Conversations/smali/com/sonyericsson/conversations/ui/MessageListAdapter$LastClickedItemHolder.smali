.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastClickedItemHolder"
.end annotation


# instance fields
.field private final mAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

.field private final mKey:Ljava/lang/String;

.field private final mLastClickedMessageBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 1
    .param p1, "messageBubbleView"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 1486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->mLastClickedMessageBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 1488
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->mKey:Ljava/lang/String;

    .line 1489
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getLastAnimationState()Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->mAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 1486
    return-void
.end method


# virtual methods
.method public getAnimationState()Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->mAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBubble()Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->mLastClickedMessageBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    return-object v0
.end method
