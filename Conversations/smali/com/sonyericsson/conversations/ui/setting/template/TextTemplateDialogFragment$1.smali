.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;
.super Ljava/lang/Object;
.source "TextTemplateDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    move-result-object v3

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 135
    const v4, 0x7f0d0125

    .line 134
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 136
    .local v2, "textTemplateFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_2

    .line 137
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    .line 138
    check-cast v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    .line 137
    .end local v2    # "textTemplateFragment":Landroid/app/Fragment;
    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->setTextTemplateChangedListener(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;)V

    .line 143
    :cond_0
    const-string/jumbo v0, ""

    .line 144
    .local v0, "inputString":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 145
    .local v1, "tempInputString":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 151
    const v4, 0x7f0b019d

    .line 152
    const/4 v5, 0x0

    .line 150
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 130
    :goto_0
    return-void

    .line 140
    .end local v0    # "inputString":Ljava/lang/String;
    .end local v1    # "tempInputString":Ljava/lang/String;
    .restart local v2    # "textTemplateFragment":Landroid/app/Fragment;
    :cond_2
    return-void

    .line 154
    .end local v2    # "textTemplateFragment":Landroid/app/Fragment;
    .restart local v0    # "inputString":Ljava/lang/String;
    .restart local v1    # "tempInputString":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->dismiss()V

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 156
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    move-result-object v3

    invoke-interface {v3, v5, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;->onTextTemplateChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;->onTextTemplateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method
