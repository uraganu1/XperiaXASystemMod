.class Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;
.super Ljava/lang/Object;
.source "ConversationPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    return-void

    .line 62
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 70
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;->onCancel()V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-set0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;Z)Z

    .line 57
    return-void

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;->onNewMessageClicked()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
