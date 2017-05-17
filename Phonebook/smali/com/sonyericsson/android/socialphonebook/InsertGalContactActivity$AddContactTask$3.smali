.class Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$3;
.super Ljava/lang/Object;
.source "InsertGalContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->doInBackground(Landroid/app/Activity;[Lcom/android/contacts/common/model/Contact;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

.field final synthetic val$target:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;
    .param p2, "val$target"    # Landroid/app/Activity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$3;->this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$3;->val$target:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$3;->val$target:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 228
    return-void
.end method
