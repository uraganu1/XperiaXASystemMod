.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$9;
.super Ljava/lang/Object;
.source "DisplayUserMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getMsisdnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$9;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    iput-object p2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$9;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x0

    .line 583
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$9;->val$okButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 584
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 583
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 580
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 577
    return-void
.end method
