.class Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;
.super Ljava/lang/Object;
.source "TextInputInfoBoxHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToastNonChecked(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

.field final synthetic val$length:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
    .param p2, "val$text"    # Ljava/lang/String;
    .param p3, "val$length"    # I

    .prologue
    .line 614
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-get0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->val$text:Ljava/lang/String;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->val$length:I

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->createTopToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-set2(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 624
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-get0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 616
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-get0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-get0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;->val$length:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
