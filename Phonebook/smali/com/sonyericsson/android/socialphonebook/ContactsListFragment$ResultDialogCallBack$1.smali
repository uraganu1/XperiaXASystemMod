.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack$1;
.super Ljava/lang/Object;
.source "ContactsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack$1;->this$1:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack$1;->this$1:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->startActivityByIntent()V

    .line 1753
    return-void
.end method
