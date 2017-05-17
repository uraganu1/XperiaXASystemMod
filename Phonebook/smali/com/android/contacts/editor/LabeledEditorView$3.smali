.class Lcom/android/contacts/editor/LabeledEditorView$3;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/LabeledEditorView;
    .param p2, "val$editText"    # Landroid/widget/EditText;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 393
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "customText":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->-get4(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->-get2(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    .local v0, "allTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4, v6}, Lcom/android/contacts/editor/LabeledEditorView;->-set0(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 398
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "editType$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 399
    .local v2, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget-object v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4, v2}, Lcom/android/contacts/editor/LabeledEditorView;->-set0(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 404
    .end local v2    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    .line 406
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->-get0(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->-get2(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v6}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v6

    iget v6, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 407
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->-get0(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->-wrap0(Lcom/android/contacts/editor/LabeledEditorView;)V

    .line 409
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 410
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    .line 392
    .end local v0    # "allTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    .end local v3    # "editType$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
