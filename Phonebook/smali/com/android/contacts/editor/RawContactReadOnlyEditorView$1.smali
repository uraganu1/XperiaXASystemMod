.class Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;
.super Ljava/lang/Object;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

.field final synthetic val$accountType:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
    .param p2, "val$accountType"    # Ljava/lang/CharSequence;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->val$accountType:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->val$accountType:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f090114

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    return-void
.end method
