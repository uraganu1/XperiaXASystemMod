.class Lcom/android/contacts/editor/LabeledEditorView$5;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$5;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$5;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->-wrap0(Lcom/android/contacts/editor/LabeledEditorView;)V

    .line 426
    return-void
.end method
