.class Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;
.super Ljava/lang/Object;
.source "MessageStatusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-get0(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-get0(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->IN_PROGRESS:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-wrap2(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)V

    .line 125
    :cond_0
    return-void
.end method
