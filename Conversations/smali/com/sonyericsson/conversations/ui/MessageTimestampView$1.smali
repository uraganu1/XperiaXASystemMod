.class Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;
.super Ljava/lang/Object;
.source "MessageTimestampView.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$message:Lcom/sonyericsson/conversations/model/Message;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampView;
    .param p2, "val$message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->val$message:Lcom/sonyericsson/conversations/model/Message;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "hasWallpaper"    # Ljava/lang/Boolean;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-set0(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Z)Z

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->val$message:Lcom/sonyericsson/conversations/model/Message;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-wrap2(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 116
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasWallpaper"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasWallpaper":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method
