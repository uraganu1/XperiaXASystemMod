.class Lcom/android/contacts/editor/LinkedContactEditorView$1;
.super Ljava/lang/Object;
.source "LinkedContactEditorView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LinkedContactEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LinkedContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LinkedContactEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/LinkedContactEditorView;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get2(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get2(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->dismissPopupWindows()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get5(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 220
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get0(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TextView;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/LinkedContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 225
    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getAccountDataSet()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v2, v3, v4}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountTypeDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->-set1(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/BaseRawContactEditorView;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 231
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get4(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get4(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 214
    :cond_1
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$1;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get0(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
