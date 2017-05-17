.class Lcom/sonyericsson/conversations/ui/TooltipDialog$3;
.super Ljava/lang/Object;
.source "TooltipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 242
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$3;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$3;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->-set0(Lcom/sonyericsson/conversations/ui/TooltipDialog;Z)Z

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$3;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->dismiss()V

    .line 243
    return-void
.end method
