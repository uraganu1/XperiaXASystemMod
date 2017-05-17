.class Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;
.super Ljava/lang/Object;
.source "TextInputInfoBoxHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->onVideoResizeProgress(Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field final synthetic val$progress:I

.field final synthetic val$video:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
    .param p2, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "val$progress"    # I
    .param p4, "val$video"    # Landroid/net/Uri;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iput p3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$progress:I

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$video:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-wrap0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Lcom/sonyericsson/conversations/conversation/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$progress:I

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-set0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;I)I

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$video:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-set1(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 224
    return-void
.end method
