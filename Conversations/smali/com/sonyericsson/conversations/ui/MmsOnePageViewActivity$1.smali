.class Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;
.super Ljava/lang/Object;
.source "MmsOnePageViewActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->-wrap1(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->-wrap0(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
