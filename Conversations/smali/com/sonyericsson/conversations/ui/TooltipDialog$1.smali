.class Lcom/sonyericsson/conversations/ui/TooltipDialog$1;
.super Ljava/lang/Object;
.source "TooltipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/TooltipDialog;->initTooltip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/TooltipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->-get3(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->-get2(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;->onDismissTooltip(Z)V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->-get0(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->-get1(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 228
    return-void
.end method
