.class Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$1;
.super Ljava/lang/Object;
.source "MedicalInformationCancelDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;)Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;->onCancelConfirmed()V

    .line 56
    return-void
.end method
