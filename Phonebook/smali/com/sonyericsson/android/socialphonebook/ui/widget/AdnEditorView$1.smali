.class Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;
.super Ljava/lang/Object;
.source "AdnEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->prepareFiledView(Landroid/widget/TextView;Lcom/android/contacts/common/model/account/AccountType$EditField;Ljava/lang/String;Lcom/android/contacts/common/model/ValuesDelta;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$fieldView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;
    .param p2, "val$fieldView"    # Landroid/widget/TextView;
    .param p3, "val$column"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->val$fieldView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->val$fieldView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->val$column:Ljava/lang/String;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;->val$column:Ljava/lang/String;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 234
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 237
    return-void
.end method
