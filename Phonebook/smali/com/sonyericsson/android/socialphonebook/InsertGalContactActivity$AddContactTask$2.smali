.class Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;
.super Ljava/lang/Object;
.source "InsertGalContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$accountAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$params:[Lcom/android/contacts/common/model/Contact;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Landroid/widget/ArrayAdapter;[Lcom/android/contacts/common/model/Contact;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;
    .param p3, "val$params"    # [Lcom/android/contacts/common/model/Contact;
    .param p4, "val$contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 218
    .local p2, "val$accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->val$accountAdapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->val$params:[Lcom/android/contacts/common/model/Contact;

    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->val$accountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 222
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->val$params:[Lcom/android/contacts/common/model/Contact;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$2;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->-wrap0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    return-void
.end method
