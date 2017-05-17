.class Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;
.super Ljava/lang/Object;
.source "InsertGalContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->addToContact(Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

.field final synthetic val$results:[Landroid/content/ContentProviderResult;

.field final synthetic val$target:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;[Landroid/content/ContentProviderResult;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;
    .param p2, "val$results"    # [Landroid/content/ContentProviderResult;
    .param p3, "val$target"    # Landroid/app/Activity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$results:[Landroid/content/ContentProviderResult;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$target:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$results:[Landroid/content/ContentProviderResult;

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$target:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$target:Landroid/app/Activity;

    const v1, 0x7f09024d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$target:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$4;->val$target:Landroid/app/Activity;

    const v1, 0x7f09024c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
