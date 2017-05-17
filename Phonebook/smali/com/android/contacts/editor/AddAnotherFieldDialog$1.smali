.class Lcom/android/contacts/editor/AddAnotherFieldDialog$1;
.super Ljava/lang/Object;
.source "AddAnotherFieldDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/AddAnotherFieldDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AddAnotherFieldDialog;

.field final synthetic val$rawContactId:J


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/AddAnotherFieldDialog;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/AddAnotherFieldDialog;
    .param p2, "val$rawContactId"    # J

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;->this$0:Lcom/android/contacts/editor/AddAnotherFieldDialog;

    iput-wide p2, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;->val$rawContactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;->this$0:Lcom/android/contacts/editor/AddAnotherFieldDialog;

    invoke-static {v0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->-get0(Lcom/android/contacts/editor/AddAnotherFieldDialog;)Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;->this$0:Lcom/android/contacts/editor/AddAnotherFieldDialog;

    invoke-static {v0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->-get0(Lcom/android/contacts/editor/AddAnotherFieldDialog;)Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;->val$rawContactId:J

    invoke-interface {v0, p2, v2, v3}, Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;->onFieldSelected(IJ)V

    .line 74
    :cond_0
    return-void
.end method
