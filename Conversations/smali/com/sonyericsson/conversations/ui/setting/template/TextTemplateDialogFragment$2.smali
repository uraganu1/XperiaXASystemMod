.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;
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
    .line 165
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->-set0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->dismiss()V

    .line 167
    return-void
.end method
