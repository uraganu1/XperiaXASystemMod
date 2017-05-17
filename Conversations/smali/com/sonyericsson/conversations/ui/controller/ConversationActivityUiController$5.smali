.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEstimateDone(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V
    .locals 11
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "originalSize"    # J
    .param p5, "resizedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p7, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set1(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;)Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    .line 629
    cmp-long v2, p3, p5

    if-lez v2, :cond_0

    .line 630
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap32(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V

    .line 627
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-static {v2, p1, p2, v0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap25(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    goto :goto_0
.end method
