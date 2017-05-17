.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$3;
.super Ljava/lang/Object;
.source "ContactsFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->createDisplayOrderDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->setDisplayOrder(Landroid/content/DialogInterface;)V

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 323
    return-void
.end method
