.class Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;
.super Ljava/lang/Object;
.source "MessageTimestampView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageTimestampView;->startUpdateNowTask(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$message:Lcom/sonyericsson/conversations/model/Message;

.field final synthetic val$updateTime:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/model/Message;JLcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampView;
    .param p2, "val$message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "val$updateTime"    # J
    .param p5, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$message:Lcom/sonyericsson/conversations/model/Message;

    iput-wide p3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$updateTime:J

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-get1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$message:Lcom/sonyericsson/conversations/model/Message;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$updateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-get2(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Ljava/lang/Runnable;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$updateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$message:Lcom/sonyericsson/conversations/model/Message;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-get0(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Landroid/widget/TextView;

    move-result-object v5

    .line 207
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/TextView;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 209
    .local v0, "messageHeaderText":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-set1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-wrap1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Landroid/text/SpannableStringBuilder;)V

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->invalidate()V

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->requestLayout()V

    .line 198
    .end local v0    # "messageHeaderText":Landroid/text/SpannableStringBuilder;
    :cond_1
    return-void
.end method
