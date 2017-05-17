.class Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;
.super Ljava/lang/Object;
.source "ImResizeDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, -0x3

    .line 108
    packed-switch p2, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown button id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get2(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    :goto_1
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    sget-object v1, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->ORIGINAL:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-set0(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    sget-object v1, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->RESIZED:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-set0(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00f6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
