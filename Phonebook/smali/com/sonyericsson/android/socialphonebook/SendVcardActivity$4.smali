.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$4;
.super Ljava/lang/Object;
.source "SendVcardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 424
    return-void
.end method
