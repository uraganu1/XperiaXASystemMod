.class Lcom/android/incallui/CallList$1;
.super Landroid/os/Handler;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 664
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message not expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 666
    :pswitch_0
    const-string/jumbo v2, "EVENT_DISCONNECTED_TIMEOUT "

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    iget-object v3, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/incallui/Call;

    invoke-static {v3, v2}, Lcom/android/incallui/CallList;->-wrap0(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 670
    :pswitch_1
    const-string/jumbo v2, "EVENT_NOTIFY_CHANGE: "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v2, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-static {v2}, Lcom/android/incallui/CallList;->-wrap1(Lcom/android/incallui/CallList;)V

    .line 672
    iget-object v2, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-static {v2}, Lcom/android/incallui/CallList;->-get0(Lcom/android/incallui/CallList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .line 673
    .local v0, "listener":Lcom/android/incallui/CallList$ActiveSubChangeListener;
    iget-object v2, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/incallui/CallList$ActiveSubChangeListener;->onActiveSubChanged(I)V

    goto :goto_1

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
