.class Lcom/android/contacts/editor/ContactEditorFragment$10$2;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$10;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/ContactEditorFragment$10;
    .param p2, "val$iv"    # Landroid/widget/ImageView;

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$2;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$2;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$2;->val$iv:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1538
    return-void
.end method
