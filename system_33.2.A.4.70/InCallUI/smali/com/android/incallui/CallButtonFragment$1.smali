.class Lcom/android/incallui/CallButtonFragment$1;
.super Landroid/os/Handler;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 936
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 935
    :goto_0
    return-void

    .line 938
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->-wrap1(Lcom/android/incallui/CallButtonFragment;Z)V

    goto :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
