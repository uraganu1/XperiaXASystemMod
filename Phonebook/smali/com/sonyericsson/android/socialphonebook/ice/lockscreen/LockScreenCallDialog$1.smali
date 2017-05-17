.class Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$1;
.super Ljava/lang/Object;
.source "LockScreenCallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->-get1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;->onPhoneNumberSelected(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)V

    .line 97
    return-void
.end method
